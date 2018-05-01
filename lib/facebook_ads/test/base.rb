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

require_relative 'config'
require_relative 'fixtures'

module FacebookAds
  module Test
    module FailuresStore
      def failures
        @failures ||= []
      end
    end
    extend FailuresStore

    class Base < Minitest::Test
      attr_accessor :cleanup_queue, :config

      include Fixtures

      def before_setup
        load_config!
      end

      def generate(type, *args)
        method = "create_#{type}".to_sym
        if respond_to?(method)
          send(method, *args) do |generated_obj|
            cleanup_later(generated_obj)
          end.tap do |obj|
            cleanup_later(obj)
          end
        else
          raise TestRuntimeError, "#{type} is not a supported generator"
        end
      end

      def teardown
        return unless cleanup_queue

        cleanup_queue.reverse.each do |obj_or_id|
          if obj_or_id.is_a?(FacebookAds::AdObject)
            obj_or_id.destroy
          elsif obj_or_id.is_a?(String) || obj_or_id.is_a?(Numeric)
            FacebookAds::AdObject.get(obj_or_id).destroy
          end
        end
      end

      def after_teardown
        # Collect failures for custom exit code
        FacebookAds::Test.failures.concat(self.failures)
      end

      private
      def cleanup_later(obj)
        @cleanup_queue ||= []
        @cleanup_queue << obj
      end

      def load_config!
        @config = FacebookAds::Test::Config.new.override_from! # load overrides from test_config.json

        FacebookAds.configure do |cf|
          log_level = case ENV['LOG_LEVEL']
            when 'debug'
              ::Logger::DEBUG
            when 'info'
              ::Logger::INFO
            when 'fatal'
              ::Logger::FATAL
            when 'error'
              ::Logger::ERROR
            else # default to warn
              ::Logger::WARN
          end
          cf.logger = ::Logger.new(STDOUT).tap { |d| d.level = log_level }
          cf.access_token = config.access_token
        end
      end
    end
  end
end