# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
