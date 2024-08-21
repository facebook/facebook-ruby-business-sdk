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
      "ACCOUNT_SPEND_LIMIT",
      "ACO_TOGGLE",
      "ADS_REPORTING",
      "ADVANCED_CAMPAIGN_BUDGET",
      "ADVANTAGE_APP_CAMPAIGN",
      "ADVANTAGE_CUSTOM_AUDIENCE",
      "ADVANTAGE_CUSTOM_AUDIENCE_UPSELL",
      "ADVANTAGE_DETAILED_TARGETING",
      "ADVANTAGE_LOOKALIKE_AUDIENCE",
      "ADVANTAGE_PLUS_AUDIENCE",
      "ADVANTAGE_PLUS_AUDIENCE_DUPLICATION",
      "ADVANTAGE_PLUS_AUDIENCE_FRICTION",
      "ADVANTAGE_PLUS_AUDIENCE_TOGGLE",
      "ADVANTAGE_PLUS_CAMPAIGN_BUDGET",
      "ADVANTAGE_PLUS_CREATIVE",
      "ADVANTAGE_PLUS_CREATIVE_CATALOG",
      "ADVANTAGE_PLUS_CREATIVE_SE",
      "ADVANTAGE_PLUS_PLACEMENTS_DUPLICATION",
      "ADVANTAGE_PLUS_PLACEMENTS_FRICTION",
      "ADVANTAGE_SHOPPING_CAMPAIGN",
      "ADVANTAGE_SHOPPING_CAMPAIGN_FRAGMENTATION",
      "AD_OBJECTIVE",
      "AEM_V2_INELIGIBLE",
      "AGGREGATED_BID_LIMITED",
      "AGGREGATED_BUDGET_LIMITED",
      "AGGREGATED_COST_LIMITED",
      "APP_AEM_V2_INSTALLATION_PROMOTION",
      "ASC_BUDGET_OPTIMIZATION",
      "ASC_CREATION_PACKAGE",
      "ASC_FRAGMENTATION_V2",
      "ASPECT_RATIO",
      "ATLEAST_6_PLACEMENTS",
      "AUCTION_OVERLAP",
      "AUCTION_OVERLAP_CONSOLIDATION",
      "AUDIENCE_EXPANSION",
      "AUDIENCE_EXPANSION_GEORADIUS",
      "AUDIENCE_EXPANSION_RETARGETING",
      "AUDIENCE_LEARNING_LIMITED",
      "AUTOFLOW_OPT_IN",
      "AUTOFLOW_OPT_IN_FALLBACK_DUPLICATION_FLOW",
      "AUTOFLOW_OPT_IN_V2",
      "AUTOMATIC_PLACEMENTS",
      "AUTOMATIC_PLACEMENTS_V2",
      "AUTO_BID",
      "BLENDED_ADS",
      "BROAD_TARGETING",
      "BUDGET_LIMITED",
      "CAPI",
      "CAPI_PERFORMANCE_MATCH_KEY",
      "CAPI_PERFORMANCE_MATCH_KEY_V2",
      "CASH_REWARDS_OPT_IN",
      "CONNECTED_SOURCES",
      "CONNECT_FACEBOOK_PAGE_TO_INSTAGRAM",
      "CONNECT_FACEBOOK_PAGE_TO_WHATSAPP",
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
      "CREATIVE_FATIGUE_HOURLY",
      "CREATIVE_LIMITED",
      "CREATIVE_LIMITED_HOURLY",
      "CREATOR_ADS_PA_CONVERSION",
      "CTA",
      "CTX_BUDGET_OPTIMIZATION",
      "CTX_CREATION_PACKAGE",
      "CTX_GUIDANCE",
      "DA_ADVANTAGE_PLUS_CREATIVE_INFO_LABELS",
      "DA_DUPLICATION_PRODUCT_TAGS",
      "DEAD_LINK",
      "DEFRAGMENTATION_ACB",
      "DYNAMIC_ADVANTAGE_CAMPAIGN_BUDGET",
      "ECOSYSTEM_BID_REDUCE_L1_CARDINALITY",
      "EVC_APP_DUPLICATION_UPGRADE",
      "EVC_WEB_DUPLICATION_UPGRADE",
      "FRAGMENTATION",
      "FRAGMENTATION_V2",
      "GES_TEST",
      "GUIDANCE_CENTER_CODE_GEN",
      "HEURISTIC_DEFAULT_DURATION",
      "HIGH_COST",
      "HISTORICAL_BENCHMARK",
      "IG_MULTI_ADS",
      "LEAD_ADS_GUIDANCE",
      "LEARNING_LIMITED",
      "LEARNING_PAUSE_FRICTION",
      "LEARNING_PHASE_BUDGET_EDITS",
      "LOW_OUTCOME",
      "MERLIN_GUIDANCE",
      "MIXED_PA_COMBINE_ADSETS",
      "MMT_CAROUSEL_TO_VIDEO",
      "MOBILE_FIRST_VIDEO",
      "MR_AEMV2SUB_KCONSOLIDATION",
      "MULTI_TEXT",
      "MUSIC",
      "NOT_APPLICABLE",
      "NO_DELIVERY_STATUS",
      "OPTIMAL_BAU",
      "PAYMENT_METHOD",
      "PERFORMANT_CREATIVE_REELS_OPT_IN",
      "PFR_L1_INLINE_MMT",
      "PIXEL_UPSELL",
      "PREDICTIVE_CREATIVE_LIMITED",
      "PREDICTIVE_CREATIVE_LIMITED_HOURLY",
      "PREPARING_STATUS",
      "PURCHASE_OPTIMIZATION",
      "RAPID_LEARNING_LIMITED",
      "RAPID_LEARNING_PHASE",
      "REELS_DUPLICATION_UPSELL",
      "REELS_PLACEMENT",
      "REVERT",
      "SCALE_GOOD_CAMPAIGN",
      "SEMANTIC_BASED_AUDIENCE_EXPANSION",
      "SETUP_PIXEL",
      "SHOPS_ADS",
      "SHOPS_ADS_DUPLICATION",
      "SIGNALS_GROWTH_CAPI",
      "SIGNALS_GROWTH_CAPI_TABLE",
      "SIGNALS_GROWTH_CAPI_V2",
      "SIMILAR_ADVERTISER_BUDGET_RECOMMENDATION",
      "SIX_PLUS_MANUAL_PLACEMENTS",
      "SPEND_LIMIT",
      "SYD_TEST_MODE",
      "TAILORED_LEAD_AD_CAMPAIGN",
      "TAILORED_MESSAGES_CAMPAIGN",
      "TLA_CREATION_PACKAGE",
      "TOP_ADSETS_WITH_ADS_UNDER_CAP",
      "TOP_CAMPAIGNS_WITH_ADS_UNDER_CAP",
      "TWO_P_GUIDANCE_CARD_AAA",
      "TWO_P_GUIDANCE_CARD_AUTO_PLACEMENT",
      "TWO_P_GUIDANCE_CARD_CBO_OFF",
      "TWO_P_GUIDANCE_CARD_CTM_PREFLIGHT",
      "UNCROP_IMAGE",
      "UNECONOMICAL_ADS_THROTTLING",
      "UNUSED_BUDGET",
      "VIDEO_LENGTH",
      "ZERO_CONVERSION",
      "ZERO_IMPRESSION",
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
