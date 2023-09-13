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

  class ProductItemArData < AdObject
    SURFACES = [
      "B2C_MARKETPLACE",
      "C2C_MARKETPLACE",
      "DA",
      "DAILY_DEALS",
      "DAILY_DEALS_LEGACY",
      "IG_PRODUCT_TAGGING",
      "MARKETPLACE",
      "MARKETPLACE_ADS_DEPRECATED",
      "MARKETPLACE_SHOPS",
      "MINI_SHOPS",
      "OFFLINE_CONVERSIONS",
      "SHOPS",
      "UNIVERSAL_CHECKOUT",
      "WHATSAPP",
    ]


    field :container_effect, 'string'
    field :effect_icon, 'string'
    field :effect_parameters, 'object'
    field :picker_icon, 'string'
    field :product_ar_link, 'object'
    field :state, 'string'
    field :surfaces, { list: { enum: -> { SURFACES }} }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
