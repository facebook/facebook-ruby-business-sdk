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

  class PageSavedFilter < AdObject
    SECTION = [
      "AUDIENCE_ALERTS",
      "CHEX_PENDING_ORDERS",
      "CHEX_COMPLETED_ORDERS",
      "COMMERCE_PLATFORM_SETTINGS",
      "COMMERCE_PRODUCTS",
      "COMMERCE_COLLECTIONS",
      "COMMERCE_PENDING_ORDERS",
      "COMMERCE_PAST_ORDERS",
      "COMMERCE_DISCOUNT_CODES",
      "COMMERCE_MERCHANT_SETTINGS",
      "COMMERCE_SHOP_LINK",
      "DONATIONS_SETTINGS",
      "DRAFTS",
      "REWARD_PROGRAM",
      "EXPIRED_POSTS",
      "EXPIRING_POSTS",
      "INSTANT_ARTICLES",
      "INSTANT_ARTICLES_DEVELOPMENT",
      "INSTANT_ARTICLES_MONETIZATION",
      "INSTANT_ARTICLES_SAMPLE",
      "INSTANT_ARTICLES_SETTINGS",
      "INSTANT_ARTICLES_SIGN_UP",
      "INSTANT_ARTICLES_CTA_MANAGEMENT",
      "INSTANT_ARTICLES_TRAFFIC_LIFT",
      "INVOICES_ACTIVE",
      "INVOICES_HISTORY",
      "LEAD_ADS_DRAFT_FORMS",
      "LEAD_ADS_FORMS",
      "LEAD_ADS_CRM_SETUP",
      "LEAD_ADS_CUSTOM_CRM_SETUP",
      "PUBLISHED_POSTS",
      "SCHEDULED_POSTS",
      "ADS_POSTS",
      "VIDEOS",
      "JOB_POSTS",
      "NEW_MATCHES",
      "VIDEOS_COPYRIGHT",
      "REPORTED",
      "PLAYLISTS",
      "PLAYLIST_DETAILS",
      "POSTS_CONFIG",
      "SEASONS",
      "SEASON_DETAILS",
      "TAKEDOWNS",
      "UNSENT_REPORTS",
      "ALLOWED",
      "TRACKED",
      "BLOCKED",
      "CLAIMED",
      "MANUAL_REVIEW",
      "MATCH_RULES",
      "DISPUTES",
      "ACTIVE_FUNDRAISERS",
      "DRAFT_FUNDRAISERS",
      "READY_FUNDRAISERS",
      "ENDED_FUNDRAISERS",
      "ADS_CANVAS",
      "REFERENCE_FILES",
      "ALL_REFERENCE_FILES",
      "REFERENCE_CONFLICTS",
      "REFERENCE_POSSIBLE_CONFLICTS",
      "REFERENCE_RESOLUTIONS",
      "SOUND_RECORDINGS",
      "PREMIUM_MUSIC_VIDEOS",
      "LIVE_BROADCASTS",
      "CROSSPOSTED_VIDEOS",
      "PUBLISHED_PROFILE_PICTURE_FRAMES",
      "PENDING_PROFILE_PICTURE_FRAMES",
      "TAROT_COMPOSER",
      "DRAFT_EDITIONS",
      "PUBLISHED_EDITIONS",
      "PUBLISHED_EVENTS",
      "DRAFT_EVENTS",
      "SCHEDULED_EVENTS",
      "ARCHIVED_EVENTS",
      "TOURS",
      "POLLS_COMPOSER",
      "BRAND_ASSET_LIBRARY",
      "JOB_APPLICATIONS",
      "SUBSCRIPTIONS",
      "NEWS_SUBSCRIPTIONS_PUBLISHER_TOOLS",
      "NEWS_SUBSCRIPTIONS_PUBLISHER_ASSET_MANAGEMENT",
      "QR_CODE",
      "CREDIBILITY_INDICATORS",
      "ATTRIBUTIONS",
      "BROADCASTED_MESSAGES",
      "BRANDED_CONTENT",
      "BRANDED_CONTENT_CREATOR",
      "SOUNDS_COLLECTION",
      "CONTENT_TESTS",
      "GEM_PRODUCER_DASHBOARD",
      "MONETIZED_VIDEOS",
      "AUDIO_RELEASES",
      "NEWS_STORYLINES",
    ]


    field :display_name, 'string'
    field :filters, { list: 'object' }
    field :id, 'string'
    field :page_id, 'string'
    field :section, 'string'
    field :time_created, 'int'
    field :time_updated, 'int'
    has_no_post
    has_no_delete

  end
end
