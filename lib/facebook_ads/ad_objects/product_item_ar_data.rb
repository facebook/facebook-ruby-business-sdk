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
