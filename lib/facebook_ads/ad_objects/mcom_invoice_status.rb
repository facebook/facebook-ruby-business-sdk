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

  class McomInvoiceStatus < AdObject

    field :bank_account_number, 'string'
    field :bank_code, 'string'
    field :invoice_id, 'string'
    field :invoice_status, 'string'
    field :page_id, 'string'
    field :payment_method, 'string'
    field :payment_type, 'string'
    field :payout_amount, 'object'
    field :slip_verification_error, 'string'
    field :slip_verification_status, 'string'
    field :sof_transfer_id, 'string'
    field :sof_transfer_timestamp, 'int'
    field :transaction_fee, 'object'
    field :transfer_slip, 'string'
    field :transfer_slip_qr_code, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
