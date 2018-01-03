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
      "adgroup_id",
      "genders",
      "age_min",
      "age_max",
      "country_groups",
      "countries",
      "country",
      "cities",
      "radius",
      "regions",
      "zips",
      "interests",
      "keywords",
      "education_schools",
      "education_majors",
      "work_positions",
      "work_employers",
      "relationship_statuses",
      "interested_in",
      "locales",
      "user_adclusters",
      "excluded_user_adclusters",
      "conjunctive_user_adclusters",
      "custom_audiences",
      "excluded_custom_audiences",
      "college_years",
      "education_statuses",
      "connections",
      "excluded_connections",
      "friends_of_connections",
      "user_event",
      "dynamic_audience_ids",
      "excluded_dynamic_audience_ids",
      "rtb_flag",
      "site_category",
      "geo_locations",
      "excluded_geo_locations",
      "timezones",
      "place_page_set_ids",
      "page_types",
      "publisher_platforms",
      "effective_publisher_platforms",
      "facebook_positions",
      "effective_facebook_positions",
      "instagram_positions",
      "effective_instagram_positions",
      "messenger_positions",
      "effective_messenger_positions",
      "device_platforms",
      "effective_device_platforms",
      "audience_network_positions",
      "effective_audience_network_positions",
      "excluded_publisher_categories",
      "excluded_publisher_list_ids",
      "publisher_visibility_categories",
      "user_device",
      "mobile_device_model",
      "excluded_user_device",
      "excluded_mobile_device_model",
      "user_os",
      "wireless_carrier",
      "family_statuses",
      "industries",
      "life_events",
      "political_views",
      "politics",
      "behaviors",
      "income",
      "net_worth",
      "home_type",
      "home_ownership",
      "home_value",
      "ethnic_affinity",
      "generation",
      "household_composition",
      "moms",
      "office_type",
      "targeting_optimization",
      "direct_install_devices",
      "engagement_specs",
      "excluded_engagement_specs",
      "product_audience_specs",
      "excluded_product_audience_specs",
      "exclusions",
      "flexible_spec",
      "exclude_reached_since",
      "exclude_previous_days",
      "app_install_state",
      "fb_deal_id",
      "interest_defaults_source",
      "alternate_auto_targeting_option",
      "contextual_targeting_categories",
      "topic",
      "format",
      "trending",
      "gatekeepers",
      "follow_profiles",
      "follow_profiles_negative",
      "location_categories",
      "user_page_threads",
      "user_page_threads_excluded",
    ]


    field :audience_size, 'int'
    field :description, 'string'
    field :id, 'string'
    field :name, 'string'
    field :path, { list: 'string' }
    field :type, 'string'
    field :valid, 'bool'
    has_no_get
    has_no_post
    has_no_delete

  end
end
