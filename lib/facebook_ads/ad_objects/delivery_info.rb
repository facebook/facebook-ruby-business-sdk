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

  class DeliveryInfo < AdObject

    field :active_accelerated_campaign_count, 'int'
    field :active_day_parted_campaign_count, 'int'
    field :active_rotated_campaign_count, 'int'
    field :are_all_daily_budgets_spent, 'bool'
    field :completed_campaign_count, 'int'
    field :credit_needed_ads_count, 'int'
    field :delivery_insight, 'object'
    field :delivery_insights, { list: 'object' }
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
    field :is_campaign_rotated, 'bool'
    field :is_campaign_scheduled, 'bool'
    field :is_clickbait_penalized, 'bool'
    field :is_daily_budget_spent, 'bool'
    field :is_reach_and_frequency_misconfigured, 'bool'
    field :is_split_test_active, 'bool'
    field :is_split_test_valid, 'bool'
    field :lift_study_time_period, 'string'
    field :limited_campaign_count, 'int'
    field :limited_campaign_ids, { list: 'string' }
    field :needs_credit, 'bool'
    field :needs_tax_number, 'bool'
    field :non_deleted_ads_count, 'int'
    field :not_delivering_campaign_count, 'int'
    field :pending_ads_count, 'int'
    field :reach_frequency_campaign_underdelivery_reason, 'string'
    field :rejected_ads_count, 'int'
    field :scheduled_campaign_count, 'int'
    field :start_time, 'datetime'
    field :status, 'string'
    field :text_penalty_level, 'string'
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
