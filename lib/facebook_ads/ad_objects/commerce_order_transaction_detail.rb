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

  class CommerceOrderTransactionDetail < AdObject

    field :net_payment_amount, 'object'
    field :order_details, 'CommerceOrder'
    field :payout_reference_id, 'string'
    field :processing_fee, 'object'
    field :tax_rate, 'string'
    field :transaction_date, 'string'
    field :transaction_type, 'string'
    field :transfer_id, 'string'
    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

    has_edge :items do |edge|
      edge.get
    end

    has_edge :tax_details do |edge|
      edge.get
    end

  end
end
