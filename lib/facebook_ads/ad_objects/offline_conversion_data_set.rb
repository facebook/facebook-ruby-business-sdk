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

  class OfflineConversionDataSet < AdObject
    PERMITTED_ROLES = [
      "ADMIN",
      "ADVERTISER",
      "UPLOADER",
    ]

    RELATIONSHIP_TYPE = [
      "AD_MANAGER",
      "AGENCY",
      "AGGREGATOR",
      "AUDIENCE_MANAGER",
      "OTHER",
    ]


    field :automatic_matching_fields, { list: 'string' }
    field :business, 'Business'
    field :can_proxy, 'bool'
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
    field :valid_entries, 'int'
    field :auto_assign_to_new_accounts_only, 'bool'

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'OfflineConversionDataSet' do |api|
        api.has_param :account_id, 'string'
        api.has_param :auto_track_for_ads, 'bool'
        api.has_param :business, 'string'
      end
    end

    has_edge :agencies do |edge|
      edge.get 'Business'
      edge.post 'OfflineConversionDataSet' do |api|
        api.has_param :business, 'string'
        api.has_param :other_relationship, 'string'
        api.has_param :permitted_roles, { list: { enum: -> { OfflineConversionDataSet::PERMITTED_ROLES }} }
        api.has_param :relationship_type, { list: { enum: -> { OfflineConversionDataSet::RELATIONSHIP_TYPE }} }
      end
    end

    has_edge :audiences do |edge|
      edge.get 'CustomAudience' do |api|
        api.has_param :action_source, { enum: -> { CustomAudience::ACTION_SOURCE }}
        api.has_param :ad_account, 'string'
      end
    end

    has_edge :customconversions do |edge|
      edge.get 'CustomConversion' do |api|
        api.has_param :ad_account, 'string'
      end
    end

    has_edge :server_events_permitted_business do |edge|
      edge.get 'Business'
    end

    has_edge :shared_accounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :action_source, { enum: -> { AdAccount::ACTION_SOURCE }}
        api.has_param :business, 'string'
      end
    end

    has_edge :shared_agencies do |edge|
      edge.get 'Business' do |api|
        api.has_param :action_source, { enum: -> { Business::ACTION_SOURCE }}
      end
    end

    has_edge :stats do |edge|
      edge.get do |api|
        api.has_param :aggr_time, { enum: %w{event_time upload_time }}
        api.has_param :end, 'int'
        api.has_param :granularity, { enum: %w{daily hourly six_hourly }}
        api.has_param :skip_empty_values, 'bool'
        api.has_param :start, 'int'
        api.has_param :user_timezone_id, 'int'
      end
    end

    has_edge :uploads do |edge|
      edge.get 'OfflineConversionDataSetUpload' do |api|
        api.has_param :end_time, 'datetime'
        api.has_param :order, { enum: -> { OfflineConversionDataSetUpload::ORDER }}
        api.has_param :sort_by, { enum: -> { OfflineConversionDataSetUpload::SORT_BY }}
        api.has_param :start_time, 'datetime'
        api.has_param :upload_tag, 'string'
      end
      edge.post 'OfflineConversionDataSetUpload' do |api|
        api.has_param :upload_tag, 'string'
      end
    end

    has_edge :validate do |edge|
      edge.post 'OfflineConversionDataSet' do |api|
        api.has_param :data, { list: 'string' }
        api.has_param :namespace_id, 'string'
      end
    end

  end
end
