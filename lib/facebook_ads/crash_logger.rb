# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
          begin
            APIRequest.new(
              :post,
              "#{app_id}/instruments",
              session: Session.anonymous_session,
              params: params,
              options: {} # batch options, not necessary for now
            ).execute do |response|
              if response.result.has_key?('success') && response.result['success'] == true
                puts 'Successfully sent report'
                return
              end
              puts 'Failed to send report'
            end
          rescue
            puts 'Failed to send report'
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
