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

  class AdCampaignGroupIncrementalConversionOptimizationConfig < AdObject

    field :action_type, 'string'
    field :ad_study_end_time, 'datetime'
    field :ad_study_id, 'string'
    field :ad_study_name, 'string'
    field :ad_study_start_time, 'datetime'
    field :cell_id, 'string'
    field :cell_name, 'string'
    field :holdout_size, 'double'
    field :ico_type, 'string'
    field :objectives, { list: 'object' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
