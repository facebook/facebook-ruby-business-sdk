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

  class OmegaCustomerTrx < AdObject
    TYPE = [
      "CM",
      "DM",
      "INV",
      "PRO_FORMA",
    ]


    field :ad_account_ids, { list: 'string' }
    field :advertiser_name, 'string'
    field :amount, 'string'
    field :amount_due, 'CurrencyAmount'
    field :billed_amount_details, 'object'
    field :billing_period, 'string'
    field :cdn_download_uri, 'string'
    field :currency, 'string'
    field :download_uri, 'string'
    field :due_date, 'datetime'
    field :entity, 'string'
    field :id, 'string'
    field :invoice_date, 'datetime'
    field :invoice_id, 'string'
    field :invoice_type, 'string'
    field :liability_type, 'string'
    field :payment_status, 'string'
    field :payment_term, 'string'
    field :type, 'string'
    has_no_post
    has_no_delete

    has_edge :campaigns do |edge|
      edge.get
    end

  end
end
