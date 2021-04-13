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

  class AdCampaignActivity < AdObject
    BID_STRATEGY_NEW = [
      "COST_CAP",
      "LOWEST_COST_WITHOUT_CAP",
      "LOWEST_COST_WITH_BID_CAP",
    ]

    BID_STRATEGY_OLD = [
      "COST_CAP",
      "LOWEST_COST_WITHOUT_CAP",
      "LOWEST_COST_WITH_BID_CAP",
    ]

    BILLING_EVENT_NEW = [
      "APP_INSTALLS",
      "CLICKS",
      "IMPRESSIONS",
      "LINK_CLICKS",
      "LISTING_INTERACTION",
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PURCHASE",
      "THRUPLAY",
    ]

    BILLING_EVENT_OLD = [
      "APP_INSTALLS",
      "CLICKS",
      "IMPRESSIONS",
      "LINK_CLICKS",
      "LISTING_INTERACTION",
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PURCHASE",
      "THRUPLAY",
    ]

    OPTIMIZATION_GOAL_NEW = [
      "AD_RECALL_LIFT",
      "APP_DOWNLOADS",
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "CLICKS",
      "DERIVED_EVENTS",
      "ENGAGED_USERS",
      "EVENT_RESPONSES",
      "IMPRESSIONS",
      "LANDING_PAGE_VIEWS",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "NONE",
      "OFFER_CLAIMS",
      "OFFSITE_CONVERSIONS",
      "PAGE_ENGAGEMENT",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "QUALITY_CALL",
      "QUALITY_LEAD",
      "REACH",
      "REPLIES",
      "SOCIAL_IMPRESSIONS",
      "THRUPLAY",
      "TWO_SECOND_CONTINUOUS_VIDEO_VIEWS",
      "VALUE",
      "VISIT_INSTAGRAM_PROFILE",
    ]

    OPTIMIZATION_GOAL_OLD = [
      "AD_RECALL_LIFT",
      "APP_DOWNLOADS",
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "CLICKS",
      "DERIVED_EVENTS",
      "ENGAGED_USERS",
      "EVENT_RESPONSES",
      "IMPRESSIONS",
      "LANDING_PAGE_VIEWS",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "NONE",
      "OFFER_CLAIMS",
      "OFFSITE_CONVERSIONS",
      "PAGE_ENGAGEMENT",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "QUALITY_CALL",
      "QUALITY_LEAD",
      "REACH",
      "REPLIES",
      "SOCIAL_IMPRESSIONS",
      "THRUPLAY",
      "TWO_SECOND_CONTINUOUS_VIDEO_VIEWS",
      "VALUE",
      "VISIT_INSTAGRAM_PROFILE",
    ]


    field :auto_create_lookalike_new, 'bool'
    field :auto_create_lookalike_old, 'bool'
    field :bid_adjustments_spec_new, 'string'
    field :bid_adjustments_spec_old, 'string'
    field :bid_amount_new, 'int'
    field :bid_amount_old, 'int'
    field :bid_constraints_new, 'object'
    field :bid_constraints_old, 'object'
    field :bid_info_new, 'hash'
    field :bid_info_old, 'hash'
    field :bid_strategy_new, { enum: -> { BID_STRATEGY_NEW }}
    field :bid_strategy_old, { enum: -> { BID_STRATEGY_OLD }}
    field :bid_type_new, 'string'
    field :bid_type_old, 'string'
    field :billing_event_new, { enum: -> { BILLING_EVENT_NEW }}
    field :billing_event_old, { enum: -> { BILLING_EVENT_OLD }}
    field :budget_limit_new, 'object'
    field :budget_limit_old, 'object'
    field :created_time, 'datetime'
    field :daily_impressions_new, 'int'
    field :daily_impressions_old, 'int'
    field :dco_mode_new, 'string'
    field :dco_mode_old, 'string'
    field :delivery_behavior_new, 'string'
    field :delivery_behavior_old, 'string'
    field :destination_type_new, 'string'
    field :destination_type_old, 'string'
    field :event_time, 'datetime'
    field :event_type, 'string'
    field :id, 'string'
    field :invoicing_limit_new, 'int'
    field :invoicing_limit_old, 'int'
    field :min_spend_target_new, 'object'
    field :min_spend_target_old, 'object'
    field :name_new, 'string'
    field :name_old, 'string'
    field :optimization_goal_new, { enum: -> { OPTIMIZATION_GOAL_NEW }}
    field :optimization_goal_old, { enum: -> { OPTIMIZATION_GOAL_OLD }}
    field :pacing_type_new, 'int'
    field :pacing_type_old, 'int'
    field :promoted_object_id_new, 'string'
    field :promoted_object_id_old, 'string'
    field :run_status_new, 'string'
    field :run_status_old, 'string'
    field :schedule_new, { list: 'object' }
    field :schedule_old, { list: 'object' }
    field :spend_cap_new, 'object'
    field :spend_cap_old, 'object'
    field :start_time_new, 'datetime'
    field :start_time_old, 'datetime'
    field :stop_time_new, 'datetime'
    field :stop_time_old, 'datetime'
    field :targeting_expansion_new, 'object'
    field :targeting_expansion_old, 'object'
    field :targeting_new, 'object'
    field :targeting_old, 'object'
    field :updated_time_new, 'datetime'
    field :updated_time_old, 'datetime'
    has_no_post
    has_no_delete

  end
end
