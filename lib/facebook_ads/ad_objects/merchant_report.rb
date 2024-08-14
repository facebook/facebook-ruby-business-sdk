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

  class MerchantReport < AdObject

    field :add_to_cart, 'int'
    field :brand, 'string'
    field :catalog_segment_id, 'string'
    field :catalog_segment_purchase_value, 'double'
    field :category, 'string'
    field :date, 'string'
    field :latest_date, 'string'
    field :link_clicks, 'int'
    field :merchant_currency, 'string'
    field :page_id, 'string'
    field :product_id, 'string'
    field :product_quantity, 'int'
    field :product_total_value, 'double'
    field :purchase, 'int'
    field :purchase_value, 'double'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
