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

  class AdCreativeVideoDataCustomOverlaySpec < AdObject
    BACKGROUND_OPACITY = [
      "half",
      "solid",
    ]

    OPTION = [
      "bank_transfer",
      "boleto",
      "cash_on_delivery",
      "discount_with_boleto",
      "fast_delivery",
      "free_shipping",
      "home_delivery",
      "inventory",
      "pay_at_hotel",
      "pay_on_arrival",
    ]

    POSITION = [
      "middle_center",
      "middle_left",
      "middle_right",
      "top_center",
      "top_left",
      "top_right",
    ]

    TEMPLATE = [
      "rectangle_with_text",
    ]


    field :background_color, 'string'
    field :background_opacity, { enum: -> { BACKGROUND_OPACITY }}
    field :duration, 'int'
    field :float_with_margin, 'bool'
    field :full_width, 'bool'
    field :option, { enum: -> { OPTION }}
    field :position, { enum: -> { POSITION }}
    field :start, 'int'
    field :template, { enum: -> { TEMPLATE }}
    field :text_color, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
