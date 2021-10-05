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
      "CAMPAIGN_CONVERSIONS",
      "COMBINATION_CUSTOM_AUDIENCE_USERS",
      "CONSTANT_CONTACTS_EMAIL_HASHES",
      "CONTACT_IMPORTER",
      "CONVERSION_PIXEL_HITS",
      "COPY_PASTE_EMAIL_HASHES",
      "CUSTOM_AUDIENCE_USERS",
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
