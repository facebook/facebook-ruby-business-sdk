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

  class AdCreativeLinkDataImageLayerSpec < AdObject
    BLENDING_MODE = [
      "lighten",
      "multiply",
      "normal",
    ]

    FRAME_SOURCE = [
      "custom",
    ]

    IMAGE_SOURCE = [
      "catalog",
    ]

    LAYER_TYPE = [
      "frame_overlay",
      "image",
      "text_overlay",
    ]

    OVERLAY_POSITION = [
      "bottom",
      "bottom_left",
      "bottom_right",
      "center",
      "left",
      "right",
      "top",
      "top_left",
      "top_right",
    ]

    OVERLAY_SHAPE = [
      "circle",
      "none",
      "pill",
      "rectangle",
      "triangle",
    ]

    TEXT_FONT = [
      "droid_serif_regular",
      "lato_regular",
      "noto_sans_regular",
      "nunito_sans_bold",
      "open_sans_bold",
      "open_sans_condensed_bold",
      "pt_serif_bold",
      "roboto_condensed_regular",
      "roboto_medium",
    ]


    field :blending_mode, { enum: -> { BLENDING_MODE }}
    field :content, 'object'
    field :frame_image_hash, 'string'
    field :frame_source, { enum: -> { FRAME_SOURCE }}
    field :image_source, { enum: -> { IMAGE_SOURCE }}
    field :layer_type, { enum: -> { LAYER_TYPE }}
    field :opacity, 'int'
    field :overlay_position, { enum: -> { OVERLAY_POSITION }}
    field :overlay_shape, { enum: -> { OVERLAY_SHAPE }}
    field :scale, 'int'
    field :shape_color, 'string'
    field :text_color, 'string'
    field :text_font, { enum: -> { TEXT_FONT }}
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
