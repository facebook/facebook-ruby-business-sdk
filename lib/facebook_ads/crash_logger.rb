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

require 'facebook_ads/api_request'
require 'facebook_ads/api_response'

module FacebookAds
  class CrashLogger
    class << self
      private
      @@enabled = false
      @@hasRegisteredCrashBlock = false

      def logCrash
        error = $!
        if is_facebook_error(error)
          app_id = get_app_id
          # TODO: Determine what platform information should be logged
          if app_id.nil?
            puts "Unable to log the crash: We're missing an app id."
            return
          end
          params = {
            'bizsdk_crash_report': {
              'reason': formatted_reason(error),
              'platform': "ruby #{RUBY_VERSION}",
              'callstack': error.backtrace
            }
          }
          APIRequest.new(
            :post,
            "#{app_id}/instruments",
            session: Session.anonymous_session,
            params: params,
            options: {} # batch options, not necessary for now
          ).execute do |response|
            puts response
          end
        end
      end

      def completion
        if @@enabled && $! then
          logCrash()
        end
      end

      def is_facebook_error(error)
        error.backtrace.any? { |frame|
          frame.match? 'facebook_ads'
        } if error
      end

      def formatted_reason(error)
        if error.kind_of? APIError
          reason = 'Server Error' if error.kind_of? ServerError
          reason = 'Client Error' if error.kind_of? ClientError
          reason += " #{error.message}"
        else
          reason = 'SDK Error'
        end
        reason
      end

      def get_app_id
        params = {
          'input_token': Session.default_session.access_token,
          'fields': 'app_id'
        }
        begin
          APIRequest.new(
            :get,
            '/debug_token',
            session: Session.default_session,
            params: params,
            options: {} # batch options, not necessary for now
          ).execute do |response|
            if (response.result.has_key?('data') &&
              response.result['data'].has_key?('app_id')
            )
              response.result['data']['app_id']
            else
              nil
            end
          end
        rescue
          nil
        end
      end

      public
      # Enable crash reporting
      def enable
        if !@@hasRegisteredCrashBlock then
          at_exit do
            completion()
          end

          @@hasRegisteredCrashBlock = true
        end

        @@enabled = true
      end

      # Disable crash reporting
      def disable
        @@enabled = false
      end
    end
  end
end
