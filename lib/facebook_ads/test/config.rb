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
  module Test
    class Config < FacebookAds::Config
      setting :app_id
      setting :app_secret
      setting :access_token
      setting :business_id
      setting :act_id
      setting :account_id
      setting :act_timezone
      setting :page_id
      setting :app_url
      setting :instagram_actor_id
      setting :graph_base_domain
      setting :secondary_business_id
      setting :secondary_account_id
      setting :secondary_page_id
      setting :secondary_app_id

      setting :image_path, File.expand_path("../../../../tests/image.png", __FILE__)
      setting :images_zip_path, File.expand_path("../../../../tests/imagez.zip", __FILE__)
      setting :video_path, File.expand_path("../../../../tests/video.mp4", __FILE__)

      def override_from!(filename = nil)
        filename ||= File.expand_path("../../../../tests/test_config.json", __FILE__)
        if File.exist?(filename)
          settings = JSON.parse(File.read(filename))

          settings.each do |k,v|
            instance_variable_set("@#{k}", v)
          end
        end
        self
      end
    end
  end
end
