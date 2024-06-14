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

  class BusinessFranchiseConfig < AdObject

    field :active_partner_count, 'int'
    field :agency_business, 'Business'
    field :agency_business_asset_group, 'BusinessAssetGroup'
    field :brand_name, 'string'
    field :business, 'Business'
    field :business_vertical, 'string'
    field :id, 'string'
    field :partner_count, 'int'
    field :pending_agency_business, 'string'
    field :program_count, 'int'
    field :shared_business_asset_group, 'BusinessAssetGroup'
    field :shared_creative_folder_count, 'int'
    field :shared_custom_audience_count, 'int'
    has_no_post
    has_no_delete

  end
end
