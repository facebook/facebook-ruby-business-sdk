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

  class AdAccountAdVolume < AdObject
    RECOMMENDATION_TYPE = [
      "AAC_CREATION_PACKAGE",
      "AB_TEST",
      "ACCOUNT_ERROR",
      "ACCOUNT_NEEDS_CREDIT",
      "ACCOUNT_SPEND_LIMIT",
      "ACCOUNT_SPEND_LIMIT_DUPLICATION",
      "ACO_TOGGLE",
      "ADSET_BUDGET_SHARING",
      "ADS_REPORTING",
      "ADS_STATUS",
      "ADVANCED_CAMPAIGN_BUDGET",
      "ADVANTAGE_APP_CAMPAIGN",
      "ADVANTAGE_CAMPAIGN_BUDGET_DUPLICATION",
      "ADVANTAGE_CUSTOM_AUDIENCE",
      "ADVANTAGE_CUSTOM_AUDIENCE_DUPLICATION",
      "ADVANTAGE_CUSTOM_AUDIENCE_UPSELL",
      "ADVANTAGE_DETAILED_TARGETING",
      "ADVANTAGE_LOOKALIKE_AUDIENCE",
      "ADVANTAGE_LOOKALIKE_DUPLICATION",
      "ADVANTAGE_PLUS_APP_CAMPAIGN",
      "ADVANTAGE_PLUS_APP_CAMPAIGN_PRECREATE",
      "ADVANTAGE_PLUS_AUDIENCE",
      "ADVANTAGE_PLUS_AUDIENCE_DUPLICATION",
      "ADVANTAGE_PLUS_AUDIENCE_FRICTION",
      "ADVANTAGE_PLUS_AUDIENCE_TOGGLE",
      "ADVANTAGE_PLUS_CAMPAIGN_BUDGET",
      "ADVANTAGE_PLUS_CATALOG_ADS",
      "ADVANTAGE_PLUS_CREATIVE",
      "ADVANTAGE_PLUS_CREATIVE_CATALOG",
      "ADVANTAGE_PLUS_CREATIVE_SE",
      "ADVANTAGE_PLUS_LEAD_CAMPAIGN",
      "ADVANTAGE_PLUS_PLACEMENTS_DUPLICATION",
      "ADVANTAGE_PLUS_PLACEMENTS_FRICTION",
      "ADVANTAGE_PLUS_PLACEMENTS_V2_DUPLICATION",
      "ADVANTAGE_SHOPPING_CAMPAIGN",
      "ADVANTAGE_SHOPPING_CAMPAIGN_FRAGMENTATION",
      "AD_ACCOUNT_PLACEMENT_CONTROLS_UPSELL",
      "AD_LIFT_RECALL_GOAL",
      "AD_LIFT_RECALL_GOAL_PRECREATE",
      "AD_LIFT_RECALL_OPTIMIZATION_GOAL",
      "AD_OBJECTIVE",
      "AD_SET_BUDGET_SHARING_GUIDANCE",
      "AEM_V2_INELIGIBLE",
      "AGGREGATED_BID_LIMITED",
      "AGGREGATED_BUDGET_LIMITED",
      "AGGREGATED_COST_LIMITED",
      "APLUSC_ADD_OVERLAYS",
      "APLUSC_DYNAMIC_DESCRIPTION",
      "APLUSC_IMAGE_BACKGROUND_GENERATION",
      "APLUSC_MUSIC",
      "APLUSC_RELEVANT_COMMENTS",
      "APLUSC_STANDARD_ENHANCEMENTS_BUNDLE",
      "APLUSC_TEXT_IMPROVEMENTS",
      "APLUSC_VISUAL_TOUCHUPS",
      "APLUS_C_CATALOG_DUPLICATION",
      "APP_AEM_V2_INSTALLATION_PROMOTION",
      "APP_ENGAGED_VIEW_CONVERSIONS_DUPLICATION",
      "ASC_AUTOMATION",
      "ASC_BUDGET_OPTIMIZATION",
      "ASC_CREATION_PACKAGE",
      "ASC_FRAGMENTATION_V2",
      "ASC_PRECREATE",
      "ASPECT_RATIO",
      "ATLEAST_6_PLACEMENTS",
      "AUCTION_OVERLAP",
      "AUCTION_OVERLAP_CONSOLIDATION",
      "AUDIENCE_EXPANSION",
      "AUDIENCE_EXPANSION_GEORADIUS",
      "AUDIENCE_EXPANSION_LOOKALIKE",
      "AUDIENCE_EXPANSION_RETARGETING",
      "AUDIENCE_LEARNING_LIMITED",
      "AUTOBID_TO_MANUAL_BID",
      "AUTOFLOW_OPT_IN",
      "AUTOFLOW_OPT_IN_FALLBACK_DUPLICATION_FLOW",
      "AUTOFLOW_OPT_IN_V2",
      "AUTOMATIC_PLACEMENTS",
      "AUTOMATIC_PLACEMENTS_V2",
      "AUTO_BID",
      "AUTO_CAT_SELECTION_ENHANCEMENT",
      "BACKGROUND_GENERATION",
      "BID_LIMITED_SENSITIVE",
      "BID_LIMITED_STARVING",
      "BLENDED_ADS",
      "BLENDED_ADS_DUPLICATION",
      "BLENDED_ADS_FOR_SHOPS_ADS_DUPLICATION",
      "BPBAA_WITH_CAPI_UPSELL",
      "BROADGEO_AM_UPSELL_GUIDANCE",
      "BROAD_TARGETING",
      "BUDGET_AMORTIZATION",
      "BUDGET_LIMITED",
      "BUDGET_REALLOCATION",
      "CALL_ADS_DAYPARTING_L3_RECOMMENDATION",
      "CAMPAIGN_GUIDANCE_NAVIGATOR_REELS_TIPS",
      "CAPI",
      "CAPI_CRM_FUNNEL",
      "CAPI_CRM_GUIDANCE",
      "CAPI_CRM_SETUP",
      "CAPI_EVENT_COVERAGE",
      "CAPI_PENETRATION",
      "CAPI_PERFORMANCE_MATCH_KEY",
      "CAPI_PERFORMANCE_MATCH_KEY_V2",
      "CASH_REWARDS_OPT_IN",
      "CATALOG_DYNAMIC_MEDIA",
      "CATALOG_MATCH_RATE",
      "COMMERCE_SHOPS_ADS_DUPLICATION",
      "CONNECTED_SOURCES",
      "CONNECTED_SOURCES_DUPLICATION",
      "CONNECT_FACEBOOK_PAGE_TO_INSTAGRAM",
      "CONNECT_FACEBOOK_PAGE_TO_WHATSAPP",
      "CONVERSION_LEADS_OPTIMIZATION",
      "CONVERSION_LEADS_OPTIMIZATION_DUPLICATION",
      "CONVERSION_LEAD_ADS",
      "COST_GOAL",
      "COST_GOAL_BUDGET_LIMITED",
      "COST_GOAL_CPA_LIMITED",
      "COST_PER_RESULT",
      "CREATION_PACKAGE_UPGRADE_TO_ASC",
      "CREATION_PACKAGE_UPGRADE_TO_CTX",
      "CREATION_PACKAGE_UPGRADE_TO_TLA",
      "CREATION_PACKAGE_UPGRADE_TO_TMC",
      "CREATIVE_BADGE",
      "CREATIVE_DIVERSITY",
      "CREATIVE_FATIGUE",
      "CREATIVE_FATIGUE_DUPLICATION",
      "CREATIVE_FATIGUE_HOURLY",
      "CREATIVE_LIMITED",
      "CREATIVE_LIMITED_DUPLICATION",
      "CREATIVE_LIMITED_HOURLY",
      "CREATOR_ADS_PA_CONVERSION",
      "CTA",
      "CTM_AD_OBJECTIVE_GROWTH",
      "CTM_LEADS_OPTIMIZATION_UPSELL",
      "CTX_BUDGET_OPTIMIZATION",
      "CTX_CREATION_PACKAGE",
      "CTX_CTA_UPGRADE_IN_DUPLICATION",
      "CTX_CTMPO_UPGRADE",
      "CTX_CTWAPO_UPGRADE",
      "CTX_GUIDANCE",
      "CTX_HVS",
      "CTX_MULTI_MESSAGE_DESTINATION",
      "CTX_PRECREATE",
      "CTX_PRODUCT_EXTENSION_DUPLICATION",
      "CTX_SABR_CBO",
      "CTX_SABR_NON_CBO",
      "CTX_SMART_DEFAULTING",
      "CTX_ZO_CBO",
      "CTX_ZO_NON_CBO",
      "CUSTOM_AUDIENCE_RELAXATION",
      "DA_ADVANTAGE_PLUS_CREATIVE_INFO_LABELS",
      "DA_DUPLICATION_PRODUCT_TAGS",
      "DEAD_LINK",
      "DEFRAGMENTATION_ACB",
      "DEFRAGMENTATION_ACB_DUPLICATION",
      "DEFRAGMENTATION_USING_VALUE_RULES_TEST_V2",
      "DELIVERY_ERROR",
      "DELIVERY_WARNING",
      "DYNAMIC_ADVANTAGE_CAMPAIGN_BUDGET",
      "ECOSYSTEM_BID_REDUCE_L1_CARDINALITY",
      "ENABLE_WHATS_APP_ADS_DATA_SHARING",
      "ENGAGED_VIEW_CONVERSIONS_CREATION",
      "EVC_APP_DUPLICATION_UPGRADE",
      "EVC_WEB_DUPLICATION_UPGRADE",
      "FRAGMENTATION",
      "FRAGMENTATION_RESOLUTION_UPDATE",
      "FRAGMENTATION_V2",
      "GENERATIVE_UNCROP_DUPLICATION",
      "GEN_AI_MVP",
      "GES_TEST",
      "GUIDANCE_CENTER_CODE_GEN",
      "HEURISTIC_DEFAULT_DURATION",
      "HIGH_COST",
      "HISTORICAL_BENCHMARK",
      "IAA_ROAS_OPTIMIZATION",
      "IG_MULTI_ADS",
      "IG_SURFACES_MANUAL_PLACEMENTS",
      "INCREMENTAL_ATTRIBUTION",
      "INSTANT_FORMS_LEADS",
      "LANDING_PAGE_VIEW",
      "LANDING_PAGE_VIEW_OPTIMIZATION_GOAL",
      "LANDING_PAGE_VIEW_PRECREATE",
      "LEAD_ADS_GUIDANCE",
      "LEARNING_LIMITED",
      "LEARNING_PAUSE_FRICTION",
      "LEARNING_PHASE_BUDGET_EDITS",
      "LOW_BUDGET_UTILIZATION",
      "LOW_OUTCOME",
      "MERLIN_GUIDANCE",
      "MESSAGING_EVENTS",
      "MESSAGING_EVENTS_PRECREATE",
      "MESSAGING_PARTNERS",
      "MESSAGING_PARTNERS_PRECREATE",
      "META_VERIFIED_ADS_PERFORMANCE_GUIDANCE",
      "MISSING_OR_INVALID_PARAMETERS",
      "MIXED_FORMATS",
      "MIXED_PA_COMBINE_ADSETS",
      "MMT_CAROUSEL_TO_VIDEO",
      "MOBILE_FIRST_CREATIVE",
      "MOBILE_FIRST_VIDEO",
      "MR_AEMV2SUB_KCONSOLIDATION",
      "MULTI_ADVERTISER_ADS",
      "MULTI_TEXT",
      "MUSIC",
      "NOT_APPLICABLE",
      "NO_DELIVERY_STATUS",
      "OFFSITE_CONVERSION",
      "OFFSITE_CONVERSION_BASED_ON_SIGNALS",
      "OPTIMAL_BAU",
      "OUTCOME_FORECASTER_BUDGET_RECOMMENDATION",
      "OUTCOME_FORECASTER_SHADOW_LOGGING",
      "PARTNERSHIP_ADS",
      "PAYMENT_METHOD",
      "PERFORMANT_CREATIVE_REELS_OPT_IN",
      "PFR_L1_INLINE_MMT",
      "PIXELLESS_LPV_OPTIMIZATION_GOAL",
      "PIXEL_OPTIMIZATION_AAM",
      "PIXEL_OPTIMIZATION_AAM_PRECREATE",
      "PIXEL_OPTIMIZATION_HIE",
      "PIXEL_OPTIMIZATION_HIE_PRECREATE",
      "PIXEL_SETUP",
      "PIXEL_SETUP_PRECREATE",
      "PIXEL_UPSELL",
      "PLACEMENTS_LIQUIDITY_AUTOMATIC_GUIDANCE",
      "PREDICTIVE_CREATIVE_LIMITED",
      "PREDICTIVE_CREATIVE_LIMITED_HOURLY",
      "PREPARING_STATUS",
      "PRODUCT_SET_BOOSTING",
      "PROMO_ADS_UPSELL_GUIDANCE",
      "PURCHASE_OPTIMIZATION",
      "RAPID_LEARNING_LIMITED",
      "RAPID_LEARNING_PHASE",
      "REACH_OPTIMIZATION_GOAL",
      "REACH_OPTIMIZATION_GOAL_PRECREATE",
      "REELS_DUPLICATION_UPSELL",
      "REELS_MUSIC_DUPLICATION",
      "REELS_PC_AND_MOBILE_FIRST_CREATIVE",
      "REELS_PC_RECOMMENDATION",
      "REELS_PERFORMANT_CREATIVE",
      "REELS_PLACEMENT",
      "REVERT",
      "REVIEW_CREATIVE_DUPLICATED_REJECTED_ADS",
      "SABR_DEFAULT_DURATION",
      "SALES_CONVERSION",
      "SAVED_AUDIENCE",
      "SCALE_GOOD_CAMPAIGN",
      "SCALE_GOOD_CAMPAIGN_DUPLICATION",
      "SCALE_GOOD_CAMPAIGN_SMB",
      "SCALE_GOOD_CAMPAIGN_V2_DUPLICATION",
      "SCALE_GOOD_CTX_CAMPAIGN",
      "SEASONAL_CAMPAIGNS",
      "SEMANTIC_BASED_AUDIENCE_DUPLICATION",
      "SEMANTIC_BASED_AUDIENCE_EXPANSION",
      "SETUP_PIXEL",
      "SHOPS_ADS",
      "SHOPS_ADS_DUPLICATION",
      "SHOPS_ADS_SAOFF",
      "SHOPS_ADS_TRAFFIC_CAP_SETTINGS",
      "SHOP_ADS_V2",
      "SIGNALS_DOWN_FUNNEL_EVENT_OPTIMIZATION",
      "SIGNALS_GROWTH_CAPI",
      "SIGNALS_GROWTH_CAPI_PRECREATE",
      "SIGNALS_GROWTH_CAPI_TABLE",
      "SIGNALS_GROWTH_CAPI_V2",
      "SIMILAR_ADVERTISER_BUDGET_RECOMMENDATION",
      "SITE_EXTENSIONS_DUPLICATION",
      "SIX_PLUS_MANUAL_PLACEMENTS",
      "SIX_PLUS_PLACEMENTS_DUPLICATION",
      "SPEND_LIMIT",
      "SYD_TEST_MODE",
      "TAILORED_LEAD_AD_CAMPAIGN",
      "TAILORED_MESSAGES_CAMPAIGN",
      "TARGETING_CREATIVE_FRAGMENTATION",
      "THREECO_WEB_PLUS_APP_UPSELL",
      "TLA_CREATION_PACKAGE",
      "TOP_ADSETS_WITH_ADS_UNDER_CAP",
      "TOP_CAMPAIGNS_WITH_ADS_UNDER_CAP",
      "TWO_P_GUIDANCE_CARD_AAA",
      "TWO_P_GUIDANCE_CARD_AUTO_PLACEMENT",
      "TWO_P_GUIDANCE_CARD_CBO_OFF",
      "TWO_P_GUIDANCE_CARD_CTM_PREFLIGHT",
      "UNCROP_IMAGE",
      "UNECONOMICAL_ADS_THROTTLING",
      "UNIFIED_INBOX",
      "UNUSED_BUDGET",
      "VALUE_DIAGNOSTICS_GUIDANCE",
      "VALUE_OPTIMIZATION_GOAL",
      "VALUE_RULES_GUIDANCE",
      "VIDEO_LENGTH",
      "VIDEO_VIEWS_UPSELL",
      "VIDEO_VIEWS_UPSELL_PRECREATE",
      "VO_VT_1D_DEFAULTING",
      "WA_MESSAGING_PARTNERS",
      "WA_MESSAGING_PARTNERS_PRECREATE",
      "WEB_ENGAGED_VIEW_CONVERSIONS",
      "WTWA_UPSELL_IN_DUPLICATION",
      "WTWA_UPSELL_IN_SYD_AND_AM_TABLE",
      "ZERO_CONVERSION",
      "ZERO_IMPRESSION",
      "ZERO_OUTCOME_BUDGET",
    ]


    field :actor_id, 'string'
    field :actor_name, 'string'
    field :ad_limit_scope_business, 'Business'
    field :ad_limit_scope_business_manager_id, 'string'
    field :ad_limit_set_by_page_admin, 'int'
    field :ads_running_or_in_review_count, 'int'
    field :ads_running_or_in_review_count_subject_to_limit_set_by_page, 'int'
    field :current_account_ads_running_or_in_review_count, 'int'
    field :future_limit_activation_date, 'string'
    field :future_limit_on_ads_running_or_in_review, 'int'
    field :limit_on_ads_running_or_in_review, 'int'
    field :recommendations, { list: 'object' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
