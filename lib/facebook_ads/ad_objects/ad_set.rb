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

  class AdSet < AdObject
    BID_STRATEGY = [
      "COST_CAP",
      "LOWEST_COST_WITHOUT_CAP",
      "LOWEST_COST_WITH_BID_CAP",
      "LOWEST_COST_WITH_MIN_ROAS",
    ]

    BILLING_EVENT = [
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

    CONFIGURED_STATUS = [
      "ACTIVE",
      "ARCHIVED",
      "DELETED",
      "PAUSED",
    ]

    EFFECTIVE_STATUS = [
      "ACTIVE",
      "ARCHIVED",
      "CAMPAIGN_PAUSED",
      "DELETED",
      "IN_PROCESS",
      "PAUSED",
      "WITH_ISSUES",
    ]

    OPTIMIZATION_GOAL = [
      "ADVERTISER_SILOED_VALUE",
      "AD_RECALL_LIFT",
      "APP_INSTALLS",
      "APP_INSTALLS_AND_OFFSITE_CONVERSIONS",
      "AUTOMATIC_OBJECTIVE",
      "CONVERSATIONS",
      "DERIVED_EVENTS",
      "ENGAGED_USERS",
      "EVENT_RESPONSES",
      "IMPRESSIONS",
      "IN_APP_VALUE",
      "LANDING_PAGE_VIEWS",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "MEANINGFUL_CALL_ATTEMPT",
      "MESSAGING_APPOINTMENT_CONVERSION",
      "MESSAGING_PURCHASE_CONVERSION",
      "NONE",
      "OFFSITE_CONVERSIONS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PROFILE_AND_PAGE_ENGAGEMENT",
      "PROFILE_VISIT",
      "QUALITY_CALL",
      "QUALITY_LEAD",
      "REACH",
      "REMINDERS_SET",
      "SUBSCRIBERS",
      "THRUPLAY",
      "VALUE",
      "VISIT_INSTAGRAM_PROFILE",
    ]

    STATUS = [
      "ACTIVE",
      "ARCHIVED",
      "DELETED",
      "PAUSED",
    ]

    AUTOMATIC_MANUAL_STATE = [
      "AUTOMATIC",
      "MANUAL",
      "UNSET",
    ]

    BUDGET_SOURCE = [
      "NONE",
      "RMN",
    ]

    CREATIVE_SEQUENCE_REPETITION_PATTERN = [
      "FULL_SEQUENCE",
      "LAST_AD",
    ]

    DATE_PRESET = [
      "DATA_MAXIMUM",
      "LAST_14D",
      "LAST_28D",
      "LAST_30D",
      "LAST_3D",
      "LAST_7D",
      "LAST_90D",
      "LAST_MONTH",
      "LAST_QUARTER",
      "LAST_WEEK_MON_SUN",
      "LAST_WEEK_SUN_SAT",
      "LAST_YEAR",
      "MAXIMUM",
      "THIS_MONTH",
      "THIS_QUARTER",
      "THIS_WEEK_MON_TODAY",
      "THIS_WEEK_SUN_TODAY",
      "THIS_YEAR",
      "TODAY",
      "YESTERDAY",
    ]

    DESTINATION_TYPE = [
      "APP",
      "APPLINKS_AUTOMATIC",
      "FACEBOOK",
      "FACEBOOK_LIVE",
      "FACEBOOK_PAGE",
      "IMAGINE",
      "INSTAGRAM_DIRECT",
      "INSTAGRAM_LIVE",
      "INSTAGRAM_PROFILE",
      "INSTAGRAM_PROFILE_AND_FACEBOOK_PAGE",
      "MESSAGING_INSTAGRAM_DIRECT_MESSENGER",
      "MESSAGING_INSTAGRAM_DIRECT_MESSENGER_WHATSAPP",
      "MESSAGING_INSTAGRAM_DIRECT_WHATSAPP",
      "MESSAGING_MESSENGER_WHATSAPP",
      "MESSENGER",
      "ON_AD",
      "ON_EVENT",
      "ON_PAGE",
      "ON_POST",
      "ON_VIDEO",
      "SHOP_AUTOMATIC",
      "WEBSITE",
      "WHATSAPP",
    ]

    EXECUTION_OPTIONS = [
      "include_recommendations",
      "validate_only",
    ]

    FULL_FUNNEL_EXPLORATION_MODE = [
      "EXTENDED_EXPLORATION",
      "LIMITED_EXPLORATION",
      "NONE_EXPLORATION",
    ]

    MULTI_OPTIMIZATION_GOAL_WEIGHT = [
      "BALANCED",
      "PREFER_EVENT",
      "PREFER_INSTALL",
      "UNDEFINED",
    ]

    OPTIMIZATION_SUB_EVENT = [
      "NONE",
      "POST_INTERACTION",
      "TRAVEL_INTENT",
      "TRAVEL_INTENT_BUCKET_01",
      "TRAVEL_INTENT_BUCKET_02",
      "TRAVEL_INTENT_BUCKET_03",
      "TRAVEL_INTENT_BUCKET_04",
      "TRAVEL_INTENT_BUCKET_05",
      "TRAVEL_INTENT_NO_DESTINATION_INTENT",
      "TRIP_CONSIDERATION",
      "VIDEO_SOUND_ON",
    ]

    REGIONAL_REGULATED_CATEGORIES = [
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
    ]

    TUNE_FOR_CATEGORY = [
      "CREDIT",
      "EMPLOYMENT",
      "FINANCIAL_PRODUCTS_SERVICES",
      "HOUSING",
      "ISSUES_ELECTIONS_POLITICS",
      "NONE",
      "ONLINE_GAMBLING_AND_GAMING",
    ]

    OPERATOR = [
      "ALL",
      "ANY",
    ]

    STATUS_OPTION = [
      "ACTIVE",
      "INHERITED_FROM_SOURCE",
      "PAUSED",
    ]


    field :account_id, 'string'
    field :adlabels, { list: 'AdLabel' }
    field :adset_schedule, { list: 'DayPart' }
    field :asset_feed_id, 'string'
    field :attribution_spec, { list: 'AttributionSpec' }
    field :automatic_manual_state, 'string'
    field :bid_adjustments, 'AdBidAdjustments'
    field :bid_amount, 'int'
    field :bid_constraints, 'AdCampaignBidConstraint'
    field :bid_info, 'map<string, unsigned int>'
    field :bid_strategy, { enum: -> { BID_STRATEGY }}
    field :billing_event, { enum: -> { BILLING_EVENT }}
    field :brand_safety_config, 'BrandSafetyCampaignConfig'
    field :budget_remaining, 'string'
    field :campaign, 'Campaign'
    field :campaign_active_time, 'string'
    field :campaign_attribution, 'string'
    field :campaign_id, 'string'
    field :configured_status, { enum: -> { CONFIGURED_STATUS }}
    field :created_time, 'datetime'
    field :creative_sequence, { list: 'string' }
    field :creative_sequence_repetition_pattern, 'string'
    field :daily_budget, 'string'
    field :daily_min_spend_target, 'string'
    field :daily_spend_cap, 'string'
    field :destination_type, 'string'
    field :dsa_beneficiary, 'string'
    field :dsa_payor, 'string'
    field :effective_status, { enum: -> { EFFECTIVE_STATUS }}
    field :end_time, 'datetime'
    field :existing_customer_budget_percentage, 'int'
    field :frequency_control_specs, { list: 'AdCampaignFrequencyControlSpecs' }
    field :full_funnel_exploration_mode, 'string'
    field :id, 'string'
    field :instagram_user_id, 'string'
    field :is_ba_skip_delayed_eligible, 'bool'
    field :is_budget_schedule_enabled, 'bool'
    field :is_dynamic_creative, 'bool'
    field :is_incremental_attribution_enabled, 'bool'
    field :issues_info, { list: 'AdCampaignIssuesInfo' }
    field :learning_stage_info, 'AdCampaignLearningStageInfo'
    field :lifetime_budget, 'string'
    field :lifetime_imps, 'int'
    field :lifetime_min_spend_target, 'string'
    field :lifetime_spend_cap, 'string'
    field :max_budget_spend_percentage, 'string'
    field :min_budget_spend_percentage, 'string'
    field :multi_optimization_goal_weight, 'string'
    field :name, 'string'
    field :optimization_goal, { enum: -> { OPTIMIZATION_GOAL }}
    field :optimization_sub_event, 'string'
    field :pacing_type, { list: 'string' }
    field :placement_soft_opt_out, 'Placement'
    field :promoted_object, 'AdPromotedObject'
    field :recommendations, { list: 'AdRecommendation' }
    field :recurring_budget_semantics, 'bool'
    field :regional_regulated_categories, { list: 'string' }
    field :regional_regulation_identities, 'RegionalRegulationIdentities'
    field :review_feedback, 'string'
    field :rf_prediction_id, 'string'
    field :source_adset, 'AdSet'
    field :source_adset_id, 'string'
    field :start_time, 'datetime'
    field :status, { enum: -> { STATUS }}
    field :targeting, 'Targeting'
    field :targeting_optimization_types, { list: 'hash' }
    field :time_based_ad_rotation_id_blocks, { list: { list: 'int' } }
    field :time_based_ad_rotation_intervals, { list: 'int' }
    field :trending_topics_spec, 'TrendingTopicsSpec'
    field :updated_time, 'datetime'
    field :use_new_app_click, 'bool'
    field :value_rule_set_id, 'string'
    field :value_rules_applied, 'bool'
    field :budget_schedule_specs, { list: 'object' }
    field :budget_source, { enum: -> { BUDGET_SOURCE }}
    field :budget_split_set_id, 'string'
    field :campaign_spec, 'object'
    field :daily_imps, 'int'
    field :date_format, 'string'
    field :execution_options, { list: { enum: -> { EXECUTION_OPTIONS }} }
    field :is_sac_cfca_terms_certified, 'bool'
    field :line_number, 'int'
    field :rb_prediction_id, 'string'
    field :time_start, 'datetime'
    field :time_stop, 'datetime'
    field :topline_id, 'string'
    field :tune_for_category, { enum: -> { TUNE_FOR_CATEGORY }}

    has_edge :activities do |edge|
      edge.get 'AdActivity' do |api|
        api.has_param :after, 'string'
        api.has_param :business_id, 'string'
        api.has_param :category, { enum: -> { AdActivity::CATEGORY }}
        api.has_param :limit, 'int'
        api.has_param :since, 'datetime'
        api.has_param :uid, 'int'
        api.has_param :until, 'datetime'
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
        api.has_param :execution_options, { list: { enum: -> { AdSet::EXECUTION_OPTIONS }} }
      end
      edge.post 'AdSet' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :execution_options, { list: { enum: -> { AdSet::EXECUTION_OPTIONS }} }
      end
    end

    has_edge :adrules_governed do |edge|
      edge.get 'AdRule' do |api|
        api.has_param :pass_evaluation, 'bool'
      end
    end

    has_edge :ads do |edge|
      edge.get 'Ad' do |api|
        api.has_param :date_preset, { enum: -> { Ad::DATE_PRESET }}
        api.has_param :effective_status, { list: 'string' }
        api.has_param :time_range, 'hash'
        api.has_param :updated_since, 'int'
      end
    end

    has_edge :asyncadrequests do |edge|
      edge.get 'AdAsyncRequest' do |api|
        api.has_param :statuses, { list: { enum: -> { AdAsyncRequest::STATUSES }} }
      end
    end

    has_edge :budget_schedules do |edge|
      edge.get 'HighDemandPeriod' do |api|
        api.has_param :time_start, 'datetime'
        api.has_param :time_stop, 'datetime'
      end
      edge.post 'HighDemandPeriod' do |api|
        api.has_param :budget_value, 'int'
        api.has_param :budget_value_type, { enum: -> { HighDemandPeriod::BUDGET_VALUE_TYPE }}
        api.has_param :time_end, 'int'
        api.has_param :time_start, 'int'
      end
    end

    has_edge :copies do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :date_preset, { enum: -> { AdSet::DATE_PRESET }}
        api.has_param :effective_status, { list: { enum: -> { AdSet::EFFECTIVE_STATUS }} }
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'hash'
      end
      edge.post 'AdSet' do |api|
        api.has_param :campaign_id, 'string'
        api.has_param :create_dco_adset, 'bool'
        api.has_param :deep_copy, 'bool'
        api.has_param :end_time, 'datetime'
        api.has_param :rename_options, 'object'
        api.has_param :start_time, 'datetime'
        api.has_param :status_option, { enum: -> { AdSet::STATUS_OPTION }}
      end
    end

    has_edge :delivery_estimate do |edge|
      edge.get 'AdCampaignDeliveryEstimate' do |api|
        api.has_param :optimization_goal, { enum: -> { AdCampaignDeliveryEstimate::OPTIMIZATION_GOAL }}
        api.has_param :promoted_object, 'object'
        api.has_param :targeting_spec, 'Targeting'
      end
    end

    has_edge :insights do |edge|
      edge.get 'AdsInsights' do |api|
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :default_summary, 'bool'
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :graph_cache, 'bool'
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :limit, 'int'
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: 'string' }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'hash'
        api.has_param :time_ranges, { list: 'hash' }
        api.has_param :use_account_attribution_setting, 'bool'
        api.has_param :use_unified_attribution_setting, 'bool'
      end
      edge.post 'AdReportRun' do |api|
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :default_summary, 'bool'
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :graph_cache, 'bool'
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :limit, 'int'
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: 'string' }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'hash'
        api.has_param :time_ranges, { list: 'hash' }
        api.has_param :use_account_attribution_setting, 'bool'
        api.has_param :use_unified_attribution_setting, 'bool'
      end
    end

    has_edge :message_delivery_estimate do |edge|
      edge.get 'MessageDeliveryEstimate' do |api|
        api.has_param :bid_amount, 'int'
        api.has_param :daily_budget, 'int'
        api.has_param :is_direct_send_campaign, 'bool'
        api.has_param :lifetime_budget, 'int'
        api.has_param :lifetime_in_days, 'int'
        api.has_param :optimization_goal, { enum: -> { MessageDeliveryEstimate::OPTIMIZATION_GOAL }}
        api.has_param :pacing_type, { enum: -> { MessageDeliveryEstimate::PACING_TYPE }}
        api.has_param :promoted_object, 'object'
        api.has_param :targeting_spec, 'Targeting'
      end
    end

    has_edge :targetingsentencelines do |edge|
      edge.get 'TargetingSentenceLine'
    end

  end
end
