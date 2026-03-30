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

  class CommerceOrder < AdObject
    FILTERS = [
      "HAS_CANCELLATIONS",
      "HAS_FULFILLMENTS",
      "HAS_REFUNDS",
      "NO_CANCELLATIONS",
      "NO_REFUNDS",
      "NO_SHIPMENTS",
    ]

    STATE = [
      "COMPLETED",
      "CREATED",
      "FB_PROCESSING",
      "IN_PROGRESS",
    ]


    field :buyer_details, 'object'
    field :channel, 'string'
    field :contains_bopis_items, 'bool'
    field :created, 'string'
    field :estimated_payment_details, 'object'
    field :id, 'string'
    field :is_group_buy, 'bool'
    field :is_test_order, 'bool'
    field :last_updated, 'string'
    field :merchant_order_id, 'string'
    field :order_status, 'object'
    field :pre_order_details, 'object'
    field :selected_shipping_option, 'object'
    field :ship_by_date, 'string'
    field :shipping_address, 'object'
    has_no_post
    has_no_delete

    has_edge :cancellations do |edge|
      edge.get
    end

    has_edge :items do |edge|
      edge.get
    end

    has_edge :payments do |edge|
      edge.get
    end

    has_edge :promotion_details do |edge|
      edge.get
    end

    has_edge :promotions do |edge|
      edge.get
    end

    has_edge :refunds do |edge|
      edge.get
    end

    has_edge :returns do |edge|
      edge.get do |api|
        api.has_param :merchant_return_id, 'string'
        api.has_param :statuses, { list: { enum: %w{APPROVED DISAPPROVED MERCHANT_MARKED_COMPLETED REFUNDED REQUESTED }} }
      end
    end

    has_edge :shipments do |edge|
      edge.get
      edge.post 'CommerceOrder' do |api|
        api.has_param :external_redemption_link, 'string'
        api.has_param :external_shipment_id, 'string'
        api.has_param :fulfillment, 'hash'
        api.has_param :idempotency_key, 'string'
        api.has_param :items, { list: 'hash' }
        api.has_param :merchant_order_reference, 'string'
        api.has_param :shipment_origin_postal_code, 'string'
        api.has_param :shipping_tax_details, 'hash'
        api.has_param :should_use_default_fulfillment_location, 'bool'
        api.has_param :tracking_info, 'hash'
      end
    end

  end
end
