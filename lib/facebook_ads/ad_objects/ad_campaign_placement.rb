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

  class AdCampaignPlacement < AdObject

    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

    has_edge : do |edge|
      edge.get 'AdCampaignPlacementGet' do |api|
        api.has_param :account_id, 'string'
        api.has_param :billing_event, 'string'
        api.has_param :buying_type, 'string'
        api.has_param :destination_type, 'string'
        api.has_param :has_dynamic_creative, 'bool'
        api.has_param :metadata, 'bool'
        api.has_param :objective, 'string'
        api.has_param :optimization_goal, 'string'
        api.has_param :promoted_object, 'string'
      end
    end

  end
end
