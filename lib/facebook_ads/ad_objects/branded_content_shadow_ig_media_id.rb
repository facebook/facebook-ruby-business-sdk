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

  class BrandedContentShadowIgMediaId < AdObject
    MEDIA_RELATIONSHIP = [
      "IS_TAGGED",
      "OWNED",
    ]


    field :eligibility_errors, { list: 'string' }
    field :has_permission_for_partnership_ad, 'bool'
    field :id, 'string'
    field :linked_products, { list: 'ProductItem' }
    field :owner_id, 'string'
    field :permalink, 'string'
    field :product_suggestions, { list: 'ProductItem' }
    field :recommended_campaign_objectives, { list: 'string' }
    has_no_get
    has_no_post
    has_no_delete

  end
end
