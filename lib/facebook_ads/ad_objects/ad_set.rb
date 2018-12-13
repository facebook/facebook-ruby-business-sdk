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

  class AdSet < AdObject
    BID_STRATEGY = [
      "LOWEST_COST_WITHOUT_CAP",
      "LOWEST_COST_WITH_BID_CAP",
      "TARGET_COST",
    ]

    BILLING_EVENT = [
      "APP_INSTALLS",
      "CLICKS",
      "IMPRESSIONS",
      "LINK_CLICKS",
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "VIDEO_VIEWS",
      "THRUPLAY",
    ]

    CONFIGURED_STATUS = [
      "ACTIVE",
      "PAUSED",
      "DELETED",
      "ARCHIVED",
    ]

    EFFECTIVE_STATUS = [
      "ACTIVE",
      "PAUSED",
      "DELETED",
      "PENDING_REVIEW",
      "DISAPPROVED",
      "PREAPPROVED",
      "PENDING_BILLING_INFO",
      "CAMPAIGN_PAUSED",
      "ARCHIVED",
      "ADSET_PAUSED",
      "WITH_ISSUES",
    ]

    OPTIMIZATION_GOAL = [
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
      "THRUPLAY",
      "REPLIES",
      "DERIVED_EVENTS",
    ]

    STATUS = [
      "ACTIVE",
      "PAUSED",
      "DELETED",
      "ARCHIVED",
    ]

    DATE_PRESET = [
      "today",
      "yesterday",
      "this_month",
      "last_month",
      "this_quarter",
      "lifetime",
      "last_3d",
      "last_7d",
      "last_14d",
      "last_28d",
      "last_30d",
      "last_90d",
      "last_week_mon_sun",
      "last_week_sun_sat",
      "last_quarter",
      "last_year",
      "this_week_mon_today",
      "this_week_sun_today",
      "this_year",
    ]

    DESTINATION_TYPE = [
      "UNDEFINED",
      "WEBSITE",
      "APP",
      "MESSENGER",
      "APPLINKS_AUTOMATIC",
    ]

    EXECUTION_OPTIONS = [
      "validate_only",
      "include_recommendations",
    ]

    FULL_FUNNEL_EXPLORATION_MODE = [
      "NONE_EXPLORATION",
      "LIMITED_EXPLORATION",
      "EXTENDED_EXPLORATION",
    ]

    OPERATOR = [
      "ALL",
      "ANY",
    ]

    STATUS_OPTION = [
      "ACTIVE",
      "PAUSED",
      "INHERITED_FROM_SOURCE",
    ]


    field :account_id, 'string'
    field :ad_keywords, 'string'
    field :adlabels, { list: 'AdLabel' }
    field :adset_schedule, { list: 'DayPart' }
    field :asset_feed_id, 'string'
    field :attribution_spec, { list: 'AttributionSpec' }
    field :best_creative, 'AdDynamicCreative'
    field :bid_adjustments, 'AdBidAdjustments'
    field :bid_amount, 'int'
    field :bid_constraints, 'AdCampaignBidConstraint'
    field :bid_info, 'map<string, unsigned int>'
    field :bid_strategy, { enum: -> { BID_STRATEGY }}
    field :billing_event, { enum: -> { BILLING_EVENT }}
    field :budget_remaining, 'string'
    field :campaign, 'Campaign'
    field :campaign_id, 'string'
    field :configured_status, { enum: -> { CONFIGURED_STATUS }}
    field :created_time, 'datetime'
    field :creative_sequence, { list: 'string' }
    field :daily_budget, 'string'
    field :daily_min_spend_target, 'string'
    field :daily_spend_cap, 'string'
    field :destination_type, 'string'
    field :effective_status, { enum: -> { EFFECTIVE_STATUS }}
    field :end_time, 'datetime'
    field :frequency_control_specs, { list: 'AdCampaignFrequencyControlSpecs' }
    field :full_funnel_exploration_mode, 'string'
    field :id, 'string'
    field :instagram_actor_id, 'string'
    field :is_dynamic_creative, 'bool'
    field :issues_info, { list: 'AdCampaignIssuesInfo' }
    field :lifetime_budget, 'string'
    field :lifetime_imps, 'int'
    field :lifetime_min_spend_target, 'string'
    field :lifetime_spend_cap, 'string'
    field :name, 'string'
    field :optimization_goal, { enum: -> { OPTIMIZATION_GOAL }}
    field :pacing_type, { list: 'string' }
    field :promoted_object, 'AdPromotedObject'
    field :recommendations, { list: 'AdRecommendation' }
    field :recurring_budget_semantics, 'bool'
    field :review_feedback, 'string'
    field :rf_prediction_id, 'string'
    field :source_adset, 'AdSet'
    field :source_adset_id, 'string'
    field :start_time, 'datetime'
    field :status, { enum: -> { STATUS }}
    field :targeting, 'Targeting'
    field :time_based_ad_rotation_id_blocks, { list: { list: 'int' } }
    field :time_based_ad_rotation_intervals, { list: 'int' }
    field :updated_time, 'datetime'
    field :use_new_app_click, 'bool'
    field :campaign_spec, 'object'
    field :daily_imps, 'int'
    field :date_format, 'string'
    field :execution_options, { list: { enum: -> { EXECUTION_OPTIONS }} }
    field :frequency_cap, 'int'
    field :frequency_cap_reset_period, 'int'
    field :is_autobid, 'bool'
    field :is_average_price_pacing, 'bool'
    field :lifetime_frequency_cap, 'int'
    field :line_number, 'int'
    field :rb_prediction_id, 'string'
    field :time_start, 'datetime'
    field :time_stop, 'datetime'
    field :topline_id, 'string'
    field :upstream_events, 'hash'

    has_edge :activities do |edge|
      edge.get 'AdActivity' do |api|
        api.has_param :after, 'string'
        api.has_param :limit, 'int'
        api.has_param :since, 'datetime'
        api.has_param :category, { enum: -> { AdActivity::CATEGORY }}
        api.has_param :until, 'datetime'
        api.has_param :uid, 'int'
        api.has_param :business_id, 'string'
      end
    end

    has_edge :ad_studies do |edge|
      edge.get 'AdStudy'
    end

    has_edge :adcreatives do |edge|
      edge.get 'AdCreative'
    end

    has_edge :adlabels do |edge|
      edge.delete do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :execution_options, { list: { enum: %w{validate_only }} }
      end
      edge.post 'AdSet' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :execution_options, { list: { enum: %w{validate_only }} }
      end
    end

    has_edge :adrules_governed do |edge|
      edge.get 'AdRule' do |api|
        api.has_param :pass_evaluation, 'bool'
      end
    end

    has_edge :ads do |edge|
      edge.get 'Ad' do |api|
        api.has_param :include_deleted, 'bool'
        api.has_param :effective_status, { list: 'string' }
        api.has_param :date_preset, { enum: -> { Ad::DATE_PRESET }}
        api.has_param :time_range, 'object'
        api.has_param :updated_since, 'int'
        api.has_param :ad_draft_id, 'string'
      end
    end

    has_edge :asyncadrequests do |edge|
      edge.get 'AdAsyncRequest' do |api|
        api.has_param :statuses, { list: { enum: -> { AdAsyncRequest::STATUSES }} }
      end
    end

    has_edge :copies do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :effective_status, { list: { enum: -> { AdSet::EFFECTIVE_STATUS }} }
        api.has_param :date_preset, { enum: -> { AdSet::DATE_PRESET }}
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'object'
      end
      edge.post 'AdSet' do |api|
        api.has_param :deep_copy, 'bool'
        api.has_param :campaign_id, 'string'
        api.has_param :rename_options, 'object'
        api.has_param :status_option, { enum: -> { AdSet::STATUS_OPTION }}
        api.has_param :start_time, 'datetime'
        api.has_param :end_time, 'datetime'
        api.has_param :create_dco_adset, 'bool'
      end
    end

    has_edge :delivery_estimate do |edge|
      edge.get 'AdCampaignDeliveryEstimate' do |api|
        api.has_param :targeting_spec, 'Targeting'
        api.has_param :optimization_goal, { enum: -> { AdCampaignDeliveryEstimate::OPTIMIZATION_GOAL }}
        api.has_param :promoted_object, 'object'
      end
    end

    has_edge :insights do |edge|
      edge.get 'AdsInsights' do |api|
        api.has_param :default_summary, 'bool'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :summary, { list: 'string' }
        api.has_param :sort, { list: 'string' }
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
        api.has_param :use_account_attribution_setting, 'bool'
      end
      edge.post 'AdReportRun' do |api|
        api.has_param :default_summary, 'bool'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :summary, { list: 'string' }
        api.has_param :sort, { list: 'string' }
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
        api.has_param :use_account_attribution_setting, 'bool'
      end
    end

    has_edge :targetingsentencelines do |edge|
      edge.get 'TargetingSentenceLine'
    end

  end
end
