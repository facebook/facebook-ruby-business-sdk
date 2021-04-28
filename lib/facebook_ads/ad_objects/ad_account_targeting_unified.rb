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

  class AdAccountTargetingUnified < AdObject
    LIMIT_TYPE = [
      "behaviors",
      "college_years",
      "education_majors",
      "education_schools",
      "education_statuses",
      "ethnic_affinity",
      "family_statuses",
      "generation",
      "home_ownership",
      "home_type",
      "home_value",
      "household_composition",
      "income",
      "industries",
      "interested_in",
      "interests",
      "life_events",
      "location_categories",
      "moms",
      "net_worth",
      "office_type",
      "politics",
      "relationship_statuses",
      "user_adclusters",
      "work_employers",
      "work_positions",
    ]

    REGULATED_CATEGORIES = [
      "CREDIT",
      "EMPLOYMENT",
      "HOUSING",
      "ISSUES_ELECTIONS_POLITICS",
      "NONE",
    ]

    WHITELISTED_TYPES = [
      "adgroup_id",
      "age_max",
      "age_min",
      "alternate_auto_targeting_option",
      "app_install_state",
      "audience_network_positions",
      "behaviors",
      "brand_safety_content_filter_levels",
      "brand_safety_content_severity_levels",
      "catalog_based_targeting",
      "cities",
      "city_keys",
      "college_years",
      "conjunctive_user_adclusters",
      "connections",
      "contextual_targeting_categories",
      "countries",
      "country",
      "country_groups",
      "custom_audiences",
      "device_platforms",
      "direct_install_devices",
      "dynamic_audience_ids",
      "education_majors",
      "education_schools",
      "education_statuses",
      "effective_audience_network_positions",
      "effective_device_platforms",
      "effective_facebook_positions",
      "effective_instagram_positions",
      "effective_messenger_positions",
      "effective_oculus_positions",
      "effective_publisher_platforms",
      "effective_whatsapp_positions",
      "engagement_specs",
      "ethnic_affinity",
      "exclude_previous_days",
      "exclude_reached_since",
      "excluded_brand_safety_content_types",
      "excluded_connections",
      "excluded_custom_audiences",
      "excluded_dynamic_audience_ids",
      "excluded_engagement_specs",
      "excluded_geo_locations",
      "excluded_mobile_device_model",
      "excluded_product_audience_specs",
      "excluded_publisher_categories",
      "excluded_publisher_list_ids",
      "excluded_user_adclusters",
      "excluded_user_device",
      "exclusions",
      "facebook_positions",
      "family_statuses",
      "fb_deal_id",
      "flexible_spec",
      "follow_profiles",
      "follow_profiles_negative",
      "format",
      "friends_of_connections",
      "gatekeepers",
      "genders",
      "generation",
      "geo_locations",
      "home_ownership",
      "home_type",
      "home_value",
      "household_composition",
      "id",
      "income",
      "industries",
      "instagram_hashtags",
      "instagram_positions",
      "instream_video_skippable_excluded",
      "instream_video_sponsorship_placements",
      "interest_defaults_source",
      "interested_in",
      "interests",
      "is_instagram_destination_ad",
      "is_whatsapp_destination_ad",
      "keywords",
      "life_events",
      "locales",
      "location_categories",
      "location_cluster_ids",
      "location_expansion",
      "marketplace_product_categories",
      "messenger_positions",
      "mobile_device_model",
      "moms",
      "net_worth",
      "oculus_positions",
      "office_type",
      "page_types",
      "place_page_set_ids",
      "political_views",
      "politics",
      "product_audience_specs",
      "prospecting_audience",
      "publisher_platforms",
      "radius",
      "region_keys",
      "regions",
      "relationship_statuses",
      "rtb_flag",
      "site_category",
      "targeting_optimization",
      "targeting_relaxation_types",
      "timezones",
      "topic",
      "trending",
      "user_adclusters",
      "user_device",
      "user_event",
      "user_os",
      "user_page_threads",
      "user_page_threads_excluded",
      "whatsapp_positions",
      "wireless_carrier",
      "work_employers",
      "work_positions",
      "zips",
    ]

    APP_STORE = [
      "amazon_app_store",
      "does_not_exist",
      "fb_android_store",
      "fb_canvas",
      "fb_gameroom",
      "galaxy_store",
      "google_play",
      "instant_game",
      "itunes",
      "itunes_ipad",
      "oculus_app_store",
      "roku_channel_store",
      "windows_10_store",
      "windows_store",
    ]

    OBJECTIVE = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "CONVERSIONS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "REACH",
      "STORE_VISITS",
      "VIDEO_VIEWS",
    ]

    MODE = [
      "best_performing",
      "recently_used",
      "related",
      "suggestions",
    ]


    field :audience_size, 'int'
    field :conversion_lift, 'double'
    field :description, 'string'
    field :id, 'string'
    field :img, 'string'
    field :info, 'string'
    field :info_title, 'string'
    field :is_recommendation, 'bool'
    field :key, 'string'
    field :link, 'string'
    field :name, 'string'
    field :parent, 'string'
    field :partner, 'string'
    field :path, { list: 'string' }
    field :performance_rating, 'int'
    field :raw_name, 'string'
    field :recommendation_model, 'string'
    field :search_interest_id, 'string'
    field :source, 'string'
    field :spend, 'double'
    field :type, 'string'
    field :valid, 'bool'
    has_no_get
    has_no_post
    has_no_delete

  end
end
