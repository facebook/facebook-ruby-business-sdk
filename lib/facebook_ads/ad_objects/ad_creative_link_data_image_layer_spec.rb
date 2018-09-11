# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
    field :float_with_margin, 'bool'
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
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
