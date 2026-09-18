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

  class ProductCatalogProductsPost < AdObject
    AGE_GROUP = [
      "ADULT",
      "ALL_AGES",
      "INFANT",
      "KIDS",
      "NEWBORN",
      "TEEN",
      "TODDLER",
      "UNKNOWN",
    ]

    AVAILABILITY = [
      "AVAILABLE_FOR_ORDER",
      "DISCONTINUED",
      "IN_STOCK",
      "MARK_AS_EXPIRED",
      "MARK_AS_SOLD",
      "OUT_OF_STOCK",
      "PENDING",
      "PREORDER",
      "UNKNOWN",
    ]

    CONDITION = [
      "PC_CPO",
      "PC_NEW",
      "PC_OPEN_BOX_NEW",
      "PC_REFURBISHED",
      "PC_USED",
      "PC_USED_FAIR",
      "PC_USED_GOOD",
      "PC_USED_LIKE_NEW",
      "UNKNOWN",
    ]

    GENDER = [
      "FEMALE",
      "MALE",
      "UNISEX",
      "UNKNOWN",
    ]


    field :additional_image_cdn_urls, { list: { list: 'object' } }
    field :additional_image_urls, { list: 'string' }
    field :additional_variant_attributes, { list: 'object' }
    field :age_group, { enum: -> { AGE_GROUP }}
    field :applinks, 'object'
    field :availability, { enum: -> { AVAILABILITY }}
    field :available_quantity_to_sell_on_facebook, 'int'
    field :base_commission_rate, 'int'
    field :brand, 'string'
    field :capabilities_disabled_by_user, { list: 'string' }
    field :capability_features, { list: 'string' }
    field :capability_to_review_status, { list: 'object' }
    field :category, 'string'
    field :category_specific_fields, 'hash'
    field :channels_to_integrity_status, 'object'
    field :color, 'string'
    field :commerce_insights, 'object'
    field :condition, { enum: -> { CONDITION }}
    field :currency, 'string'
    field :custom_data, { list: 'object' }
    field :custom_label_0, 'string'
    field :custom_label_1, 'string'
    field :custom_label_2, 'string'
    field :custom_label_3, 'string'
    field :custom_label_4, 'string'
    field :custom_number_0, 'string'
    field :custom_number_1, 'string'
    field :custom_number_2, 'string'
    field :custom_number_3, 'string'
    field :custom_number_4, 'string'
    field :da_display_preview_url, 'string'
    field :description, 'string'
    field :enabled_capability_to_review_status, { list: 'object' }
    field :errors, { list: 'object' }
    field :expiration_date, 'string'
    field :fb_product_category, 'string'
    field :gender, { enum: -> { GENDER }}
    field :gtin, 'string'
    field :id, 'int'
    field :image_cdn_urls, { list: 'object' }
    field :image_fetch_status, 'string'
    field :image_url, 'string'
    field :images, { list: 'string' }
    field :importer_name, 'string'
    field :invalidation_errors, { list: 'object' }
    field :inventory, 'int'
    field :is_bundle_hero, 'bool'
    field :manufacturer_info, 'string'
    field :manufacturer_part_number, 'string'
    field :material, 'string'
    field :mobile_link, 'string'
    field :name, 'string'
    field :ordering_index, 'int'
    field :origin_country, 'string'
    field :override_details, 'object'
    field :pattern, 'string'
    field :post_conversion_signal_based_enforcement_appeal_eligibility, 'bool'
    field :price, 'string'
    field :product_catalog, 'object'
    field :product_feed, 'object'
    field :product_group, 'object'
    field :product_priority_0, 'double'
    field :product_priority_1, 'double'
    field :product_priority_2, 'double'
    field :product_priority_3, 'double'
    field :product_priority_4, 'double'
    field :product_relationship, 'string'
    field :product_sets, 'object'
    field :product_type, 'string'
    field :quantity_to_sell_on_facebook, 'int'
    field :retailer_id, 'string'
    field :retailer_product_group_id, 'string'
    field :review_rejection_reasons, { list: 'string' }
    field :review_status, 'string'
    field :rich_text_description, 'string'
    field :sale_price, 'string'
    field :sale_price_end_date, 'string'
    field :sale_price_start_date, 'string'
    field :shipping_weight_unit, 'string'
    field :shipping_weight_value, 'double'
    field :short_description, 'string'
    field :size, 'string'
    field :status, 'string'
    field :tags, { list: 'string' }
    field :url, 'string'
    field :validation_errors, 'object'
    field :vendor_id, 'string'
    field :video_fetch_status, 'string'
    field :videos, { list: 'object' }
    field :videos_metadata, 'object'
    field :visibility, 'string'
    field :wa_compliance_category, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
