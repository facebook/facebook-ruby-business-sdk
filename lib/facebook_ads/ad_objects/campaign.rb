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

  class Campaign < AdObject
    BID_STRATEGY = [
      "COST_CAP",
      "LOWEST_COST_WITHOUT_CAP",
      "LOWEST_COST_WITH_BID_CAP",
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
      "DELETED",
      "IN_PROCESS",
      "PAUSED",
      "WITH_ISSUES",
    ]

    STATUS = [
      "ACTIVE",
      "ARCHIVED",
      "DELETED",
      "PAUSED",
    ]

    DATE_PRESET = [
      "last_14d",
      "last_28d",
      "last_30d",
      "last_3d",
      "last_7d",
      "last_90d",
      "last_month",
      "last_quarter",
      "last_week_mon_sun",
      "last_week_sun_sat",
      "last_year",
      "maximum",
      "this_month",
      "this_quarter",
      "this_week_mon_today",
      "this_week_sun_today",
      "this_year",
      "today",
      "yesterday",
    ]

    EXECUTION_OPTIONS = [
      "include_recommendations",
      "validate_only",
    ]

    OBJECTIVE = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "CONVERSIONS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "REACH",
      "STORE_VISITS",
      "VIDEO_VIEWS",
    ]

    SMART_PROMOTION_TYPE = [
      "GUIDED_CREATION",
      "SMART_APP_PROMOTION",
    ]

    SPECIAL_AD_CATEGORIES = [
      "CREDIT",
      "EMPLOYMENT",
      "HOUSING",
      "ISSUES_ELECTIONS_POLITICS",
      "NONE",
    ]

    SPECIAL_AD_CATEGORY_COUNTRY = [
      "AD",
      "AE",
      "AF",
      "AG",
      "AI",
      "AL",
      "AM",
      "AN",
      "AO",
      "AQ",
      "AR",
      "AS",
      "AT",
      "AU",
      "AW",
      "AX",
      "AZ",
      "BA",
      "BB",
      "BD",
      "BE",
      "BF",
      "BG",
      "BH",
      "BI",
      "BJ",
      "BL",
      "BM",
      "BN",
      "BO",
      "BQ",
      "BR",
      "BS",
      "BT",
      "BV",
      "BW",
      "BY",
      "BZ",
      "CA",
      "CC",
      "CD",
      "CF",
      "CG",
      "CH",
      "CI",
      "CK",
      "CL",
      "CM",
      "CN",
      "CO",
      "CR",
      "CU",
      "CV",
      "CW",
      "CX",
      "CY",
      "CZ",
      "DE",
      "DJ",
      "DK",
      "DM",
      "DO",
      "DZ",
      "EC",
      "EE",
      "EG",
      "EH",
      "ER",
      "ES",
      "ET",
      "FI",
      "FJ",
      "FK",
      "FM",
      "FO",
      "FR",
      "GA",
      "GB",
      "GD",
      "GE",
      "GF",
      "GG",
      "GH",
      "GI",
      "GL",
      "GM",
      "GN",
      "GP",
      "GQ",
      "GR",
      "GS",
      "GT",
      "GU",
      "GW",
      "GY",
      "HK",
      "HM",
      "HN",
      "HR",
      "HT",
      "HU",
      "ID",
      "IE",
      "IL",
      "IM",
      "IN",
      "IO",
      "IQ",
      "IR",
      "IS",
      "IT",
      "JE",
      "JM",
      "JO",
      "JP",
      "KE",
      "KG",
      "KH",
      "KI",
      "KM",
      "KN",
      "KP",
      "KR",
      "KW",
      "KY",
      "KZ",
      "LA",
      "LB",
      "LC",
      "LI",
      "LK",
      "LR",
      "LS",
      "LT",
      "LU",
      "LV",
      "LY",
      "MA",
      "MC",
      "MD",
      "ME",
      "MF",
      "MG",
      "MH",
      "MK",
      "ML",
      "MM",
      "MN",
      "MO",
      "MP",
      "MQ",
      "MR",
      "MS",
      "MT",
      "MU",
      "MV",
      "MW",
      "MX",
      "MY",
      "MZ",
      "NA",
      "NC",
      "NE",
      "NF",
      "NG",
      "NI",
      "NL",
      "NO",
      "NP",
      "NR",
      "NU",
      "NZ",
      "OM",
      "PA",
      "PE",
      "PF",
      "PG",
      "PH",
      "PK",
      "PL",
      "PM",
      "PN",
      "PR",
      "PS",
      "PT",
      "PW",
      "PY",
      "QA",
      "RE",
      "RO",
      "RS",
      "RU",
      "RW",
      "SA",
      "SB",
      "SC",
      "SD",
      "SE",
      "SG",
      "SH",
      "SI",
      "SJ",
      "SK",
      "SL",
      "SM",
      "SN",
      "SO",
      "SR",
      "SS",
      "ST",
      "SV",
      "SX",
      "SY",
      "SZ",
      "TC",
      "TD",
      "TF",
      "TG",
      "TH",
      "TJ",
      "TK",
      "TL",
      "TM",
      "TN",
      "TO",
      "TR",
      "TT",
      "TV",
      "TW",
      "TZ",
      "UA",
      "UG",
      "UM",
      "US",
      "UY",
      "UZ",
      "VA",
      "VC",
      "VE",
      "VG",
      "VI",
      "VN",
      "VU",
      "WF",
      "WS",
      "XK",
      "YE",
      "YT",
      "ZA",
      "ZM",
      "ZW",
    ]

    OPERATOR = [
      "ALL",
      "ANY",
    ]

    SPECIAL_AD_CATEGORY = [
      "CREDIT",
      "EMPLOYMENT",
      "HOUSING",
      "ISSUES_ELECTIONS_POLITICS",
      "NONE",
    ]

    STATUS_OPTION = [
      "ACTIVE",
      "INHERITED_FROM_SOURCE",
      "PAUSED",
    ]


    field :account_id, 'string'
    field :ad_strategy_id, 'string'
    field :adlabels, { list: 'AdLabel' }
    field :bid_strategy, { enum: -> { BID_STRATEGY }}
    field :boosted_object_id, 'string'
    field :brand_lift_studies, { list: 'AdStudy' }
    field :budget_rebalance_flag, 'bool'
    field :budget_remaining, 'string'
    field :buying_type, 'string'
    field :can_create_brand_lift_study, 'bool'
    field :can_use_spend_cap, 'bool'
    field :configured_status, { enum: -> { CONFIGURED_STATUS }}
    field :created_time, 'datetime'
    field :daily_budget, 'string'
    field :effective_status, { enum: -> { EFFECTIVE_STATUS }}
    field :id, 'string'
    field :is_skadnetwork_attribution, 'bool'
    field :issues_info, { list: 'AdCampaignIssuesInfo' }
    field :last_budget_toggling_time, 'datetime'
    field :lifetime_budget, 'string'
    field :name, 'string'
    field :objective, 'string'
    field :pacing_type, { list: 'string' }
    field :promoted_object, 'AdPromotedObject'
    field :recommendations, { list: 'AdRecommendation' }
    field :smart_promotion_type, 'string'
    field :source_campaign, 'Campaign'
    field :source_campaign_id, 'string'
    field :special_ad_categories, { list: 'string' }
    field :special_ad_category, 'string'
    field :special_ad_category_country, { list: 'string' }
    field :spend_cap, 'string'
    field :start_time, 'datetime'
    field :status, { enum: -> { STATUS }}
    field :stop_time, 'datetime'
    field :topline_id, 'string'
    field :updated_time, 'datetime'
    field :adbatch, { list: 'object' }
    field :execution_options, { list: { enum: -> { EXECUTION_OPTIONS }} }
    field :iterative_split_test_configs, { list: 'object' }
    field :upstream_events, 'hash'

    has_edge :ad_studies do |edge|
      edge.get 'AdStudy'
    end

    has_edge :adlabels do |edge|
      edge.post 'Campaign' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :execution_options, { list: { enum: -> { Campaign::EXECUTION_OPTIONS }} }
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
        api.has_param :time_range, 'object'
        api.has_param :updated_since, 'int'
      end
    end

    has_edge :adsets do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :date_preset, { enum: -> { AdSet::DATE_PRESET }}
        api.has_param :effective_status, { list: { enum: -> { AdSet::EFFECTIVE_STATUS }} }
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'object'
      end
    end

    has_edge :content_delivery_report do |edge|
      edge.get 'ContentDeliveryReport' do |api|
        api.has_param :end_date, 'datetime'
        api.has_param :page_id, 'int'
        api.has_param :platform, { enum: -> { ContentDeliveryReport::PLATFORM }}
        api.has_param :position, { enum: -> { ContentDeliveryReport::POSITION }}
        api.has_param :start_date, 'datetime'
        api.has_param :summary, 'bool'
      end
    end

    has_edge :copies do |edge|
      edge.get 'Campaign' do |api|
        api.has_param :date_preset, { enum: -> { Campaign::DATE_PRESET }}
        api.has_param :effective_status, { list: { enum: -> { Campaign::EFFECTIVE_STATUS }} }
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'object'
      end
      edge.post 'Campaign' do |api|
        api.has_param :deep_copy, 'bool'
        api.has_param :end_time, 'datetime'
        api.has_param :rename_options, 'object'
        api.has_param :start_time, 'datetime'
        api.has_param :status_option, { enum: -> { Campaign::STATUS_OPTION }}
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
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: 'string' }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
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
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: 'string' }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
        api.has_param :use_account_attribution_setting, 'bool'
        api.has_param :use_unified_attribution_setting, 'bool'
      end
    end

  end
end
