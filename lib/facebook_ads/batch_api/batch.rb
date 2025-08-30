# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  class Batch
    attr_accessor :operations, :session, :last_api_response

    def initialize
      @operations = []
    end

    def <<(api_req)
      @operations << api_req
      @session ||= api_req.session
      api_req
    end

    def execute
      return [] if operations.empty?
      operations.each_slice(50) do |slice|
        api_response = APIRequest.new(:post, '', session: session, params: batch_args(slice)).execute_now
        self.last_api_response = api_response
        slice.zip(api_response.result).map do |req, res|
          next unless res

          begin
            req.create_response(
                res['code'],
                convert_headers_to_hash(res['headers']),
                res['body'])
          rescue APIError => e
            e
          end
        end
      end
    end

    def batch_args(slice = operations)
      {batch: JSON.dump(operations_args(slice))}.merge(files_args)
    end

    def operations_args(slice)
      slice.map do |api_req|
        api_req.to_batch_params
      end
    end

    def files_args
      operations.map do |api_req|
        api_req.files
      end.reduce(&:merge)
    end

    class << self
      attr_accessor :current_batch

      def with_batch
        new.tap do |current_batch|
          self.current_batch = current_batch
          yield if block_given?
          self.current_batch = nil
        end
      end
    end

    private
    def convert_headers_to_hash(headers)
      Faraday::Utils::Headers.new(
          Hash[headers.map {|h| [h['name'], h['value']]}]
      )
    end
  end
end
