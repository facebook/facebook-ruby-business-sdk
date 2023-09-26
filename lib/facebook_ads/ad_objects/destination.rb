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

  class Destination < AdObject
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


    field :address, 'string'
    field :applinks, 'CatalogItemAppLinks'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :currency, 'string'
    field :description, 'string'
    field :destination_id, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :name, 'string'
    field :price, 'string'
    field :price_change, 'string'
    field :sanitized_images, { list: 'string' }
    field :types, { list: 'string' }
    field :unit_price, 'object'
    field :url, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
    has_no_post
    has_no_delete

    has_edge :augmented_realities_metadata do |edge|
      edge.get
    end

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

    has_edge :videos_metadata do |edge|
      edge.get 'DynamicVideoMetadata'
    end

  end
end
