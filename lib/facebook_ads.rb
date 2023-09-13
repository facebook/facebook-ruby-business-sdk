# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebook_ads/version'
require 'facebook_ads/helpers/shortcuts'
require 'facebook_ads/crash_logger'

module FacebookAds
  DEFAULT_API_VERSION = 'v' + API_VERSION
  DEFAULT_HOST = 'graph.facebook.com'

  extend self
  extend Shortcuts

  def with_session(access_token, secret = nil, api_version = DEFAULT_API_VERSION)
    original_session = Session.current_session
    Session.current_session = Session.new(access_token, secret, api_version)
    yield
    Session.current_session = original_session
  end

  def configure
    @config ||= Config.new
    yield @config if block_given?
    CrashLogger.enable if @config.crash_logging_enabled
    @config
  end

  alias_method :config, :configure

  require 'facebook_ads/ruby2patch'

  require 'facebook_ads/config'
  require 'facebook_ads/errors'
  require 'facebook_ads/session'
  require 'facebook_ads/fields'
  require 'facebook_ads/edge'
  require 'facebook_ads/param_set'
  require 'facebook_ads/ad_object'
  require 'facebook_ads/field_types'

  require 'facebook_ads/utils/utils'
  require 'facebook_ads/videos/video_io'

  require 'facebook_ads/batch_api/batch'
  require 'facebook_ads/batch_api/batch_proxy'

  # Autoload Ad Objects Helpers
  Dir.glob(File.expand_path(File.join(__FILE__, '..', 'facebook_ads', 'ad_objects', 'helpers', '*.rb'))).each do |file|
    class_name = File.basename(file, '.rb').split('_').map(&:capitalize).join.to_sym
    autoload class_name, file
  end

  # Autoload AdObjects
  Dir.glob(File.expand_path(File.join(__FILE__, '..', 'facebook_ads', 'ad_objects', '*.rb'))).each do |file|
    class_name = File.basename(file, '.rb').split('_').map(&:capitalize).join.to_sym
    autoload class_name, file
  end

  module ServerSide
    # Autoload Server-Side API
    Dir.glob(File.expand_path(File.join(__FILE__, '..', 'facebook_ads', 'ad_objects', 'server_side', '*.rb'))).each do |file|
      class_name = File.basename(file, '.rb').split('_').map(&:capitalize).join.to_sym
      autoload class_name, file
    end
  end
end
