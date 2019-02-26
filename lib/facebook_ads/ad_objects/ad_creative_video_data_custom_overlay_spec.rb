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
    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
