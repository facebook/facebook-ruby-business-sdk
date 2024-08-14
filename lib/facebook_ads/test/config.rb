# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
