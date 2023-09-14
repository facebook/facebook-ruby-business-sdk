# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class BusinessImage < AdObject
    VALIDATION_AD_PLACEMENTS = [
      "AUDIENCE_NETWORK_INSTREAM_VIDEO",
      "AUDIENCE_NETWORK_INSTREAM_VIDEO_MOBILE",
      "AUDIENCE_NETWORK_REWARDED_VIDEO",
      "DESKTOP_FEED_STANDARD",
      "FACEBOOK_STORY_MOBILE",
      "FACEBOOK_STORY_STICKER_MOBILE",
      "INSTAGRAM_STANDARD",
      "INSTAGRAM_STORY",
      "INSTANT_ARTICLE_STANDARD",
      "INSTREAM_BANNER_DESKTOP",
      "INSTREAM_BANNER_MOBILE",
      "INSTREAM_VIDEO_DESKTOP",
      "INSTREAM_VIDEO_IMAGE",
      "INSTREAM_VIDEO_MOBILE",
      "MESSENGER_MOBILE_INBOX_MEDIA",
      "MESSENGER_MOBILE_STORY_MEDIA",
      "MOBILE_FEED_STANDARD",
      "MOBILE_FULLWIDTH",
      "MOBILE_INTERSTITIAL",
      "MOBILE_MEDIUM_RECTANGLE",
      "MOBILE_NATIVE",
      "RIGHT_COLUMN_STANDARD",
      "SUGGESTED_VIDEO_MOBILE",
    ]


    field :business, 'Business'
    field :creation_time, 'datetime'
    field :hash, 'string'
    field :height, 'int'
    field :id, 'string'
    field :media_library_url, 'string'
    field :name, 'string'
    field :url, 'string'
    field :url_128, 'string'
    field :width, 'int'
    field :ad_placements_validation_only, 'bool'
    field :bytes, 'string'
    field :creative_folder_id, 'string'
    field :validation_ad_placements, { list: { enum: -> { VALIDATION_AD_PLACEMENTS }} }
    has_no_post
    has_no_delete

  end
end
