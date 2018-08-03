# -*- ruby -*-
require "bundler/setup"
require "bundler/gem_tasks"
require_relative "tasks/fb"  # FB:STRIP

gem 'minitest'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task :default => :spec
rescue LoadError
  # no rspec available
end

desc 'Run all tests'
task :test do
  FileList['tests/docs/*.rb'].each do |f|
    require_relative f
  end
end

# vim: syntax=ruby