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

  class ShadowIgMediaProductTags < AdObject

    field :image_url, 'string'
    field :is_checkout, 'bool'
    field :merchant_id, 'int'
    field :name, 'string'
    field :price_string, 'string'
    field :product_id, 'int'
    field :review_status, 'string'
    field :stripped_price_string, 'string'
    field :stripped_sale_price_string, 'string'
    field :x, 'double'
    field :y, 'double'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
