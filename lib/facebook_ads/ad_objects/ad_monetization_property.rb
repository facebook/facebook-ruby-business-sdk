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

  class AdMonetizationProperty < AdObject

    field :owner_business, 'Business'
    field :id, 'string'
    has_no_post
    has_no_delete

    has_edge :adnetworkanalytics do |edge|
      edge.get 'AdNetworkAnalyticsSyncQueryResult' do |api|
        api.has_param :aggregation_period, { enum: -> { AdNetworkAnalyticsSyncQueryResult::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { AdNetworkAnalyticsSyncQueryResult::BREAKDOWNS }} }
        api.has_param :filters, { list: 'hash' }
        api.has_param :limit, 'int'
        api.has_param :metrics, { list: { enum: -> { AdNetworkAnalyticsSyncQueryResult::METRICS }} }
        api.has_param :ordering_column, { enum: -> { AdNetworkAnalyticsSyncQueryResult::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { AdNetworkAnalyticsSyncQueryResult::ORDERING_TYPE }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
      edge.post 'AdMonetizationProperty' do |api|
        api.has_param :aggregation_period, { enum: -> { AdNetworkAnalyticsSyncQueryResult::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { AdNetworkAnalyticsSyncQueryResult::BREAKDOWNS }} }
        api.has_param :filters, { list: 'object' }
        api.has_param :limit, 'int'
        api.has_param :metrics, { list: { enum: -> { AdNetworkAnalyticsSyncQueryResult::METRICS }} }
        api.has_param :ordering_column, { enum: -> { AdNetworkAnalyticsSyncQueryResult::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { AdNetworkAnalyticsSyncQueryResult::ORDERING_TYPE }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :adnetworkanalytics_results do |edge|
      edge.get 'AdNetworkAnalyticsAsyncQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

  end
end
