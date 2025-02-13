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

  class VehicleOffer < AdObject
    IMAGE_FETCH_STATUS = [
      "DIRECT_UPLOAD",
      "FETCHED",
      "FETCH_FAILED",
      "NO_STATUS",
      "OUTDATED",
      "PARTIAL_FETCH",
    ]

    VISIBILITY = [
      "PUBLISHED",
      "STAGING",
    ]


    field :amount_currency, 'string'
    field :amount_percentage, 'double'
    field :amount_price, 'string'
    field :amount_qualifier, 'string'
    field :applinks, 'CatalogItemAppLinks'
    field :availability, 'string'
    field :body_style, 'string'
    field :cashback_currency, 'string'
    field :cashback_price, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :currency, 'string'
    field :custom_label_0, 'string'
    field :custom_label_1, 'string'
    field :custom_label_2, 'string'
    field :custom_label_3, 'string'
    field :custom_label_4, 'string'
    field :custom_number_0, 'int'
    field :custom_number_1, 'int'
    field :custom_number_2, 'int'
    field :custom_number_3, 'int'
    field :custom_number_4, 'int'
    field :dma_codes, { list: 'string' }
    field :downpayment_currency, 'string'
    field :downpayment_price, 'string'
    field :downpayment_qualifier, 'string'
    field :drivetrain, 'string'
    field :end_date, 'string'
    field :end_time, 'int'
    field :exterior_color, 'string'
    field :fuel_type, 'string'
    field :generation, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :interior_color, 'string'
    field :interior_upholstery, 'string'
    field :make, 'string'
    field :model, 'string'
    field :offer_description, 'string'
    field :offer_disclaimer, 'string'
    field :offer_type, 'string'
    field :price, 'string'
    field :product_priority_0, 'double'
    field :product_priority_1, 'double'
    field :product_priority_2, 'double'
    field :product_priority_3, 'double'
    field :product_priority_4, 'double'
    field :sanitized_images, { list: 'string' }
    field :start_date, 'string'
    field :start_time, 'int'
    field :term_length, 'int'
    field :term_qualifier, 'string'
    field :title, 'string'
    field :transmission, 'string'
    field :trim, 'string'
    field :unit_price, 'object'
    field :url, 'string'
    field :vehicle_offer_id, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
    field :year, 'int'
    has_no_post
    has_no_delete

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

    has_edge :override_details do |edge|
      edge.get 'OverrideDetails' do |api|
        api.has_param :keys, { list: 'string' }
        api.has_param :type, { enum: -> { OverrideDetails::TYPE }}
      end
    end

    has_edge :videos_metadata do |edge|
      edge.get 'DynamicVideoMetadata'
    end

  end
end
