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
      "NOTHING",
      "HASHES",
      "USER_IDS",
      "HASHES_OR_USER_IDS",
      "MOBILE_ADVERTISER_IDS",
      "EXTERNAL_IDS",
      "MULTI_HASHES",
      "TOKENS",
      "EXTERNAL_IDS_MIX",
      "HOUSEHOLD_EXPANSION",
      "WEB_PIXEL_HITS",
      "MOBILE_APP_EVENTS",
      "MOBILE_APP_COMBINATION_EVENTS",
      "VIDEO_EVENTS",
      "WEB_PIXEL_COMBINATION_EVENTS",
      "PLATFORM",
      "MULTI_DATA_EVENTS",
      "IG_BUSINESS_EVENTS",
      "STORE_VISIT_EVENTS",
      "INSTANT_ARTICLE_EVENTS",
      "FB_EVENT_SIGNALS",
      "ENGAGEMENT_EVENT_USERS",
      "CUSTOM_AUDIENCE_USERS",
      "PAGE_FANS",
      "CONVERSION_PIXEL_HITS",
      "APP_USERS",
      "S_EXPR",
      "DYNAMIC_RULE",
      "CAMPAIGN_CONVERSIONS",
      "WEB_PIXEL_HITS_CUSTOM_AUDIENCE_USERS",
      "MOBILE_APP_CUSTOM_AUDIENCE_USERS",
      "COMBINATION_CUSTOM_AUDIENCE_USERS",
      "VIDEO_EVENT_USERS",
      "FB_PIXEL_HITS",
      "IG_PROMOTED_POST",
      "PLACE_VISITS",
      "OFFLINE_EVENT_USERS",
      "EXPANDED_AUDIENCE",
      "SEED_LIST",
      "PARTNER_CATEGORY_USERS",
      "PAGE_SMART_AUDIENCE",
      "MULTICOUNTRY_COMBINATION",
      "PLATFORM_USERS",
      "MULTI_EVENT_SOURCE",
      "SMART_AUDIENCE",
      "LOOKALIKE_PLATFORM",
      "MAIL_CHIMP_EMAIL_HASHES",
      "CONSTANT_CONTACTS_EMAIL_HASHES",
      "COPY_PASTE_EMAIL_HASHES",
      "CONTACT_IMPORTER",
      "DATA_FILE",
    ]

    TYPE = [
      "UNKNOWN",
      "FILE_IMPORTED",
      "EVENT_BASED",
      "SEED_BASED",
      "THIRD_PARTY_IMPORTED",
      "COPY_PASTE",
      "CONTACT_IMPORTER",
      "HOUSEHOLD_AUDIENCE",
    ]


    field :creation_params, 'string'
    field :sub_type, { enum: -> { SUB_TYPE }}
    field :type, { enum: -> { TYPE }}
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
