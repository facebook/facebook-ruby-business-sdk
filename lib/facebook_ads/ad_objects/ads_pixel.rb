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

  class AdsPixel < AdObject
    SORT_BY = [
      "LAST_FIRED_TIME",
      "NAME",
    ]

    AUTOMATIC_MATCHING_FIELDS = [
      "country",
      "ct",
      "db",
      "em",
      "external_id",
      "fn",
      "ge",
      "ln",
      "ph",
      "st",
      "zp",
    ]

    DATA_USE_SETTING = [
      "ADVERTISING_AND_ANALYTICS",
      "ANALYTICS_ONLY",
      "EMPTY",
    ]

    FIRST_PARTY_COOKIE_STATUS = [
      "EMPTY",
      "FIRST_PARTY_COOKIE_DISABLED",
      "FIRST_PARTY_COOKIE_ENABLED",
    ]

    TASKS = [
      "AA_ANALYZE",
      "ADVERTISE",
      "ANALYZE",
      "EDIT",
      "UPLOAD",
    ]


    field :automatic_matching_fields, { list: 'string' }
    field :can_proxy, 'bool'
    field :code, 'string'
    field :config, 'string'
    field :creation_time, 'datetime'
    field :creator, 'User'
    field :data_use_setting, 'string'
    field :description, 'string'
    field :duplicate_entries, 'int'
    field :enable_auto_assign_to_accounts, 'bool'
    field :enable_automatic_matching, 'bool'
    field :event_stats, 'string'
    field :event_time_max, 'int'
    field :event_time_min, 'int'
    field :first_party_cookie_status, 'string'
    field :id, 'string'
    field :is_consolidated_container, 'bool'
    field :is_created_by_business, 'bool'
    field :is_crm, 'bool'
    field :is_mta_use, 'bool'
    field :is_restricted_use, 'bool'
    field :is_unavailable, 'bool'
    field :last_fired_time, 'datetime'
    field :last_upload_app, 'string'
    field :last_upload_app_changed_time, 'int'
    field :match_rate_approx, 'int'
    field :matched_entries, 'int'
    field :name, 'string'
    field :owner_ad_account, 'AdAccount'
    field :owner_business, 'Business'
    field :usage, 'OfflineConversionDataSetUsage'
    field :user_access_expire_time, 'datetime'
    field :valid_entries, 'int'
    has_no_delete

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
    end

    has_edge :agencies do |edge|
      edge.get 'Business'
    end

    has_edge :ahp_configs do |edge|
      edge.post do |api|
        api.has_param :applink_autosetup, 'bool'
      end
    end

    has_edge :assigned_users do |edge|
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :tasks, { list: { enum: -> { AdsPixel::TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :da_checks do |edge|
      edge.get 'DaCheck' do |api|
        api.has_param :checks, { list: 'string' }
        api.has_param :connection_method, { enum: -> { DaCheck::CONNECTION_METHOD }}
      end
    end

    has_edge :events do |edge|
      edge.post do |api|
        api.has_param :data, { list: 'string' }
        api.has_param :namespace_id, 'string'
        api.has_param :partner_agent, 'string'
        api.has_param :platforms, { list: 'hash' }
        api.has_param :progress, 'object'
        api.has_param :test_event_code, 'string'
        api.has_param :trace, 'int'
        api.has_param :upload_id, 'string'
        api.has_param :upload_source, 'string'
        api.has_param :upload_tag, 'string'
      end
    end

    has_edge :meapitocapiconsolidationhelper do |edge|
      edge.post
    end

    has_edge :offline_event_uploads do |edge|
      edge.get 'OfflineConversionDataSetUpload' do |api|
        api.has_param :end_time, 'datetime'
        api.has_param :order, { enum: -> { OfflineConversionDataSetUpload::ORDER }}
        api.has_param :sort_by, { enum: -> { OfflineConversionDataSetUpload::SORT_BY }}
        api.has_param :start_time, 'datetime'
        api.has_param :upload_tag, 'string'
      end
    end

    has_edge :openbridge_configurations do |edge|
      edge.get 'OpenBridgeConfiguration'
    end

    has_edge :shadowtraffichelper do |edge|
      edge.post
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
      edge.get 'Business'
    end

    has_edge :stats do |edge|
      edge.get 'AdsPixelStatsResult' do |api|
        api.has_param :aggregation, { enum: -> { AdsPixelStatsResult::AGGREGATION }}
        api.has_param :end_time, 'datetime'
        api.has_param :event, 'string'
        api.has_param :event_source, 'string'
        api.has_param :start_time, 'datetime'
      end
    end

    has_edge :telemetry do |edge|
      edge.post
    end

  end
end
