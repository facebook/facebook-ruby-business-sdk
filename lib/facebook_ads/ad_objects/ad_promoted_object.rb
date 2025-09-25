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

  class AdPromotedObject < AdObject
    CUSTOM_EVENT_TYPE = [
      "ACHIEVEMENT_UNLOCKED",
      "ADD_PAYMENT_INFO",
      "ADD_TO_CART",
      "ADD_TO_WISHLIST",
      "AD_IMPRESSION",
      "COMPLETE_REGISTRATION",
      "CONTACT",
      "CONTENT_VIEW",
      "CUSTOMIZE_PRODUCT",
      "D2_RETENTION",
      "D7_RETENTION",
      "DONATE",
      "FIND_LOCATION",
      "INITIATED_CHECKOUT",
      "LEAD",
      "LEVEL_ACHIEVED",
      "LISTING_INTERACTION",
      "MESSAGING_CONVERSATION_STARTED_7D",
      "OTHER",
      "PURCHASE",
      "RATE",
      "SCHEDULE",
      "SEARCH",
      "SERVICE_BOOKING_REQUEST",
      "SPENT_CREDITS",
      "START_TRIAL",
      "SUBMIT_APPLICATION",
      "SUBSCRIBE",
      "TUTORIAL_COMPLETION",
    ]

    FULL_FUNNEL_OBJECTIVE = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "OFFER_CLAIMS",
      "OUTCOME_APP_PROMOTION",
      "OUTCOME_AWARENESS",
      "OUTCOME_ENGAGEMENT",
      "OUTCOME_LEADS",
      "OUTCOME_SALES",
      "OUTCOME_TRAFFIC",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "REACH",
      "STORE_VISITS",
      "VIDEO_VIEWS",
      "WEBSITE_CONVERSIONS",
    ]

    LEAD_ADS_CUSTOM_EVENT_TYPE = [
      "ACHIEVEMENT_UNLOCKED",
      "ADD_PAYMENT_INFO",
      "ADD_TO_CART",
      "ADD_TO_WISHLIST",
      "AD_IMPRESSION",
      "COMPLETE_REGISTRATION",
      "CONTACT",
      "CONTENT_VIEW",
      "CUSTOMIZE_PRODUCT",
      "D2_RETENTION",
      "D7_RETENTION",
      "DONATE",
      "FIND_LOCATION",
      "INITIATED_CHECKOUT",
      "LEAD",
      "LEVEL_ACHIEVED",
      "LISTING_INTERACTION",
      "MESSAGING_CONVERSATION_STARTED_7D",
      "OTHER",
      "PURCHASE",
      "RATE",
      "SCHEDULE",
      "SEARCH",
      "SERVICE_BOOKING_REQUEST",
      "SPENT_CREDITS",
      "START_TRIAL",
      "SUBMIT_APPLICATION",
      "SUBSCRIBE",
      "TUTORIAL_COMPLETION",
    ]


    field :application_id, 'string'
    field :boosted_product_set_id, 'string'
    field :conversion_goal_id, 'string'
    field :custom_conversion_id, 'string'
    field :custom_event_str, 'string'
    field :custom_event_type, { enum: -> { CUSTOM_EVENT_TYPE }}
    field :dataset_split_id, 'string'
    field :dataset_split_ids, { list: 'string' }
    field :event_id, 'string'
    field :full_funnel_objective, { enum: -> { FULL_FUNNEL_OBJECTIVE }}
    field :fundraiser_campaign_id, 'string'
    field :lead_ads_custom_event_str, 'string'
    field :lead_ads_custom_event_type, { enum: -> { LEAD_ADS_CUSTOM_EVENT_TYPE }}
    field :lead_ads_form_event_source_type, 'string'
    field :lead_ads_offsite_conversion_type, 'string'
    field :lead_ads_selected_pixel_id, 'string'
    field :mcme_conversion_id, 'string'
    field :multi_event_product, 'string'
    field :object_store_url, 'string'
    field :object_store_urls, { list: 'string' }
    field :offer_id, 'string'
    field :offline_conversion_data_set_id, 'string'
    field :offsite_conversion_event_id, 'string'
    field :omnichannel_object, 'object'
    field :page_id, 'string'
    field :passback_application_id, 'string'
    field :passback_pixel_id, 'string'
    field :pixel_aggregation_rule, 'string'
    field :pixel_id, 'string'
    field :pixel_rule, 'string'
    field :place_page_set, 'AdPlacePageSet'
    field :place_page_set_id, 'string'
    field :product_catalog_id, 'string'
    field :product_item_id, 'string'
    field :product_set, 'ProductSet'
    field :product_set_id, 'string'
    field :product_set_optimization, 'string'
    field :retention_days, 'string'
    field :value_semantic_type, 'string'
    field :variation, 'string'
    field :whats_app_business_phone_number_id, 'string'
    field :whatsapp_phone_number, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
