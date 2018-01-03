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

  class Targeting < AdObject
    DEVICE_PLATFORMS = [
      "mobile",
      "desktop",
      "connected_tv",
    ]

    EFFECTIVE_DEVICE_PLATFORMS = [
      "mobile",
      "desktop",
      "connected_tv",
    ]


    field :adgroup_id, 'string'
    field :age_max, 'int'
    field :age_min, 'int'
    field :alternate_auto_targeting_option, 'string'
    field :app_install_state, 'string'
    field :audience_network_positions, { list: 'string' }
    field :behaviors, { list: 'IDName' }
    field :cities, { list: 'IDName' }
    field :college_years, { list: 'int' }
    field :connections, { list: 'IDName' }
    field :contextual_targeting_categories, { list: 'IDName' }
    field :countries, { list: 'string' }
    field :country, { list: 'string' }
    field :country_groups, { list: 'string' }
    field :custom_audiences, { list: 'IDName' }
    field :device_platforms, { list: { enum: -> { DEVICE_PLATFORMS }} }
    field :direct_install_devices, 'bool'
    field :dynamic_audience_ids, { list: 'string' }
    field :education_majors, { list: 'IDName' }
    field :education_schools, { list: 'IDName' }
    field :education_statuses, { list: 'int' }
    field :effective_audience_network_positions, { list: 'string' }
    field :effective_device_platforms, { list: { enum: -> { EFFECTIVE_DEVICE_PLATFORMS }} }
    field :effective_facebook_positions, { list: 'string' }
    field :effective_instagram_positions, { list: 'string' }
    field :effective_messenger_positions, { list: 'string' }
    field :effective_publisher_platforms, { list: 'string' }
    field :engagement_specs, { list: 'TargetingDynamicRule' }
    field :ethnic_affinity, { list: 'IDName' }
    field :exclude_reached_since, { list: 'string' }
    field :excluded_connections, { list: 'IDName' }
    field :excluded_custom_audiences, { list: 'IDName' }
    field :excluded_dynamic_audience_ids, { list: 'string' }
    field :excluded_engagement_specs, { list: 'TargetingDynamicRule' }
    field :excluded_geo_locations, 'TargetingGeoLocation'
    field :excluded_mobile_device_model, { list: 'string' }
    field :excluded_product_audience_specs, { list: 'TargetingProductAudienceSpec' }
    field :excluded_publisher_categories, { list: 'string' }
    field :excluded_publisher_list_ids, { list: 'string' }
    field :excluded_user_device, { list: 'string' }
    field :exclusions, 'FlexibleTargeting'
    field :facebook_positions, { list: 'string' }
    field :family_statuses, { list: 'IDName' }
    field :fb_deal_id, 'string'
    field :flexible_spec, { list: 'FlexibleTargeting' }
    field :friends_of_connections, { list: 'IDName' }
    field :genders, { list: 'int' }
    field :generation, { list: 'IDName' }
    field :geo_locations, 'TargetingGeoLocation'
    field :home_ownership, { list: 'IDName' }
    field :home_type, { list: 'IDName' }
    field :home_value, { list: 'IDName' }
    field :household_composition, { list: 'IDName' }
    field :income, { list: 'IDName' }
    field :industries, { list: 'IDName' }
    field :instagram_positions, { list: 'string' }
    field :interested_in, { list: 'int' }
    field :interests, { list: 'IDName' }
    field :keywords, { list: 'string' }
    field :life_events, { list: 'IDName' }
    field :locales, { list: 'int' }
    field :messenger_positions, { list: 'string' }
    field :moms, { list: 'IDName' }
    field :net_worth, { list: 'IDName' }
    field :office_type, { list: 'IDName' }
    field :place_page_set_ids, { list: 'string' }
    field :political_views, { list: 'int' }
    field :politics, { list: 'IDName' }
    field :product_audience_specs, { list: 'TargetingProductAudienceSpec' }
    field :publisher_platforms, { list: 'string' }
    field :publisher_visibility_categories, { list: 'string' }
    field :radius, 'string'
    field :regions, { list: 'IDName' }
    field :relationship_statuses, { list: 'int' }
    field :rtb_flag, 'bool'
    field :site_category, { list: 'string' }
    field :targeting_optimization, 'string'
    field :user_adclusters, { list: 'IDName' }
    field :user_device, { list: 'string' }
    field :user_event, { list: 'int' }
    field :user_os, { list: 'string' }
    field :wireless_carrier, { list: 'string' }
    field :work_employers, { list: 'IDName' }
    field :work_positions, { list: 'IDName' }
    field :zips, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
