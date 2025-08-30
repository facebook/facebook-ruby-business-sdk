# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  class Config
    def self.setting(name, default = nil)
      attr_writer name

      define_method name do
        unless instance_variable_defined?("@#{name}")
          instance_variable_set("@#{name}", default)
        end
        instance_variable_get("@#{name}")
      end
    end

    setting :server_host, FacebookAds::DEFAULT_HOST
    setting :api_version, FacebookAds::DEFAULT_API_VERSION
    setting :access_token, ENV['FB_ACCESS_TOKEN']
    setting :app_secret, ENV['FB_APP_SECRET']
    setting :crash_logging_enabled, true
    setting :log_api_bodies, false

    def logger=(logger)
      Utils.logger = logger
    end
  end
end
