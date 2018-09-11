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

  class AdsPixel < AdObject
    SORT_BY = [
      "LAST_FIRED_TIME",
      "NAME",
    ]

    TASKS = [
      "EDIT",
      "ANALYZE",
    ]

    TYPE = [
      "PRIMARY",
      "SECONDARY",
    ]

    RELATIONSHIP_TYPE = [
      "AD_MANAGER",
      "AUDIENCE_MANAGER",
      "AGENCY",
      "OTHER",
    ]


    field :can_proxy, 'bool'
    field :code, 'string'
    field :creation_time, 'datetime'
    field :creator, 'User'
    field :id, 'string'
    field :is_created_by_business, 'bool'
    field :last_fired_time, 'datetime'
    field :name, 'string'
    field :owner_ad_account, 'AdAccount'
    field :owner_business, 'Business'
    has_no_delete

    has_edge :ads_pixel_traffic_anomaly_config do |edge|
      edge.get 'AdsPixelTrafficAnomalyConfig'
    end

    has_edge :analytics_cohort_query do |edge|
      edge.get 'AnalyticsCohortQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :analytics_entity_user_config do |edge|
      edge.get 'AnalyticsEntityUserConfig'
    end

    has_edge :analytics_event_types do |edge|
      edge.get 'AnalyticsEventTypes'
    end

    has_edge :analytics_funnel_query do |edge|
      edge.get 'AnalyticsFunnelQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :analytics_query do |edge|
      edge.get 'AnalyticsQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :analytics_query_export do |edge|
      edge.get 'AnalyticsQueryExportResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :analytics_segments do |edge|
      edge.get 'AnalyticsSegment'
    end

    has_edge :assigned_partners do |edge|
      edge.get 'Business'
    end

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
        api.has_param :business, 'string'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :user, 'int'
        api.has_param :tasks, { list: { enum: -> { AdsPixel::TASKS }} }
        api.has_param :business, 'string'
      end
    end

    has_edge :audiences do |edge|
      edge.get 'CustomAudience' do |api|
        api.has_param :ad_account, 'string'
      end
    end

    has_edge :create_server_to_server_keys do |edge|
      edge.post 'AdsPixel'
    end

    has_edge :customconversions do |edge|
      edge.get 'CustomConversion' do |api|
        api.has_param :ad_account, 'string'
      end
    end

    has_edge :da_checks do |edge|
      edge.get 'DaCheck' do |api|
        api.has_param :checks, { list: 'string' }
      end
    end

    has_edge :da_stats do |edge|
      edge.get 'ExternalEventSourceDaStatsResult' do |api|
        api.has_param :event, { enum: -> { ExternalEventSourceDAStatsResult::EVENT }}
      end
    end

    has_edge :domain_control_rule do |edge|
      edge.get 'AdsPixelDomainControlRule' do |api|
        api.has_param :type, { enum: -> { AdsPixelDomainControlRule::TYPE }}
      end
    end

    has_edge :domain_last_fired_time do |edge|
      edge.get 'AdsPixelDomainLastFiredTime' do |api|
        api.has_param :domain_name_list, { list: 'string' }
      end
    end

    has_edge :event_last_fired_time do |edge|
      edge.get 'AdsPixelEventLastFiredTime' do |api|
        api.has_param :event, 'string'
      end
    end

    has_edge :event_prediction do |edge|
      edge.get 'AdsPixelEventPrediction' do |api|
        api.has_param :form_submission, 'string'
      end
    end

    has_edge :event_rules do |edge|
      edge.get 'CalibratorExistingRule' do |api|
        api.has_param :event_type, 'string'
        api.has_param :creation_source, { list: { enum: -> { CalibratorExistingRule::CREATION_SOURCE }} }
      end
    end

    has_edge :event_suggestion_rules do |edge|
      edge.get 'AdsPixelEventSuggestionRule' do |api|
        api.has_param :event_type, { enum: -> { AdsPixelEventSuggestionRule::EVENT_TYPE }}
      end
    end

    has_edge :microdata_stats do |edge|
      edge.get 'AdsPixelMicrodataStats' do |api|
        api.has_param :catalog_id, 'object'
      end
    end

    has_edge :notification_settings do |edge|
      edge.get 'DogNotificationSettings'
    end

    has_edge :pending_shared_agencies do |edge|
      edge.get 'Business'
    end

    has_edge :pixel_helper_debugging_info do |edge|
      edge.get 'ExternalEventSourcePixelHelperDebuggingInfo'
    end

    has_edge :raw_fires do |edge|
      edge.get 'AdsPixelRawFiresResult' do |api|
        api.has_param :event, 'string'
        api.has_param :filter, 'string'
        api.has_param :filter_type, { enum: -> { AdsPixelRawFiresResult::FILTER_TYPE }}
      end
    end

    has_edge :real_time_event_log do |edge|
      edge.get 'AdsPixelRealTimeEventLogResult' do |api|
        api.has_param :start_time, 'object'
        api.has_param :end_time, 'object'
        api.has_param :limit, 'int'
        api.has_param :trace_id, 'string'
      end
    end

    has_edge :recent_debuggings do |edge|
      edge.get 'ExternalEventSourceDebugging' do |api|
        api.has_param :event_name, 'string'
        api.has_param :diagnostic, 'string'
      end
    end

    has_edge :recent_events do |edge|
      edge.get 'AdsPixelRecentEventsResult' do |api|
        api.has_param :event, 'string'
        api.has_param :lookback_window, 'int'
      end
    end

    has_edge :reset_server_to_server_key do |edge|
      edge.post 'AdsPixel' do |api|
        api.has_param :type, { enum: -> { AdsPixel::TYPE }}
      end
    end

    has_edge :segments do |edge|
      edge.get 'AdsSegments' do |api|
        api.has_param :start_date, 'datetime'
        api.has_param :end_date, 'datetime'
        api.has_param :date_preset, 'string'
        api.has_param :site_cpm, 'int'
        api.has_param :sort, 'string'
      end
    end

    has_edge :server_to_server_keys do |edge|
      edge.get 'AdsPixelServerToServerKey'
    end

    has_edge :shared_accounts do |edge|
      edge.delete do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
    end

    has_edge :shared_agencies do |edge|
      edge.delete do |api|
        api.has_param :agency_id, 'string'
        api.has_param :business, 'string'
      end
      edge.get 'Business'
      edge.post 'AdsPixel' do |api|
        api.has_param :agency_id, 'string'
        api.has_param :business, 'string'
        api.has_param :relationship_type, { list: { enum: -> { AdsPixel::RELATIONSHIP_TYPE }} }
        api.has_param :other_relationship, 'string'
      end
    end

    has_edge :signals_iwl_nux do |edge|
      edge.get 'AdsPixelSignalsIwlNux'
    end

    has_edge :stats do |edge|
      edge.get 'AdsPixelStatsResult' do |api|
        api.has_param :start_time, 'object'
        api.has_param :end_time, 'object'
        api.has_param :aggregation, { enum: -> { AdsPixelStatsResult::AGGREGATION }}
        api.has_param :event, 'string'
      end
    end

  end
end
