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

    setting :log_api_bodies, false

    def logger=(logger)
      Utils.logger = logger
    end
  end
end
