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
      "LOWEST_COST_WITHOUT_CAP",
      "LOWEST_COST_WITH_BID_CAP",
      "TARGET_COST",
    ]

    BID_STRATEGY_OLD = [
      "LOWEST_COST_WITHOUT_CAP",
      "LOWEST_COST_WITH_BID_CAP",
      "TARGET_COST",
    ]

    BILLING_EVENT_NEW = [
      "APP_INSTALLS",
      "CLICKS",
      "IMPRESSIONS",
      "LINK_CLICKS",
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "VIDEO_VIEWS",
    ]

    BILLING_EVENT_OLD = [
      "APP_INSTALLS",
      "CLICKS",
      "IMPRESSIONS",
      "LINK_CLICKS",
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "VIDEO_VIEWS",
    ]

    OPTIMIZATION_GOAL_NEW = [
      "NONE",
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "AD_RECALL_LIFT",
      "CLICKS",
      "ENGAGED_USERS",
      "EVENT_RESPONSES",
      "IMPRESSIONS",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "OFFER_CLAIMS",
      "OFFSITE_CONVERSIONS",
      "PAGE_ENGAGEMENT",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "REACH",
      "SOCIAL_IMPRESSIONS",
      "VIDEO_VIEWS",
      "APP_DOWNLOADS",
      "LANDING_PAGE_VIEWS",
      "VALUE",
      "REPLIES",
    ]

    OPTIMIZATION_GOAL_OLD = [
      "NONE",
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "AD_RECALL_LIFT",
      "CLICKS",
      "ENGAGED_USERS",
      "EVENT_RESPONSES",
      "IMPRESSIONS",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "OFFER_CLAIMS",
      "OFFSITE_CONVERSIONS",
      "PAGE_ENGAGEMENT",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "REACH",
      "SOCIAL_IMPRESSIONS",
      "VIDEO_VIEWS",
      "APP_DOWNLOADS",
      "LANDING_PAGE_VIEWS",
      "VALUE",
      "REPLIES",
    ]

    CHANGED_ALL = [
      "AUTO_CREATE_LOOKALIKE",
      "BID_ADJUSTMENTS_SPEC",
      "BID_AMOUNT",
      "BID_CONSTRAINTS",
      "BID_INFO",
      "BID_STRATEGY",
      "BID_TYPE",
      "BILLING_EVENT",
      "BRANDE_AUDIENCE_ID",
      "BUDGET_LIMIT",
      "CREATED_TIME",
      "DAILY_IMPRESSIONS",
      "DELIVERY_BEHAVIOR",
      "DESTINATION_TYPE",
      "DCO_MODE",
      "FREQUENCY_CAP",
      "FREQUENCY_CAP_RESET_PERIOD",
      "FRIENDLY_NAME",
      "INVOICING_LIMIT",
      "IS_AUTOBID",
      "IS_AVERAGE_PRICE_PACING",
      "LIFETIME_CONVERSIONS",
      "LIFETIME_FREQUENCY_CAP",
      "LIFETIME_IMPRESSIONS",
      "LIFETIME_REACH",
      "MIN_SPEND_TARGET",
      "OPTIMIZATION_GOAL",
      "OPTIMIZATION_SUBEVENT",
      "PACING_TYPE",
      "RUN_STATUS",
      "SCHEDULE",
      "SPEND_CAP",
      "START_TIME",
      "STOP_TIME",
      "TARGETING",
      "TARGETING_EXPANSION",
    ]

    CHANGED_ANY = [
      "AUTO_CREATE_LOOKALIKE",
      "BID_ADJUSTMENTS_SPEC",
      "BID_AMOUNT",
      "BID_CONSTRAINTS",
      "BID_INFO",
      "BID_STRATEGY",
      "BID_TYPE",
      "BILLING_EVENT",
      "BRANDE_AUDIENCE_ID",
      "BUDGET_LIMIT",
      "CREATED_TIME",
      "DAILY_IMPRESSIONS",
      "DELIVERY_BEHAVIOR",
      "DESTINATION_TYPE",
      "DCO_MODE",
      "FREQUENCY_CAP",
      "FREQUENCY_CAP_RESET_PERIOD",
      "FRIENDLY_NAME",
      "INVOICING_LIMIT",
      "IS_AUTOBID",
      "IS_AVERAGE_PRICE_PACING",
      "LIFETIME_CONVERSIONS",
      "LIFETIME_FREQUENCY_CAP",
      "LIFETIME_IMPRESSIONS",
      "LIFETIME_REACH",
      "MIN_SPEND_TARGET",
      "OPTIMIZATION_GOAL",
      "OPTIMIZATION_SUBEVENT",
      "PACING_TYPE",
      "RUN_STATUS",
      "SCHEDULE",
      "SPEND_CAP",
      "START_TIME",
      "STOP_TIME",
      "TARGETING",
      "TARGETING_EXPANSION",
    ]


    field :auto_create_lookalike_new, 'bool'
    field :auto_create_lookalike_old, 'bool'
    field :bid_adjustments_spec_new, 'string'
    field :bid_adjustments_spec_old, 'string'
    field :bid_amount_new, 'int'
    field :bid_amount_old, 'int'
    field :bid_constraints_new, 'object'
    field :bid_constraints_old, 'object'
    field :bid_info_new, { list: 'object' }
    field :bid_info_old, { list: 'object' }
    field :bid_strategy_new, { enum: -> { BID_STRATEGY_NEW }}
    field :bid_strategy_old, { enum: -> { BID_STRATEGY_OLD }}
    field :bid_type_new, 'string'
    field :bid_type_old, 'string'
    field :billing_event_new, { enum: -> { BILLING_EVENT_NEW }}
    field :billing_event_old, { enum: -> { BILLING_EVENT_OLD }}
    field :brande_audience_id_new, 'string'
    field :brande_audience_id_old, 'string'
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
    field :updated_time_new, 'datetime'
    field :updated_time_old, 'datetime'
    has_no_post
    has_no_delete

  end
end
