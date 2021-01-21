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

  class AdActivity < AdObject
    EVENT_TYPE = [
      "account_spending_limit_reached",
      "ad_account_add_user_to_role",
      "ad_account_billing_charge",
      "ad_account_billing_charge_failed",
      "ad_account_billing_chargeback",
      "ad_account_billing_chargeback_reversal",
      "ad_account_billing_decline",
      "ad_account_billing_refund",
      "ad_account_remove_spend_limit",
      "ad_account_remove_user_from_role",
      "ad_account_reset_spend_limit",
      "ad_account_set_business_information",
      "ad_account_update_spend_limit",
      "ad_account_update_status",
      "ad_review_approved",
      "ad_review_declined",
      "add_funding_source",
      "add_images",
      "billing_event",
      "campaign_ended",
      "campaign_spending_limit_reached",
      "conversion_event_updated",
      "create_ad",
      "create_ad_set",
      "create_audience",
      "create_campaign_group",
      "create_campaign_legacy",
      "delete_audience",
      "delete_images",
      "di_ad_set_learning_stage_exit",
      "edit_and_update_ad_creative",
      "edit_images",
      "first_delivery_event",
      "funding_event_initiated",
      "funding_event_successful",
      "lifetime_budget_spent",
      "receive_audience",
      "remove_funding_source",
      "remove_shared_audience",
      "share_audience",
      "unknown",
      "unshare_audience",
      "update_ad_bid_info",
      "update_ad_bid_type",
      "update_ad_creative",
      "update_ad_friendly_name",
      "update_ad_labels",
      "update_ad_run_status",
      "update_ad_run_status_to_be_set_after_review",
      "update_ad_set_ad_keywords",
      "update_ad_set_bid_adjustments",
      "update_ad_set_bid_strategy",
      "update_ad_set_bidding",
      "update_ad_set_budget",
      "update_ad_set_duration",
      "update_ad_set_learning_stage_status",
      "update_ad_set_min_spend_target",
      "update_ad_set_name",
      "update_ad_set_optimization_goal",
      "update_ad_set_run_status",
      "update_ad_set_spend_cap",
      "update_ad_set_target_spec",
      "update_ad_targets_spec",
      "update_adgroup_stop_delivery",
      "update_audience",
      "update_campaign_ad_scheduling",
      "update_campaign_budget",
      "update_campaign_budget_optimization_toggling_status",
      "update_campaign_delivery_type",
      "update_campaign_group_ad_scheduling",
      "update_campaign_group_delivery_type",
      "update_campaign_group_spend_cap",
      "update_campaign_name",
      "update_campaign_run_status",
      "update_campaign_schedule",
      "update_delivery_type_cross_level_shift",
    ]

    CATEGORY = [
      "ACCOUNT",
      "AD",
      "AD_KEYWORDS",
      "AD_SET",
      "AUDIENCE",
      "BID",
      "BUDGET",
      "CAMPAIGN",
      "DATE",
      "STATUS",
      "TARGETING",
    ]

    DATA_SOURCE = [
      "CALYPSO",
      "TAO",
    ]


    field :actor_id, 'string'
    field :actor_name, 'string'
    field :application_id, 'string'
    field :application_name, 'string'
    field :date_time_in_timezone, 'string'
    field :event_time, 'datetime'
    field :event_type, { enum: -> { EVENT_TYPE }}
    field :extra_data, 'string'
    field :object_id, 'string'
    field :object_name, 'string'
    field :object_type, 'string'
    field :translated_event_type, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
