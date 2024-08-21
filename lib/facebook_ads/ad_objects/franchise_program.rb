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

  class FranchiseProgram < AdObject

    field :business_asset_group, 'BusinessAssetGroup'
    field :creator_business, 'Business'
    field :description, 'string'
    field :end_date, 'datetime'
    field :id, 'string'
    field :name, 'string'
    field :program_access_type, 'string'
    field :program_approval_type, 'string'
    field :program_image_link, 'string'
    field :program_url, 'string'
    field :shared_custom_audience, 'CustomAudience'
    field :start_date, 'datetime'
    has_no_post
    has_no_delete

  end
end
