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
        # TODO: Send to server
        puts "Logging facebook sdk crash"
      end
    end

    def completion
      if @@enabled then
        logCrash()
      else
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
