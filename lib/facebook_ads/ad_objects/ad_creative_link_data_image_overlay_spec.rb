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

  class AdCreativeLinkDataImageOverlaySpec < AdObject
    OVERLAY_TEMPLATE = [
      "pill_with_text",
      "circle_with_text",
      "triangle_with_text",
    ]

    POSITION = [
      "top_left",
      "top_right",
      "bottom_left",
      "bottom_right",
    ]

    TEXT_FONT = [
      "droid_serif_regular",
      "lato_regular",
      "nunito_sans_bold",
      "open_sans_bold",
      "open_sans_condensed_bold",
      "pt_serif_bold",
      "roboto_medium",
      "roboto_condensed_regular",
      "noto_sans_regular",
      "dynads_hybrid_bold",
    ]

    TEXT_TYPE = [
      "price",
      "strikethrough_price",
      "percentage_off",
    ]

    THEME_COLOR = [
      "background_e50900_text_ffffff",
      "background_f78400_text_ffffff",
      "background_00af4c_text_ffffff",
      "background_0090ff_text_ffffff",
      "background_755dde_text_ffffff",
      "background_f23474_text_ffffff",
      "background_595959_text_ffffff",
      "background_000000_text_ffffff",
      "background_ffffff_text_c91b00",
      "background_ffffff_text_f78400",
      "background_ffffff_text_009c2a",
      "background_ffffff_text_007ad0",
      "background_ffffff_text_755dde",
      "background_ffffff_text_f23474",
      "background_ffffff_text_646464",
      "background_ffffff_text_000000",
    ]


    field :float_with_margin, 'bool'
    field :overlay_template, { enum: -> { OVERLAY_TEMPLATE }}
    field :position, { enum: -> { POSITION }}
    field :text_font, { enum: -> { TEXT_FONT }}
    field :text_template_tags, { list: 'string' }
    field :text_type, { enum: -> { TEXT_TYPE }}
    field :theme_color, { enum: -> { THEME_COLOR }}
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
