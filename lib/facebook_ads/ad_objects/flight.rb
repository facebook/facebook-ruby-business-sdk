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

  class Flight < AdObject
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


    field :applinks, 'CatalogItemAppLinks'
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
    field :description, 'string'
    field :destination_airport, 'string'
    field :destination_city, 'string'
    field :flight_id, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :oneway_currency, 'string'
    field :oneway_price, 'string'
    field :origin_airport, 'string'
    field :origin_city, 'string'
    field :price, 'string'
    field :product_priority_0, 'double'
    field :product_priority_1, 'double'
    field :product_priority_2, 'double'
    field :product_priority_3, 'double'
    field :product_priority_4, 'double'
    field :sanitized_images, { list: 'string' }
    field :tags, { list: 'string' }
    field :unit_price, 'object'
    field :url, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
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
