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
      "ADVANTAGE_PLUS_AUDIENCE_FRICTION",
      "ADVANTAGE_PLUS_AUDIENCE_TOGGLE",
      "ADVANTAGE_PLUS_CREATIVE",
      "ADVANTAGE_PLUS_CREATIVE_CATALOG",
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
      "ASC_BUDGET_OPTIMIZATION_PFR",
      "ASPECT_RATIO",
      "ATLEAST_6_PLACEMENTS",
      "AUCTION_OVERLAP",
      "AUCTION_OVERLAP_CONSOLIDATION",
      "AUDIENCE_EXPANSION",
      "AUDIENCE_EXPANSION_RETARGETING",
      "AUDIENCE_LEARNING_LIMITED",
      "AUTOFLOW_OPT_IN",
      "AUTOFLOW_OPT_IN_FALLBACK_DUPLICATION_FLOW",
      "AUTOMATIC_PLACEMENTS",
      "AUTO_BID",
      "BROAD_TARGETING",
      "CAPI",
      "CAPI_PERFORMANCE_MATCH_KEY",
      "CASH_REWARDS_OPT_IN",
      "CONNECT_FACEBOOK_PAGE_TO_INSTAGRAM",
      "CONNECT_FACEBOOK_PAGE_TO_WHATSAPP",
      "COST_GOAL",
      "COST_GOAL_BUDGET_LIMITED",
      "COST_GOAL_CPA_LIMITED",
      "COST_PER_RESULT",
      "CREATION_PACKAGE_UPGRADE_TO_ASC",
      "CREATION_PACKAGE_UPGRADE_TO_TLA",
      "CREATIVE_BADGE",
      "CREATIVE_DIVERSITY",
      "CREATIVE_FATIGUE",
      "CREATIVE_FATIGUE_HOURLY",
      "CREATIVE_LIMITED",
      "CREATIVE_LIMITED_HOURLY",
      "CREATOR_ADS_PA_CONVERSION",
      "CTA",
      "DA_ADVANTAGE_PLUS_CREATIVE_INFO_LABELS",
      "DEAD_LINK",
      "DYNAMIC_ADVANTAGE_CAMPAIGN_BUDGET",
      "ECOSYSTEM_BID_REDUCE_L1_CARDINALITY",
      "FRAGMENTATION",
      "GES_TEST",
      "GUIDANCE_CENTER_CODE_GEN",
      "HIGH_COST",
      "HISTORICAL_BENCHMARK",
      "IG_MULTI_ADS",
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
      "OPTIMAL_BAU",
      "PAYMENT_METHOD",
      "PERFORMANT_CREATIVE_REELS_OPT_IN",
      "PFR_L1_INLINE_MMT",
      "PREDICTIVE_CREATIVE_LIMITED",
      "PREDICTIVE_CREATIVE_LIMITED_HOURLY",
      "RAPID_LEARNING_LIMITED",
      "RAPID_LEARNING_PHASE",
      "REELS_DUPLICATION_UPSELL",
      "REVERT",
      "SCALE_GOOD_CAMPAIGN",
      "SEMANTIC_BASED_AUDIENCE_EXPANSION",
      "SETUP_PIXEL",
      "SHOPS_ADS",
      "SIGNALS_GROWTH_CAPI",
      "SIGNALS_GROWTH_CAPI_TABLE",
      "SIX_PLUS_MANUAL_PLACEMENTS",
      "SPEND_LIMIT",
      "SYD_TEST_MODE",
      "TAILORED_LEAD_AD_CAMPAIGN",
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
