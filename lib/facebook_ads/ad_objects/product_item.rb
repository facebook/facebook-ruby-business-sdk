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

  class ProductItem < AdObject
    AGE_GROUP = [
      "adult",
      "infant",
      "kids",
      "newborn",
      "toddler",
    ]

    AVAILABILITY = [
      "in stock",
      "out of stock",
      "preorder",
      "available for order",
      "discontinued",
      "pending",
    ]

    CONDITION = [
      "new",
      "refurbished",
      "used",
      "cpo",
    ]

    GENDER = [
      "female",
      "male",
      "unisex",
    ]

    REVIEW_STATUS = [
      "",
      "pending",
      "rejected",
      "approved",
      "outdated",
    ]

    SHIPPING_WEIGHT_UNIT = [
      "g",
      "kg",
      "oz",
      "lb",
    ]

    VISIBILITY = [
      "staging",
      "published",
    ]


    field :additional_image_urls, { list: 'string' }
    field :additional_variant_attributes, { list: 'object' }
    field :age_group, { enum: -> { AGE_GROUP }}
    field :applinks, 'AppLinks'
    field :availability, { enum: -> { AVAILABILITY }}
    field :brand, 'string'
    field :category, 'string'
    field :color, 'string'
    field :commerce_insights, 'ProductItemCommerceInsights'
    field :condition, { enum: -> { CONDITION }}
    field :currency, 'string'
    field :custom_data, { list: 'object' }
    field :custom_label_0, 'string'
    field :custom_label_1, 'string'
    field :custom_label_2, 'string'
    field :custom_label_3, 'string'
    field :custom_label_4, 'string'
    field :description, 'string'
    field :expiration_date, 'string'
    field :gender, { enum: -> { GENDER }}
    field :gtin, 'string'
    field :id, 'string'
    field :image_url, 'string'
    field :inventory, 'int'
    field :manufacturer_part_number, 'string'
    field :material, 'string'
    field :name, 'string'
    field :ordering_index, 'int'
    field :pattern, 'string'
    field :price, 'string'
    field :product_catalog, 'ProductCatalog'
    field :product_feed, 'ProductFeed'
    field :product_group, 'ProductGroup'
    field :product_type, 'string'
    field :retailer_id, 'string'
    field :retailer_product_group_id, 'string'
    field :review_rejection_reasons, { list: 'string' }
    field :review_status, { enum: -> { REVIEW_STATUS }}
    field :sale_price, 'string'
    field :sale_price_end_date, 'string'
    field :sale_price_start_date, 'string'
    field :shipping_weight_unit, { enum: -> { SHIPPING_WEIGHT_UNIT }}
    field :shipping_weight_value, 'double'
    field :short_description, 'string'
    field :size, 'string'
    field :start_date, 'string'
    field :url, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
    field :requests, { list: 'hash' }
    field :android_app_name, 'string'
    field :android_class, 'string'
    field :android_package, 'string'
    field :android_url, 'string'
    field :checkout_url, 'string'
    field :ios_app_name, 'string'
    field :ios_app_store_id, 'int'
    field :ios_url, 'string'
    field :ipad_app_name, 'string'
    field :ipad_app_store_id, 'int'
    field :ipad_url, 'string'
    field :iphone_app_name, 'string'
    field :iphone_app_store_id, 'int'
    field :iphone_url, 'string'
    field :offer_price_amount, 'int'
    field :offer_price_end_date, 'object'
    field :offer_price_start_date, 'object'
    field :windows_phone_app_id, 'string'
    field :windows_phone_app_name, 'string'
    field :windows_phone_url, 'string'

    has_edge :product_sets do |edge|
      edge.get 'ProductSet'
    end

  end
end
