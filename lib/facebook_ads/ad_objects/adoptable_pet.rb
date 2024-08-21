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

  class AdoptablePet < AdObject
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


    field :adoptable_pet_id, 'string'
    field :adoption_application_form_url, 'string'
    field :age_bucket, 'string'
    field :animal_type, 'string'
    field :applinks, 'CatalogItemAppLinks'
    field :availability, 'string'
    field :breed, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :coat_length, 'string'
    field :color, 'string'
    field :currency, 'string'
    field :description, 'string'
    field :features, { list: 'string' }
    field :gender, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :name, 'string'
    field :price, 'string'
    field :sanitized_images, { list: 'string' }
    field :secondary_color, 'string'
    field :shelter_email, 'string'
    field :shelter_name, 'string'
    field :shelter_page_id, 'Page'
    field :shelter_phone, 'string'
    field :size, 'string'
    field :tertiary_color, 'string'
    field :url, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
    has_no_post
    has_no_delete

    has_edge :augmented_realities_metadata do |edge|
      edge.get 'DynamicArMetadata'
    end

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

    has_edge :videos_metadata do |edge|
      edge.get 'DynamicVideoMetadata'
    end

  end
end
