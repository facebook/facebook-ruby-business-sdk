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

  class AdCampaignDeliveryStats < AdObject

    field :bid_recommendation, 'int'
    field :current_average_cost, 'double'
    field :last_significant_edit_ts, 'int'
    field :learning_stage_exit_info, 'object'
    field :learning_stage_info, 'AdCampaignLearningStageInfo'
    field :unsupported_features, { list: 'hash' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
