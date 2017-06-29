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
  # This class is auto-genereated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class Ad < AdObject
    BID_TYPE = [
      "CPC",
      "CPM",
      "MULTI_PREMIUM",
      "ABSOLUTE_OCPM",
      "CPA",
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

    EXECUTION_OPTIONS = [
      "validate_only",
      "synchronous_ad_review",
      "include_recommendations",
    ]

    OPERATOR = [
      "ALL",
      "ANY",
    ]


    field :account_id, 'string'
    field :ad_review_feedback, 'AdgroupReviewFeedback'
    field :adlabels, { list: 'AdLabel' }
    field :adset, 'AdSet'
    field :adset_id, 'string'
    field :bid_amount, 'int'
    field :bid_info, 'map<string, unsigned int>'
    field :bid_type, { enum: -> { BID_TYPE }}
    field :campaign, 'Campaign'
    field :campaign_id, 'string'
    field :configured_status, { enum: -> { CONFIGURED_STATUS }}
    field :conversion_specs, { list: 'ConversionActionQuery' }
    field :created_time, 'datetime'
    field :creative, 'AdCreative'
    field :effective_status, { enum: -> { EFFECTIVE_STATUS }}
    field :id, 'string'
    field :last_updated_by_app_id, 'string'
    field :name, 'string'
    field :recommendations, { list: 'AdRecommendation' }
    field :status, { enum: -> { STATUS }}
    field :tracking_specs, { list: 'ConversionActionQuery' }
    field :updated_time, 'datetime'
    field :adset_spec, 'AdSet'
    field :date_format, 'string'
    field :display_sequence, 'int'
    field :execution_options, { list: { enum: -> { EXECUTION_OPTIONS }} }
    field :redownload, 'bool'

    has_edge :adcreatives do |edge|
      edge.get 'AdCreative'
    end

    has_edge :adlabels do |edge|
      edge.delete do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :execution_options, { list: { enum: -> { AdLabel::EXECUTION_OPTIONS }} }
      end
      edge.post 'AdLabel' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :execution_options, { list: { enum: -> { AdLabel::EXECUTION_OPTIONS }} }
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
        api.has_param :fields, { list: { enum: -> { AdsInsights::SUMMARY }} }
        api.has_param :filtering, { list: 'object' }
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: { enum: -> { AdsInsights::SUMMARY }} }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
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
        api.has_param :fields, { list: { enum: -> { AdsInsights::SUMMARY }} }
        api.has_param :filtering, { list: 'object' }
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: { enum: -> { AdsInsights::SUMMARY }} }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
      end
    end

    has_edge :keywordstats do |edge|
      edge.get 'AdKeywordStats' do |api|
        api.has_param :date, 'datetime'
      end
    end

    has_edge :leads do |edge|
      edge.get 'Lead'
    end

    has_edge :previews do |edge|
      edge.get 'AdPreview' do |api|
        api.has_param :ad_format, { enum: -> { AdPreview::AD_FORMAT }}
        api.has_param :end_date, 'datetime'
        api.has_param :height, 'int'
        api.has_param :locale, 'string'
        api.has_param :place_page_id, 'int'
        api.has_param :post, 'object'
        api.has_param :product_item_ids, { list: 'string' }
        api.has_param :start_date, 'datetime'
        api.has_param :width, 'int'
      end
    end

    has_edge :targetingsentencelines do |edge|
      edge.get 'TargetingSentenceLine'
    end

  end
end
