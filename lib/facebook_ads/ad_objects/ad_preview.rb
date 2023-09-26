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

  class AdPreview < AdObject
    AD_FORMAT = [
      "AUDIENCE_NETWORK_INSTREAM_VIDEO",
      "AUDIENCE_NETWORK_INSTREAM_VIDEO_MOBILE",
      "AUDIENCE_NETWORK_OUTSTREAM_VIDEO",
      "AUDIENCE_NETWORK_REWARDED_VIDEO",
      "BIZ_DISCO_FEED_MOBILE",
      "DESKTOP_FEED_STANDARD",
      "FACEBOOK_PROFILE_FEED_DESKTOP",
      "FACEBOOK_PROFILE_FEED_MOBILE",
      "FACEBOOK_REELS_BANNER",
      "FACEBOOK_REELS_BANNER_DESKTOP",
      "FACEBOOK_REELS_MOBILE",
      "FACEBOOK_REELS_POSTLOOP",
      "FACEBOOK_REELS_STICKER",
      "FACEBOOK_STORY_MOBILE",
      "FACEBOOK_STORY_STICKER_MOBILE",
      "INSTAGRAM_EXPLORE_CONTEXTUAL",
      "INSTAGRAM_EXPLORE_GRID_HOME",
      "INSTAGRAM_EXPLORE_IMMERSIVE",
      "INSTAGRAM_FEED_WEB",
      "INSTAGRAM_FEED_WEB_M_SITE",
      "INSTAGRAM_PROFILE_FEED",
      "INSTAGRAM_PROFILE_REELS",
      "INSTAGRAM_REELS",
      "INSTAGRAM_REELS_OVERLAY",
      "INSTAGRAM_SEARCH_CHAIN",
      "INSTAGRAM_SEARCH_GRID",
      "INSTAGRAM_STANDARD",
      "INSTAGRAM_STORY",
      "INSTAGRAM_STORY_EFFECT_TRAY",
      "INSTAGRAM_STORY_WEB",
      "INSTAGRAM_STORY_WEB_M_SITE",
      "INSTANT_ARTICLE_RECIRCULATION_AD",
      "INSTANT_ARTICLE_STANDARD",
      "INSTREAM_BANNER_DESKTOP",
      "INSTREAM_BANNER_MOBILE",
      "INSTREAM_VIDEO_DESKTOP",
      "INSTREAM_VIDEO_IMAGE",
      "INSTREAM_VIDEO_MOBILE",
      "JOB_BROWSER_DESKTOP",
      "JOB_BROWSER_MOBILE",
      "MARKETPLACE_MOBILE",
      "MESSENGER_MOBILE_INBOX_MEDIA",
      "MESSENGER_MOBILE_STORY_MEDIA",
      "MOBILE_BANNER",
      "MOBILE_FEED_BASIC",
      "MOBILE_FEED_STANDARD",
      "MOBILE_FULLWIDTH",
      "MOBILE_INTERSTITIAL",
      "MOBILE_MEDIUM_RECTANGLE",
      "MOBILE_NATIVE",
      "RIGHT_COLUMN_STANDARD",
      "SUGGESTED_VIDEO_DESKTOP",
      "SUGGESTED_VIDEO_MOBILE",
      "WATCH_FEED_HOME",
      "WATCH_FEED_MOBILE",
    ]

    CREATIVE_FEATURE = [
      "product_metadata_automation",
      "profile_card",
      "standard_enhancements_catalog",
    ]

    RENDER_TYPE = [
      "FALLBACK",
    ]


    field :body, 'string'
    field :transformation_spec, 'object'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
