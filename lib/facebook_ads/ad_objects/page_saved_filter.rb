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
      "ACTIVE_FUNDRAISERS",
      "ADS_CANVAS",
      "ADS_POSTS",
      "ALLOWED",
      "ALL_REFERENCE_FILES",
      "ARCHIVED_EVENTS",
      "ATTRIBUTIONS",
      "AUDIO_RELEASES",
      "BLOCKED",
      "BRANDED_CONTENT",
      "BRANDED_CONTENT_CREATOR",
      "BRANDED_CONTENT_SUSPECTED",
      "CANDIDATE_VIDEOS",
      "CHEX_COMPLETED_ORDERS",
      "CHEX_PENDING_ORDERS",
      "CLAIMED",
      "COMMERCE_COLLECTIONS",
      "COMMERCE_MERCHANT_SETTINGS",
      "COMMERCE_PAST_ORDERS",
      "COMMERCE_PENDING_ORDERS",
      "COMMERCE_PLATFORM_SETTINGS",
      "COMMERCE_PRODUCTS",
      "COMMERCE_SHOP_LINK",
      "CONTENT_TESTS",
      "CREATOR_STUDIO",
      "CREATOR_STUDIO_ALL_MATCHES",
      "CREATOR_STUDIO_ALL_REFERENCE_FILES",
      "CREATOR_STUDIO_BLOCKED",
      "CREATOR_STUDIO_COLLECT_AD_EARNINGS",
      "CREATOR_STUDIO_DISPUTES",
      "CREATOR_STUDIO_PUBLISHED_ALL_REFERENCE_FILES",
      "CREATOR_STUDIO_PUBLISHED_BLOCKED",
      "CREATOR_STUDIO_PUBLISHED_DISPUTES",
      "CREATOR_STUDIO_PUBLISHED_MANUAL_REVIEW",
      "CREATOR_STUDIO_PUBLISHED_TRACKED",
      "CREATOR_STUDIO_REFERENCE_CONFLICTS",
      "CREATOR_STUDIO_REFERENCE_POSSIBLE_CONFLICTS",
      "CREATOR_STUDIO_REFERENCE_RESOLUTIONS",
      "CREATOR_STUDIO_TAKEDOWNS",
      "CREATOR_STUDIO_TAKEDOWN_REQUESTS",
      "CREATOR_STUDIO_TRACKED",
      "CROSSPOSTED_VIDEOS",
      "DISPUTES",
      "DONATIONS_SETTINGS",
      "DRAFTS",
      "DRAFT_EVENTS",
      "DRAFT_FUNDRAISERS",
      "ENDED_FUNDRAISERS",
      "EXPIRED_POSTS",
      "EXPIRING_POSTS",
      "GEM_PRODUCER_DASHBOARD",
      "IA_REGIWALL_SETTINGS",
      "INSTANT_ARTICLES",
      "INSTANT_ARTICLES_CTA_MANAGEMENT",
      "INSTANT_ARTICLES_DEVELOPMENT",
      "INSTANT_ARTICLES_MONETIZATION",
      "INSTANT_ARTICLES_SAMPLE",
      "INSTANT_ARTICLES_SETTINGS",
      "INSTANT_ARTICLES_SIGN_UP",
      "INSTANT_ARTICLES_TRAFFIC_LIFT",
      "INVOICES_ACTIVE",
      "INVOICES_HISTORY",
      "JOB_APPLICATIONS",
      "JOB_POSTS",
      "LEAD_ADS_CRM_SETUP",
      "LEAD_ADS_CUSTOM_CRM_SETUP",
      "LEAD_ADS_DRAFT_FORMS",
      "LEAD_ADS_FORMS",
      "LIVE_BROADCASTS",
      "MANUAL_CLAIMS",
      "MANUAL_CLAIM_FACEBOOK_VIDEOS",
      "MANUAL_CLAIM_INSTAGRAM_VIDEOS",
      "MANUAL_REVIEW",
      "MATCH_RULES",
      "MONETIZED_VIDEOS",
      "NEWS_SUBSCRIPTIONS",
      "NEWS_SUBSCRIPTIONS_PUBLISHER_INSIGHTS",
      "NEWS_SUBSCRIPTIONS_PUBLISHER_TEST_USERS",
      "NEW_MATCHES",
      "PENDING_PROFILE_PICTURE_FRAMES",
      "PLAYLISTS",
      "PLAYLIST_DETAILS",
      "POLLS_COMPOSER",
      "POSTS_CONFIG",
      "POST_IDEAS",
      "PREMIUM_MUSIC_VIDEOS",
      "PUBLISHED_EVENTS",
      "PUBLISHED_POSTS",
      "PUBLISHED_PROFILE_PICTURE_FRAMES",
      "QR_CODE",
      "READY_FUNDRAISERS",
      "REFERENCE_CONFLICTS",
      "REFERENCE_FILES",
      "REFERENCE_POSSIBLE_CONFLICTS",
      "REFERENCE_RESOLUTIONS",
      "REGISTRATIONS",
      "REPORTED",
      "REWARD_PROGRAM",
      "REWARD_PROGRAM_COLLATERAL_MANAGEMENT",
      "REWARD_PROGRAM_TRANSACTION_HISTORY",
      "SCHEDULED_EVENTS",
      "SCHEDULED_POSTS",
      "SEASONS",
      "SEASON_DETAILS",
      "SOUNDS_COLLECTION",
      "SOUND_RECORDINGS",
      "STORY_ARCHIVE",
      "STREAMER_DASHBOARD",
      "TAKEDOWNS",
      "TOURS",
      "TRACKED",
      "UNSENT_REPORTS",
      "VIDEOS",
      "VIDEOS_COPYRIGHT",
    ]


    field :display_name, 'string'
    field :filters, { list: 'object' }
    field :id, 'string'
    field :page_id, 'string'
    field :section, 'string'
    field :time_created, 'int'
    field :time_updated, 'int'
    has_no_post

  end
end
