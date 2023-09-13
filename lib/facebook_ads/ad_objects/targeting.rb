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

  class Targeting < AdObject
    DEVICE_PLATFORMS = [
      "desktop",
      "mobile",
    ]

    EFFECTIVE_DEVICE_PLATFORMS = [
      "desktop",
      "mobile",
    ]


    field :adgroup_id, 'string'
    field :age_max, 'int'
    field :age_min, 'int'
    field :alternate_auto_targeting_option, 'string'
    field :app_install_state, 'string'
    field :audience_network_positions, { list: 'string' }
    field :behaviors, { list: 'IdName' }
    field :brand_safety_content_filter_levels, { list: 'string' }
    field :catalog_based_targeting, 'CatalogBasedTargeting'
    field :cities, { list: 'IdName' }
    field :college_years, { list: 'int' }
    field :connections, { list: 'ConnectionsTargeting' }
    field :contextual_targeting_categories, { list: 'IdName' }
    field :countries, { list: 'string' }
    field :country, { list: 'string' }
    field :country_groups, { list: 'string' }
    field :custom_audiences, { list: 'RawCustomAudience' }
    field :device_platforms, { list: { enum: -> { DEVICE_PLATFORMS }} }
    field :direct_install_devices, 'bool'
    field :dynamic_audience_ids, { list: 'string' }
    field :education_majors, { list: 'IdName' }
    field :education_schools, { list: 'IdName' }
    field :education_statuses, { list: 'int' }
    field :effective_audience_network_positions, { list: 'string' }
    field :effective_device_platforms, { list: { enum: -> { EFFECTIVE_DEVICE_PLATFORMS }} }
    field :effective_facebook_positions, { list: 'string' }
    field :effective_instagram_positions, { list: 'string' }
    field :effective_messenger_positions, { list: 'string' }
    field :effective_publisher_platforms, { list: 'string' }
    field :engagement_specs, { list: 'TargetingDynamicRule' }
    field :ethnic_affinity, { list: 'IdName' }
    field :exclude_reached_since, { list: 'string' }
    field :excluded_brand_safety_content_types, { list: 'string' }
    field :excluded_connections, { list: 'ConnectionsTargeting' }
    field :excluded_custom_audiences, { list: 'RawCustomAudience' }
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
    field :family_statuses, { list: 'IdName' }
    field :fb_deal_id, 'string'
    field :flexible_spec, { list: 'FlexibleTargeting' }
    field :friends_of_connections, { list: 'ConnectionsTargeting' }
    field :genders, { list: 'int' }
    field :generation, { list: 'IdName' }
    field :geo_locations, 'TargetingGeoLocation'
    field :home_ownership, { list: 'IdName' }
    field :home_type, { list: 'IdName' }
    field :home_value, { list: 'IdName' }
    field :household_composition, { list: 'IdName' }
    field :income, { list: 'IdName' }
    field :industries, { list: 'IdName' }
    field :instagram_positions, { list: 'string' }
    field :instream_video_skippable_excluded, 'bool'
    field :interested_in, { list: 'int' }
    field :interests, { list: 'IdName' }
    field :is_whatsapp_destination_ad, 'bool'
    field :keywords, { list: 'string' }
    field :life_events, { list: 'IdName' }
    field :locales, { list: 'int' }
    field :messenger_positions, { list: 'string' }
    field :moms, { list: 'IdName' }
    field :net_worth, { list: 'IdName' }
    field :office_type, { list: 'IdName' }
    field :place_page_set_ids, { list: 'string' }
    field :political_views, { list: 'int' }
    field :politics, { list: 'IdName' }
    field :product_audience_specs, { list: 'TargetingProductAudienceSpec' }
    field :prospecting_audience, 'TargetingProspectingAudience'
    field :publisher_platforms, { list: 'string' }
    field :radius, 'string'
    field :regions, { list: 'IdName' }
    field :relationship_statuses, { list: 'int' }
    field :site_category, { list: 'string' }
    field :targeting_optimization, 'string'
    field :targeting_relaxation_types, 'TargetingRelaxation'
    field :user_adclusters, { list: 'IdName' }
    field :user_device, { list: 'string' }
    field :user_event, { list: 'int' }
    field :user_os, { list: 'string' }
    field :wireless_carrier, { list: 'string' }
    field :work_employers, { list: 'IdName' }
    field :work_positions, { list: 'IdName' }
    field :zips, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
