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

  class CustomConversion < AdObject
    CUSTOM_EVENT_TYPE = [
      "ADD_PAYMENT_INFO",
      "ADD_TO_CART",
      "ADD_TO_WISHLIST",
      "COMPLETE_REGISTRATION",
      "CONTACT",
      "CONTENT_VIEW",
      "CUSTOMIZE_PRODUCT",
      "DONATE",
      "FACEBOOK_SELECTED",
      "FIND_LOCATION",
      "INITIATED_CHECKOUT",
      "LEAD",
      "LISTING_INTERACTION",
      "OTHER",
      "PURCHASE",
      "SCHEDULE",
      "SEARCH",
      "START_TRIAL",
      "SUBMIT_APPLICATION",
      "SUBSCRIBE",
    ]


    field :account_id, 'string'
    field :aggregation_rule, 'string'
    field :business, 'Business'
    field :creation_time, 'datetime'
    field :custom_event_type, { enum: -> { CUSTOM_EVENT_TYPE }}
    field :data_sources, { list: 'ExternalEventSource' }
    field :default_conversion_value, 'int'
    field :description, 'string'
    field :event_source_type, 'string'
    field :first_fired_time, 'datetime'
    field :id, 'string'
    field :is_archived, 'bool'
    field :is_unavailable, 'bool'
    field :last_fired_time, 'datetime'
    field :name, 'string'
    field :offline_conversion_data_set, 'OfflineConversionDataSet'
    field :pixel, 'AdsPixel'
    field :retention_days, 'int'
    field :rule, 'string'
    field :advanced_rule, 'string'
    field :event_source_id, 'string'
    field :custom_conversion_id, 'string'

    has_edge :stats do |edge|
      edge.get 'CustomConversionStatsResult' do |api|
        api.has_param :aggregation, { enum: -> { CustomConversionStatsResult::AGGREGATION }}
        api.has_param :end_time, 'datetime'
        api.has_param :start_time, 'datetime'
      end
    end

  end
end
