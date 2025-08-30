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

  class DeliveryInfo < AdObject

    field :active_accelerated_campaign_count, 'int'
    field :active_day_parted_campaign_count, 'int'
    field :ad_penalty_map, { list: 'hash' }
    field :are_all_daily_budgets_spent, 'bool'
    field :credit_needed_ads_count, 'int'
    field :eligible_for_delivery_insights, 'bool'
    field :end_time, 'datetime'
    field :has_account_hit_spend_limit, 'bool'
    field :has_campaign_group_hit_spend_limit, 'bool'
    field :has_no_active_ads, 'bool'
    field :has_no_ads, 'bool'
    field :inactive_ads_count, 'int'
    field :inactive_campaign_count, 'int'
    field :is_account_closed, 'bool'
    field :is_account_disabled, 'bool'
    field :is_ad_uneconomical, 'bool'
    field :is_adfarm_penalized, 'bool'
    field :is_adgroup_partially_rejected, 'bool'
    field :is_campaign_accelerated, 'bool'
    field :is_campaign_completed, 'bool'
    field :is_campaign_day_parted, 'bool'
    field :is_campaign_disabled, 'bool'
    field :is_campaign_group_disabled, 'bool'
    field :is_clickbait_penalized, 'bool'
    field :is_daily_budget_spent, 'bool'
    field :is_engagement_bait_penalized, 'bool'
    field :is_lqwe_penalized, 'bool'
    field :is_reach_and_frequency_misconfigured, 'bool'
    field :is_sensationalism_penalized, 'bool'
    field :is_split_test_active, 'bool'
    field :is_split_test_valid, 'bool'
    field :lift_study_time_period, 'string'
    field :needs_credit, 'bool'
    field :needs_tax_number, 'bool'
    field :non_deleted_ads_count, 'int'
    field :not_delivering_campaign_count, 'int'
    field :pending_ads_count, 'int'
    field :reach_frequency_campaign_underdelivery_reason, 'string'
    field :rejected_ads_count, 'int'
    field :start_time, 'datetime'
    field :status, 'string'
    field :text_penalty_level, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
