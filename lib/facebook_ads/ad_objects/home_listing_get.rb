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

  class HomeListingGet < AdObject
    AC_TYPE = [
      "CENTRAL",
      "EMPTY_VALUE",
      "NONE",
      "OTHER",
    ]

    AREA_UNIT = [
      "EMPTY_VALUE",
      "SQFT",
      "SQM",
    ]

    AVAILABILITY = [
      "AVAILABLE_SOON",
      "FOR_RENT",
      "FOR_SALE",
      "OFF_MARKET",
      "RECENTLY_SOLD",
      "SALE_PENDING",
    ]

    CAPABILITIES = [
      "B2C_MARKETPLACE",
      "BIZ_MSG_AI_AGENT",
      "BUSINESS_INBOX_IN_MESSENGER",
      "BUY_ON_FACEBOOK",
      "C2C_MARKETPLACE",
      "CPAS_PARENT_CATALOG",
      "DA",
      "DAILY_DEALS",
      "DAILY_DEALS_LEGACY",
      "EVENT",
      "EVENT_DEPRECATED",
      "GROUPS",
      "IG_ONSITE_SHOPPING",
      "IG_PRODUCT_TAGGING",
      "LDP",
      "MARKETPLACE",
      "MARKETPLACE_ADS_DEPRECATED",
      "MARKETPLACE_HOME_RENTALS",
      "MARKETPLACE_HOME_SALES",
      "MARKETPLACE_MOTORS",
      "MARKETPLACE_SHOPS",
      "MINI_SHOPS",
      "NEIGHBORHOODS",
      "OFFLINE_CONVERSIONS",
      "PROFILE",
      "SERVICE",
      "SHOPS",
      "TEST_CAPABILITY",
      "UNIVERSAL_CHECKOUT",
      "US_MARKETPLACE",
      "WHATSAPP",
      "WHATSAPP_MARKETING_MESSAGE",
    ]

    CAPABILITIES_RENDERING_CATALOG_MANAGER = [
      "B2C_MARKETPLACE",
      "BIZ_MSG_AI_AGENT",
      "BUSINESS_INBOX_IN_MESSENGER",
      "BUY_ON_FACEBOOK",
      "C2C_MARKETPLACE",
      "CPAS_PARENT_CATALOG",
      "DA",
      "DAILY_DEALS",
      "DAILY_DEALS_LEGACY",
      "EVENT",
      "EVENT_DEPRECATED",
      "GROUPS",
      "IG_ONSITE_SHOPPING",
      "IG_PRODUCT_TAGGING",
      "LDP",
      "MARKETPLACE",
      "MARKETPLACE_ADS_DEPRECATED",
      "MARKETPLACE_HOME_RENTALS",
      "MARKETPLACE_HOME_SALES",
      "MARKETPLACE_MOTORS",
      "MARKETPLACE_SHOPS",
      "MINI_SHOPS",
      "NEIGHBORHOODS",
      "OFFLINE_CONVERSIONS",
      "PROFILE",
      "SERVICE",
      "SHOPS",
      "TEST_CAPABILITY",
      "UNIVERSAL_CHECKOUT",
      "US_MARKETPLACE",
      "WHATSAPP",
      "WHATSAPP_MARKETING_MESSAGE",
    ]

    FURNISH_TYPE = [
      "EMPTY_VALUE",
      "FURNISHED",
      "SEMIFURNISHED",
      "UNFURNISHED",
    ]

    HEATING_TYPE = [
      "CENTRAL",
      "ELECTRIC",
      "EMPTY_VALUE",
      "GAS",
      "NONE",
      "OTHER",
      "RADIATOR",
    ]

    IMAGE_FETCH_STATUS = [
      "DIRECT_UPLOAD",
      "FETCHED",
      "FETCH_FAILED",
      "NO_STATUS",
      "OUTDATED",
      "PARTIAL_FETCH",
    ]

    LAUNDRY_TYPE = [
      "EMPTY_VALUE",
      "IN_BUILDING",
      "IN_UNIT",
      "NONE",
      "OTHER",
    ]

    LISTING_TYPE = [
      "EMPTY_VALUE",
      "FORECLOSED",
      "FOR_RENT_BY_AGENT",
      "FOR_RENT_BY_OWNER",
      "FOR_SALE_BY_AGENT",
      "FOR_SALE_BY_OWNER",
      "NEW_CONSTRUCTION",
      "NEW_LISTING",
      "OTHER",
    ]

    PARKING_TYPE = [
      "EMPTY_VALUE",
      "GARAGE",
      "NONE",
      "OFF_STREET",
      "OTHER",
      "STREET",
    ]

    PARTNER_VERIFICATION = [
      "EMPTY_VALUE",
      "NONE",
      "VERIFIED",
    ]

    PROPERTY_TYPE = [
      "APARTMENT",
      "APARTMENT_ROOM",
      "BUILDER_FLOOR",
      "BUNGALOW",
      "CONDO",
      "CONDO_ROOM",
      "EMPTY_VALUE",
      "HOUSE",
      "HOUSE_IN_CONDOMINIUM",
      "HOUSE_IN_VILLA",
      "HOUSE_ROOM",
      "LAND",
      "LOFT",
      "MANUFACTURED",
      "OTHER",
      "OTHER_ROOM",
      "PENTHOUSE",
      "SINGLE_FAMILY_HOME",
      "STUDIO",
      "TOWNHOUSE",
      "TOWNHOUSE_ROOM",
    ]

    VISIBILITY = [
      "ACTIVE",
      "ARCHIVED",
      "HIDDEN",
      "LEGACY_PUBLIC",
      "PUBLISHED",
      "STAGING",
      "VISIBLE_ONLY_WITH_OVERRIDES",
      "WHITELIST_ONLY",
    ]


    field :ac_type, { enum: -> { AC_TYPE }}
    field :additional_fees_description, 'string'
    field :address, 'object'
    field :agent_company, 'string'
    field :agent_email, 'string'
    field :agent_fb_page_id, 'object'
    field :agent_name, 'string'
    field :agent_phone, 'string'
    field :applinks, 'object'
    field :area_size, 'int'
    field :area_unit, { enum: -> { AREA_UNIT }}
    field :availability, { enum: -> { AVAILABILITY }}
    field :capabilities, { list: { enum: -> { CAPABILITIES }} }
    field :capabilities_disabled_by_user, { list: 'string' }
    field :capabilities_rendering_catalog_manager, { list: { enum: -> { CAPABILITIES_RENDERING_CATALOG_MANAGER }} }
    field :capability_to_rejection_reason, { list: 'object' }
    field :catalog_item_overrides, 'object'
    field :channels_to_integrity_status, 'object'
    field :co_2_emission_rating_eu, 'object'
    field :currency, 'string'
    field :custom_label_0, 'string'
    field :custom_label_1, 'string'
    field :custom_label_2, 'string'
    field :custom_label_3, 'string'
    field :custom_label_4, 'string'
    field :custom_number_0, 'int'
    field :custom_number_1, 'int'
    field :custom_number_2, 'int'
    field :custom_number_3, 'int'
    field :custom_number_4, 'int'
    field :days_on_market, 'int'
    field :description, 'string'
    field :enabled_capability_to_review_status, { list: 'object' }
    field :energy_rating_eu, 'object'
    field :furnish_type, { enum: -> { FURNISH_TYPE }}
    field :group_id, 'string'
    field :heating_type, { enum: -> { HEATING_TYPE }}
    field :home_listing_id, 'string'
    field :id, 'int'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :is_blackholed, 'bool'
    field :laundry_type, { enum: -> { LAUNDRY_TYPE }}
    field :listing_type, { enum: -> { LISTING_TYPE }}
    field :max_currency, 'string'
    field :max_price, 'string'
    field :min_currency, 'string'
    field :min_price, 'string'
    field :name, 'string'
    field :num_baths, 'double'
    field :num_beds, 'double'
    field :num_rooms, 'double'
    field :num_units, 'int'
    field :override_details, 'object'
    field :parking_type, { enum: -> { PARKING_TYPE }}
    field :partner_verification, { enum: -> { PARTNER_VERIFICATION }}
    field :pet_policy, 'string'
    field :price, 'string'
    field :product_feed, 'object'
    field :property_type, { enum: -> { PROPERTY_TYPE }}
    field :sanitized_images, { list: 'string' }
    field :sanitized_previews, { list: 'string' }
    field :securitydeposit_currency, 'string'
    field :securitydeposit_price, 'string'
    field :tags, { list: 'string' }
    field :unit_price, 'object'
    field :url, 'string'
    field :url_shimmed, 'string'
    field :validation_errors, 'object'
    field :videos_metadata, 'object'
    field :visibility, { enum: -> { VISIBILITY }}
    field :year_built, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
