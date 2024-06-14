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

  class Transaction < AdObject
    PRODUCT_TYPE = [
      "cp_return_label",
      "facebook_ad",
      "ig_ad",
      "whatsapp",
      "workplace",
    ]


    field :account_id, 'string'
    field :app_amount, 'object'
    field :billing_end_time, 'int'
    field :billing_reason, 'string'
    field :billing_start_time, 'int'
    field :card_charge_mode, 'int'
    field :charge_type, 'string'
    field :checkout_campaign_group_id, 'string'
    field :credential_id, 'string'
    field :fatura_id, 'int'
    field :id, 'string'
    field :is_business_ec_charge, 'bool'
    field :is_funding_event, 'bool'
    field :payment_option, 'string'
    field :product_type, { enum: -> { PRODUCT_TYPE }}
    field :provider_amount, 'object'
    field :status, 'string'
    field :time, 'int'
    field :tracking_id, 'string'
    field :transaction_type, 'string'
    field :tx_type, 'int'
    field :vat_invoice_id, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
