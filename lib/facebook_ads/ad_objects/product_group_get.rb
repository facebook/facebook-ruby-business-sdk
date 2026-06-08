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

  class ProductGroupGet < AdObject

    field :id, 'int'
    field :mini_shops_product_sets_count, 'int'
    field :product_catalog, 'object'
    field :products, 'object'
    field :representative_item_id, 'string'
    field :retailer_id, 'string'
    field :variants, { list: 'object' }
    has_no_get
    has_no_post
    has_no_delete

  end
end
