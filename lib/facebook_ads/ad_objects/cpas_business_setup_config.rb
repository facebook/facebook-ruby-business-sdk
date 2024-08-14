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

  class CpasBusinessSetupConfig < AdObject

    field :accepted_collab_ads_tos, 'bool'
    field :business, 'Business'
    field :business_capabilities_status, { list: 'hash' }
    field :capabilities_compliance_status, { list: 'hash' }
    field :id, 'string'
    field :ad_accounts, { list: 'string' }
    has_no_post
    has_no_delete

    has_edge :ad_accounts do |edge|
      edge.get 'AdAccount'
    end

  end
end
