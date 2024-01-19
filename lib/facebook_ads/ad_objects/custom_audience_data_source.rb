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

  class CustomAudienceDataSource < AdObject
    SUB_TYPE = [
      "ANYTHING",
      "APP_USERS",
      "AR_EFFECTS_EVENTS",
      "AR_EXPERIENCE_EVENTS",
      "CAMPAIGN_CONVERSIONS",
      "COMBINATION_CUSTOM_AUDIENCE_USERS",
      "CONSTANT_CONTACTS_EMAIL_HASHES",
      "CONTACT_IMPORTER",
      "CONVERSION_PIXEL_HITS",
      "COPY_PASTE_EMAIL_HASHES",
      "CUSTOM_AUDIENCE_USERS",
      "CUSTOM_DATA_TARGETING",
      "DATA_FILE",
      "DYNAMIC_RULE",
      "ENGAGEMENT_EVENT_USERS",
      "EXPANDED_AUDIENCE",
      "EXTERNAL_IDS",
      "EXTERNAL_IDS_MIX",
      "FACEBOOK_WIFI_EVENTS",
      "FB_EVENT_SIGNALS",
      "FB_PIXEL_HITS",
      "HASHES",
      "HASHES_OR_USER_IDS",
      "HOUSEHOLD_EXPANSION",
      "IG_BUSINESS_EVENTS",
      "IG_PROMOTED_POST",
      "INSTANT_ARTICLE_EVENTS",
      "LOOKALIKE_PLATFORM",
      "MAIL_CHIMP_EMAIL_HASHES",
      "MESSENGER_ONSITE_SUBSCRIPTION",
      "MOBILE_ADVERTISER_IDS",
      "MOBILE_APP_COMBINATION_EVENTS",
      "MOBILE_APP_CUSTOM_AUDIENCE_USERS",
      "MOBILE_APP_EVENTS",
      "MULTICOUNTRY_COMBINATION",
      "MULTI_DATA_EVENTS",
      "MULTI_EVENT_SOURCE",
      "MULTI_HASHES",
      "NOTHING",
      "OFFLINE_EVENT_USERS",
      "PAGE_FANS",
      "PAGE_SMART_AUDIENCE",
      "PARTNER_CATEGORY_USERS",
      "PLACE_VISITS",
      "PLATFORM",
      "PLATFORM_USERS",
      "SEED_LIST",
      "SIGNAL_SOURCE",
      "SMART_AUDIENCE",
      "STORE_VISIT_EVENTS",
      "SUBSCRIBER_LIST",
      "S_EXPR",
      "TOKENS",
      "USER_IDS",
      "VIDEO_EVENTS",
      "VIDEO_EVENT_USERS",
      "WEB_PIXEL_COMBINATION_EVENTS",
      "WEB_PIXEL_HITS",
      "WEB_PIXEL_HITS_CUSTOM_AUDIENCE_USERS",
    ]

    TYPE = [
      "CONTACT_IMPORTER",
      "COPY_PASTE",
      "EVENT_BASED",
      "FILE_IMPORTED",
      "HOUSEHOLD_AUDIENCE",
      "SEED_BASED",
      "THIRD_PARTY_IMPORTED",
      "UNKNOWN",
    ]


    field :creation_params, 'string'
    field :sub_type, { enum: -> { SUB_TYPE }}
    field :type, { enum: -> { TYPE }}
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
