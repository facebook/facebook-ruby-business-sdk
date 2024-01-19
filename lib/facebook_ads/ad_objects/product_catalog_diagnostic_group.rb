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

  class ProductCatalogDiagnosticGroup < AdObject
    AFFECTED_CHANNELS = [
      "business_inbox_in_messenger",
      "shops",
      "test_capability",
      "universal_checkout",
      "us_marketplace",
    ]

    AFFECTED_ENTITY = [
      "product_catalog",
      "product_item",
      "product_set",
    ]

    AFFECTED_FEATURES = [
      "augmented_reality",
      "checkout",
    ]

    SEVERITY = [
      "MUST_FIX",
      "OPPORTUNITY",
    ]

    TYPE = [
      "AR_VISIBILITY_ISSUES",
      "ATTRIBUTES_INVALID",
      "ATTRIBUTES_MISSING",
      "CATEGORY",
      "CHECKOUT",
      "DA_VISIBILITY_ISSUES",
      "IMAGE_QUALITY",
      "LOW_QUALITY_TITLE_AND_DESCRIPTION",
      "POLICY_VIOLATION",
      "SHOPS_VISIBILITY_ISSUES",
    ]

    AFFECTED_ENTITIES = [
      "product_catalog",
      "product_item",
      "product_set",
    ]

    SEVERITIES = [
      "MUST_FIX",
      "OPPORTUNITY",
    ]

    TYPES = [
      "AR_VISIBILITY_ISSUES",
      "ATTRIBUTES_INVALID",
      "ATTRIBUTES_MISSING",
      "CATEGORY",
      "CHECKOUT",
      "DA_VISIBILITY_ISSUES",
      "IMAGE_QUALITY",
      "LOW_QUALITY_TITLE_AND_DESCRIPTION",
      "POLICY_VIOLATION",
      "SHOPS_VISIBILITY_ISSUES",
    ]


    field :affected_channels, { list: { enum: -> { AFFECTED_CHANNELS }} }
    field :affected_entity, { enum: -> { AFFECTED_ENTITY }}
    field :affected_features, { list: { enum: -> { AFFECTED_FEATURES }} }
    field :diagnostics, { list: 'object' }
    field :error_code, 'int'
    field :number_of_affected_entities, 'int'
    field :number_of_affected_items, 'int'
    field :severity, { enum: -> { SEVERITY }}
    field :subtitle, 'string'
    field :title, 'string'
    field :type, { enum: -> { TYPE }}
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
