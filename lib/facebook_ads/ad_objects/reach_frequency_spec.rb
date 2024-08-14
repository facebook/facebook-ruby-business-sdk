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

  class ReachFrequencySpec < AdObject

    field :countries, { list: 'string' }
    field :default_creation_data, 'object'
    field :global_io_max_campaign_duration, 'int'
    field :max_campaign_duration, 'object'
    field :max_days_to_finish, 'object'
    field :max_pause_without_prediction_rerun, 'object'
    field :min_campaign_duration, 'object'
    field :min_reach_limits, 'object'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
