# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

require 'irb'

module FacebookAds
  class Error < StandardError; end;
  class InvalidParameterError < Error; end;

  class APIError < Error
    ERROR_ATTRS = [
      :fb_message, :type, :code,
      :error_subcode, :is_transient, :error_user_title,
      :error_user_msg, :fbtrace_id,
    ]

    attr_accessor *ERROR_ATTRS

    def initialize(api_response)
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
  end

  class ServerError < APIError; end

  class ClientError < APIError; end
end
