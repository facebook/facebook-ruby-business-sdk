# frozen_string_literal: true

require "bundler"

version = begin
            Bundler
              .definition
              .locked_gems
              .specs
              .detect { |spec| spec.name == "rubocop" }
              &.version
          rescue Bundler::BundlerError
            nil
          end

puts "-v #{version}" if version
