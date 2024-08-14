# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'irb'

module FacebookAds
  class Error < StandardError; end;
  class InvalidParameterError < Error; end;

  class APIError < Error
    ERROR_ATTRS = [
      :headers, :fb_message, :type, :code,
      :error_subcode, :is_transient, :error_user_title,
      :error_user_msg, :error_data, :fbtrace_id,
    ]

    attr_accessor *ERROR_ATTRS

    def initialize(api_response)
      send("headers=", api_response.headers)
      error_obj = api_response.result
      @api_response = api_response

      if error_obj.is_a?(Hash)
        error_obj = error_obj['error'] if error_obj.has_key?('error')
        error_obj.each do |k,v|
          k = "fb_#{k}" if k == 'message'
          send("#{k}=", v) if ERROR_ATTRS.include?(k.to_sym)
        end

        super("#{self.fb_message}: #{self.error_user_title} (fbtrace_id: #{self.fbtrace_id})")
      else
        super(error_obj)
      end
    end

    def getHeaders
      self.headers
    end
  end

  class ServerError < APIError; end

  class ClientError < APIError; end
end
