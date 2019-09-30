require 'facebook_ads/api_request'
require 'facebook_ads/api_response'

module FacebookAds
  class FacebookCrashLogger
    class << self
      private
      @@enabled = false
      @@hasRegisteredCrashBlock = false

      # Checks if the exit was due to an exception that
      # includes 'facebook' in the stack trace
      def logCrash
        if $@ != nil then
          isFacebookCrash = $@.any? { |frame|
            frame.match? 'facebook'
          }

          if isFacebookCrash
            params = {
              'bizsdk_crash_report': {
                'reason': 'call fail',
                'platform': 'platform',
                'callstack': $@
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
      end

      def completion
        if @@enabled then
          logCrash()
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
