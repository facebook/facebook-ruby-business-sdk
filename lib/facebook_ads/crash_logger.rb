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
          # TODO: Determine what platform information should be logged
          params = {
            'bizsdk_crash_report': {
              'reason': formatted_reason(error),
              'platform': "ruby #{RUBY_VERSION}",
              'callstack': error.backtrace
            }
          }
          APIRequest.new(
            :post,
            '/instruments',
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
