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

  class AdCampaignPlacementGet < AdObject
    EFFECTIVE_AUDIENCE_NETWORK_POSITIONS = [
      "CLASSIC",
      "INSTREAM_VIDEO",
      "REWARDED_VIDEO",
    ]

    EFFECTIVE_DEVICE_PLATFORMS = [
      "DESKTOP",
      "MOBILE",
    ]

    EFFECTIVE_FACEBOOK_POSITIONS = [
      "BIZ_DISCO_FEED",
      "FACEBOOK_CONTEXTUAL_BUNDLE",
      "FB_REELS",
      "FB_REELS_OVERLAY",
      "FEED",
      "GROUPS",
      "GROUP_MALL",
      "GROUP_TAB",
      "INSTANT_ARTICLE",
      "INSTREAM_REEL",
      "INSTREAM_VIDEO",
      "JOBS_BROWSER",
      "MARKETPLACE",
      "NOTIFICATION",
      "PROFILE_FEED",
      "PROFILE_REELS",
      "RHC",
      "SEARCH",
      "STORY",
      "STORY_STICKER",
      "SUGGESTED_VIDEO",
      "VIDEO_FEEDS",
    ]

    EFFECTIVE_INSTAGRAM_POSITIONS = [
      "EFFECT_TRAY",
      "EXPLORE",
      "EXPLORE_HOME",
      "IGTV",
      "IG_SEARCH",
      "LEAD_GEN_MULTI_SUBMIT",
      "PROFILE_FEED",
      "PROFILE_REELS",
      "REELS",
      "REELS_INSTREAM",
      "REELS_OVERLAY",
      "SHOP",
      "STORY",
      "STREAM",
    ]

    EFFECTIVE_MESSENGER_POSITIONS = [
      "MESSENGER_INBOX",
      "MESSENGER_MARKETING_MESSAGES",
      "MESSENGER_STORY",
      "MESSENGER_THREAD",
    ]

    EFFECTIVE_OCULUS_POSITIONS = [
      "TWILIGHT_DEVELOPER_UPDATE",
      "TWILIGHT_FEED",
      "TWILIGHT_FEED_SPOTLIGHT",
      "TWILIGHT_SEARCH",
      "TWILIGHT_SEARCH_NULL_STATE",
      "VR_APPS",
      "VR_REWARDED_VIDEO",
    ]

    EFFECTIVE_PUBLISHER_PLATFORMS = [
      "AUDIENCE_NETWORK",
      "FACEBOOK",
      "INSTAGRAM",
      "MESSENGER",
      "OCULUS",
      "THREADS",
      "WHATSAPP",
    ]


    field :effective_audience_network_positions, { list: { enum: -> { EFFECTIVE_AUDIENCE_NETWORK_POSITIONS }} }
    field :effective_device_platforms, { list: { enum: -> { EFFECTIVE_DEVICE_PLATFORMS }} }
    field :effective_facebook_positions, { list: { enum: -> { EFFECTIVE_FACEBOOK_POSITIONS }} }
    field :effective_instagram_positions, { list: { enum: -> { EFFECTIVE_INSTAGRAM_POSITIONS }} }
    field :effective_messenger_positions, { list: { enum: -> { EFFECTIVE_MESSENGER_POSITIONS }} }
    field :effective_oculus_positions, { list: { enum: -> { EFFECTIVE_OCULUS_POSITIONS }} }
    field :effective_publisher_platforms, { list: { enum: -> { EFFECTIVE_PUBLISHER_PLATFORMS }} }
    field :metadata, 'object'
    field :recommendations, { list: 'object' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
