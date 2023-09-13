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
      "ACO_TOGGLE",
      "ADS_REPORTING",
      "ADVANTAGE_PLUS_CREATIVE",
      "AD_OBJECTIVE",
      "AEM_V2_INELIGIBLE",
      "AGGREGATED_BID_LIMITED",
      "AGGREGATED_BUDGET_LIMITED",
      "AGGREGATED_COST_LIMITED",
      "AUCTION_OVERLAP",
      "AUCTION_OVERLAP_CONSOLIDATION",
      "AUDIENCE_EXPANSION",
      "AUTOFLOW_OPT_IN",
      "AUTOMATIC_PLACEMENTS",
      "AUTO_BID",
      "BROAD_TARGETING",
      "CAPI",
      "CONNECT_FACEBOOK_PAGE_TO_INSTAGRAM",
      "CONNECT_FACEBOOK_PAGE_TO_WHATSAPP",
      "COST_GOAL",
      "COST_GOAL_BUDGET_LIMITED",
      "COST_GOAL_CPA_LIMITED",
      "CREATIVE_BADGE",
      "CREATIVE_FATIGUE",
      "CREATIVE_FATIGUE_HOURLY",
      "CREATIVE_LIMITED",
      "CREATIVE_LIMITED_HOURLY",
      "DEAD_LINK",
      "ECOSYSTEM_BID_REDUCE_L1_CARDINALITY",
      "FRAGMENTATION",
      "GES_TEST",
      "LEARNING_LIMITED",
      "LOW_OUTCOME",
      "MMT_CAROUSEL_TO_VIDEO",
      "MOBILE_FIRST_VIDEO",
      "MULTI_TEXT",
      "MUSIC",
      "OPTIMAL_SPEND",
      "PAYMENT_METHOD",
      "PFR_L1_INLINE_MMT",
      "PREDICTIVE_CREATIVE_LIMITED",
      "PREDICTIVE_CREATIVE_LIMITED_HOURLY",
      "REVERT",
      "SCALE_GOOD_CAMPAIGN",
      "SEMANTIC_BASED_AUDIENCE_EXPANSION",
      "SETUP_PIXEL",
      "SHOPS_ADS",
      "SIGNALS_GROWTH_CAPI",
      "SIX_PLUS_MANUAL_PLACEMENTS",
      "SPEND_LIMIT",
      "SYD_TEST_MODE",
      "TOP_ADSETS_WITH_ADS_UNDER_CAP",
      "TOP_CAMPAIGNS_WITH_ADS_UNDER_CAP",
      "UNECONOMICAL_ADS_THROTTLING",
      "UNUSED_BUDGET",
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
