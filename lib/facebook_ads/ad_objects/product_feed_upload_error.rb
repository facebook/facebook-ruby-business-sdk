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

  class ProductFeedUploadError < AdObject
    AFFECTED_SURFACES = [
      "Dynamic Ads",
      "Marketplace",
      "US Marketplace",
    ]

    SEVERITY = [
      "fatal",
      "warning",
    ]

    ERROR_PRIORITY = [
      "HIGH",
      "LOW",
      "MEDIUM",
    ]


    field :affected_surfaces, { list: { enum: -> { AFFECTED_SURFACES }} }
    field :description, 'string'
    field :error_type, 'string'
    field :id, 'string'
    field :severity, { enum: -> { SEVERITY }}
    field :summary, 'string'
    field :total_count, 'int'
    has_no_post
    has_no_delete

    has_edge :samples do |edge|
      edge.get 'ProductFeedUploadErrorSample'
    end

    has_edge :suggested_rules do |edge|
      edge.get 'ProductFeedRuleSuggestion'
    end

  end
end
