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

  class McomInvoiceDetails < AdObject

    field :additional_amounts, { list: 'object' }
    field :buyer_notes, 'string'
    field :currency_amount, 'object'
    field :external_invoice_id, 'string'
    field :features, 'object'
    field :invoice_created, 'int'
    field :invoice_id, 'string'
    field :invoice_instructions, 'string'
    field :invoice_instructions_image_url, 'string'
    field :invoice_updated, 'int'
    field :outstanding_amount, 'object'
    field :paid_amount, 'object'
    field :payments, { list: 'object' }
    field :platform_logo_url, 'string'
    field :platform_name, 'string'
    field :product_items, { list: 'object' }
    field :shipping_address, 'object'
    field :status, 'string'
    field :tracking_info, 'object'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
