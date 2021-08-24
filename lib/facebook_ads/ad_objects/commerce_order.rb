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

    REASON_CODE = [
      "BUYERS_REMORSE",
      "DAMAGED_GOODS",
      "FACEBOOK_INITIATED",
      "NOT_AS_DESCRIBED",
      "QUALITY_ISSUE",
      "REFUND_COMPROMISED",
      "REFUND_FOR_RETURN",
      "REFUND_REASON_OTHER",
      "REFUND_SFI_FAKE",
      "REFUND_SFI_REAL",
      "WRONG_ITEM",
    ]


    field :buyer_details, 'object'
    field :channel, 'string'
    field :created, 'string'
    field :estimated_payment_details, 'object'
    field :id, 'string'
    field :is_group_buy, 'bool'
    field :is_test_order, 'bool'
    field :last_updated, 'string'
    field :merchant_order_id, 'string'
    field :order_status, 'object'
    field :selected_shipping_option, 'object'
    field :ship_by_date, 'string'
    field :shipping_address, 'object'
    has_no_post
    has_no_delete

    has_edge :acknowledge_order do |edge|
      edge.post 'CommerceOrder' do |api|
        api.has_param :idempotency_key, 'string'
        api.has_param :merchant_order_reference, 'string'
        api.has_param :return_error_response, 'bool'
      end
    end

    has_edge :cancellations do |edge|
      edge.get
      edge.post 'CommerceOrder' do |api|
        api.has_param :cancel_reason, 'hash'
        api.has_param :idempotency_key, 'string'
        api.has_param :items, { list: 'hash' }
        api.has_param :restock_items, 'bool'
      end
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
      edge.post 'CommerceOrder' do |api|
        api.has_param :deductions, { list: 'hash' }
        api.has_param :idempotency_key, 'string'
        api.has_param :items, { list: 'hash' }
        api.has_param :reason_code, { enum: -> { CommerceOrder::REASON_CODE }}
        api.has_param :reason_text, 'string'
        api.has_param :return_id, 'string'
        api.has_param :shipping, 'hash'
      end
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
        api.has_param :tracking_info, 'hash'
      end
    end

    has_edge :update_shipment do |edge|
      edge.post 'CommerceOrder' do |api|
        api.has_param :fulfillment_id, 'string'
        api.has_param :idempotency_key, 'string'
        api.has_param :tracking_info, 'hash'
      end
    end

  end
end
