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

  class AdCreativeLinkDataCustomOverlaySpec < AdObject
    BACKGROUND_COLOR = [
      "background_000000",
      "background_0090ff",
      "background_00af4c",
      "background_595959",
      "background_755dde",
      "background_e50900",
      "background_f23474",
      "background_f78400",
      "background_ffffff",
    ]

    FONT = [
      "droid_serif_regular",
      "lato_regular",
      "noto_sans_regular",
      "nunito_sans_bold",
      "open_sans_bold",
      "pt_serif_bold",
      "roboto_condensed_regular",
      "roboto_medium",
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
      "bottom_left",
      "bottom_right",
      "top_left",
      "top_right",
    ]

    TEMPLATE = [
      "pill_with_text",
    ]

    TEXT_COLOR = [
      "text_000000",
      "text_007ad0",
      "text_009c2a",
      "text_646464",
      "text_755dde",
      "text_c91b00",
      "text_f23474",
      "text_f78400",
      "text_ffffff",
    ]


    field :background_color, { enum: -> { BACKGROUND_COLOR }}
    field :float_with_margin, 'bool'
    field :font, { enum: -> { FONT }}
    field :option, { enum: -> { OPTION }}
    field :position, { enum: -> { POSITION }}
    field :render_with_icon, 'bool'
    field :template, { enum: -> { TEMPLATE }}
    field :text_color, { enum: -> { TEXT_COLOR }}
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
