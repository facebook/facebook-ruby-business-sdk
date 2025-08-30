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

  class PaymentEnginePayment < AdObject
    REASON = [
      "BANNED_USER",
      "DENIED_REFUND",
      "GRANTED_REPLACEMENT_ITEM",
    ]


    field :actions, { list: 'object' }
    field :application, 'Application'
    field :country, 'string'
    field :created_time, 'datetime'
    field :disputes, { list: 'object' }
    field :fraud_status, 'string'
    field :fulfillment_status, 'string'
    field :id, 'string'
    field :is_from_ad, 'bool'
    field :is_from_page_post, 'bool'
    field :items, { list: 'object' }
    field :payout_foreign_exchange_rate, 'double'
    field :phone_support_eligible, 'bool'
    field :platform, 'string'
    field :refundable_amount, 'CurrencyAmount'
    field :request_id, 'string'
    field :tax, 'string'
    field :tax_country, 'string'
    field :test, 'int'
    field :user, 'User'
    has_no_post
    has_no_delete

    has_edge :dispute do |edge|
      edge.post 'PaymentEnginePayment' do |api|
        api.has_param :reason, { enum: -> { PaymentEnginePayment::REASON }}
      end
    end

    has_edge :refunds do |edge|
      edge.post 'PaymentEnginePayment' do |api|
        api.has_param :amount, 'double'
        api.has_param :currency, 'string'
        api.has_param :reason, { enum: -> { PaymentEnginePayment::REASON }}
      end
    end

  end
end
