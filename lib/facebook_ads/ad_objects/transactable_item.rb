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

  class TransactableItem < AdObject
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


    field :action_title, 'string'
    field :applinks, 'CatalogItemAppLinks'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :currency, 'string'
    field :description, 'string'
    field :duration_time, 'int'
    field :duration_type, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :order_index, 'int'
    field :price, 'string'
    field :price_type, 'string'
    field :sanitized_images, { list: 'string' }
    field :session_type, 'string'
    field :time_padding_after_end, 'int'
    field :title, 'string'
    field :transactable_item_id, 'string'
    field :url, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
    has_no_post
    has_no_delete

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

  end
end
