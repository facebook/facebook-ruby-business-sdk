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

  class OffsiteSignalContainerBusinessObject < AdObject

    field :business, 'Business'
    field :id, 'string'
    field :is_eligible_for_sharing_to_ad_account, 'bool'
    field :is_eligible_for_sharing_to_business, 'bool'
    field :is_unavailable, 'bool'
    field :name, 'string'
    field :primary_container_id, 'string'
    has_no_post
    has_no_delete

    has_edge :linked_application do |edge|
      edge.get 'AdsDataset'
    end

    has_edge :linked_page do |edge|
      edge.get 'Page'
    end

  end
end
