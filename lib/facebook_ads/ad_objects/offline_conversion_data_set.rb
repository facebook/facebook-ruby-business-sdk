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


    field :business, 'Business'
    field :config, 'string'
    field :creation_time, 'datetime'
    field :description, 'string'
    field :duplicate_entries, 'int'
    field :enable_auto_assign_to_accounts, 'bool'
    field :event_stats, 'string'
    field :event_time_max, 'int'
    field :event_time_min, 'int'
    field :id, 'string'
    field :is_mta_use, 'bool'
    field :is_restricted_use, 'bool'
    field :is_unavailable, 'bool'
    field :last_upload_app, 'string'
    field :last_upload_app_changed_time, 'int'
    field :match_rate_approx, 'int'
    field :matched_entries, 'int'
    field :name, 'string'
    field :usage, 'object'
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
        api.has_param :ad_account, 'string'
      end
    end

    has_edge :customconversions do |edge|
      edge.get 'CustomConversion' do |api|
        api.has_param :ad_account, 'string'
      end
    end

    has_edge :events do |edge|
      edge.post do |api|
        api.has_param :data, { list: 'string' }
        api.has_param :namespace_id, 'string'
        api.has_param :progress, 'object'
        api.has_param :upload_id, 'string'
        api.has_param :upload_source, 'string'
        api.has_param :upload_tag, 'string'
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
      edge.get do |api|
        api.has_param :end_time, 'datetime'
        api.has_param :order, { enum: %w{ASCENDING DESCENDING }}
        api.has_param :sort_by, { enum: %w{API_CALLS CREATION_TIME EVENT_TIME_MAX EVENT_TIME_MIN FIRST_UPLOAD_TIME IS_EXCLUDED_FOR_LIFT LAST_UPLOAD_TIME }}
        api.has_param :start_time, 'datetime'
        api.has_param :upload_tag, 'string'
      end
      edge.post do |api|
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
