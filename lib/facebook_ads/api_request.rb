# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'securerandom'

module FacebookAds
  class APIRequest
    attr_reader :method, :path, :session, :params,
                :options, :callback, :batch_proxy

    def initialize(method, path, session: nil, params: nil, options: nil)
      @method = method
      @path = path
      @session = session
      @params = params
      @options = options
      @batch_proxy = nil
    end

    # Returns either APIResponse instantly if not within a batch, or
    # a Proxy object to the result if a batch is present.
    #
    # ==== Examples
    #
    # Illustrate the behaviour of the method using examples. Indent examples:
    #
    #    api_request APIRequest.new(:get, '123545') do |response|
    #      update_attributes(response)
    #    end

    def execute(&block)
      @callback = block if block
      is_in_batch? ? enqueue_to_batch : execute_now
    end

    def execute_now
      faraday_response = session.request(method, path, params)
      create_response(faraday_response.status, faraday_response.headers, faraday_response.body)
    end

    def enqueue_to_batch
      current_batch << self
      @batch_proxy = BatchProxy.new(self)
    end

    def create_response(status, headers, body)
      api_response = APIResponse.new(status, headers, body)

      if status.to_i >= 500
        raise ServerError.new(api_response)
      elsif status.to_i >= 400
        raise ClientError.new(api_response)
      end

      (callback ? callback[api_response] : api_response).tap do |result|
        batch_proxy.set_result(result) if batch_proxy
      end
    end

    def batch_name
      @batch_name ||= (options.dig(:batch_args, :name) || generate_batch_name)
    end

    def generate_batch_name
      SecureRandom.hex(4)
    end

    def current_batch
      options.dig(:batch_args, :batch) || Batch.current_batch
    end

    def is_in_batch?
      !current_batch.nil?
    end

    def to_batch_params
      {
        name: batch_name,
        method: method.to_s.upcase,
        relative_url: path,
        body: batch_body,
        omit_response_on_success: false,
        attached_files: files.empty? ? nil : files.keys.join(','),
      }.compact
    end

    # For Batch API
    def batch_body
      # TODO Have our own encoders or param flattener?
      params = Faraday::Utils::ParamsHash[params_without_files]
      params.to_query(Faraday::FlatParamsEncoder)
    end

    # For Batch API
    def params_without_files
      params.reject do |_,v|
        v.is_a?(Faraday::UploadIO)
      end
    end

    # For Batch API
    def files
      params.select do |_,v|
        v.is_a?(Faraday::UploadIO)
      end
    end
  end
end
