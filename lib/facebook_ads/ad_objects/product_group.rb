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

  class ProductGroup < AdObject

    field :id, 'string'
    field :product_catalog, 'ProductCatalog'
    field :retailer_id, 'string'
    field :variants, { list: 'ProductVariant' }

    has_edge :products do |edge|
      edge.get 'ProductItem'
      edge.post 'ProductItem' do |api|
        api.has_param :additional_image_urls, { list: 'string' }
        api.has_param :additional_variant_attributes, 'hash'
        api.has_param :android_app_name, 'string'
        api.has_param :android_class, 'string'
        api.has_param :android_package, 'string'
        api.has_param :android_url, 'string'
        api.has_param :availability, { enum: -> { ProductItem::AVAILABILITY }}
        api.has_param :brand, 'string'
        api.has_param :category, 'string'
        api.has_param :checkout_url, 'string'
        api.has_param :color, 'string'
        api.has_param :commerce_tax_category, { enum: -> { ProductItem::COMMERCE_TAX_CATEGORY }}
        api.has_param :condition, { enum: -> { ProductItem::CONDITION }}
        api.has_param :currency, 'string'
        api.has_param :custom_data, 'hash'
        api.has_param :custom_label_0, 'string'
        api.has_param :custom_label_1, 'string'
        api.has_param :custom_label_2, 'string'
        api.has_param :custom_label_3, 'string'
        api.has_param :custom_label_4, 'string'
        api.has_param :custom_number_0, 'int'
        api.has_param :custom_number_1, 'int'
        api.has_param :custom_number_2, 'int'
        api.has_param :custom_number_3, 'int'
        api.has_param :custom_number_4, 'int'
        api.has_param :description, 'string'
        api.has_param :expiration_date, 'string'
        api.has_param :fb_product_category, 'string'
        api.has_param :gender, { enum: -> { ProductItem::GENDER }}
        api.has_param :gtin, 'string'
        api.has_param :image_url, 'string'
        api.has_param :inventory, 'int'
        api.has_param :ios_app_name, 'string'
        api.has_param :ios_app_store_id, 'int'
        api.has_param :ios_url, 'string'
        api.has_param :ipad_app_name, 'string'
        api.has_param :ipad_app_store_id, 'int'
        api.has_param :ipad_url, 'string'
        api.has_param :iphone_app_name, 'string'
        api.has_param :iphone_app_store_id, 'int'
        api.has_param :iphone_url, 'string'
        api.has_param :launch_date, 'string'
        api.has_param :manufacturer_part_number, 'string'
        api.has_param :marked_for_product_launch, { enum: -> { ProductItem::MARKED_FOR_PRODUCT_LAUNCH }}
        api.has_param :material, 'string'
        api.has_param :mobile_link, 'string'
        api.has_param :name, 'string'
        api.has_param :offer_price_amount, 'int'
        api.has_param :offer_price_end_date, 'datetime'
        api.has_param :offer_price_start_date, 'datetime'
        api.has_param :ordering_index, 'int'
        api.has_param :pattern, 'string'
        api.has_param :price, 'int'
        api.has_param :product_type, 'string'
        api.has_param :quantity_to_sell_on_facebook, 'int'
        api.has_param :retailer_id, 'string'
        api.has_param :return_policy_days, 'int'
        api.has_param :sale_price, 'int'
        api.has_param :sale_price_end_date, 'datetime'
        api.has_param :sale_price_start_date, 'datetime'
        api.has_param :short_description, 'string'
        api.has_param :size, 'string'
        api.has_param :start_date, 'string'
        api.has_param :url, 'string'
        api.has_param :visibility, { enum: -> { ProductItem::VISIBILITY }}
        api.has_param :windows_phone_app_id, 'string'
        api.has_param :windows_phone_app_name, 'string'
        api.has_param :windows_phone_url, 'string'
      end
    end

  end
end
