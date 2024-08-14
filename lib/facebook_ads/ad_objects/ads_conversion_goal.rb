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

  class AdsConversionGoal < AdObject

    field :ad_account_id, 'string'
    field :conversion_event_value_source, 'string'
    field :description, 'string'
    field :goal_creation_method, 'string'
    field :id, 'string'
    field :name, 'string'
    field :performance_goal, 'string'
    field :update_status, 'string'
    has_no_post
    has_no_delete

    has_edge :conversion_events do |edge|
      edge.get
    end

  end
end
