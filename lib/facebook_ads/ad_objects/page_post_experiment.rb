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

  class PagePostExperiment < AdObject

    field :auto_resolve_settings, 'object'
    field :creation_time, 'datetime'
    field :creator, 'User'
    field :declared_winning_time, 'datetime'
    field :description, 'string'
    field :id, 'string'
    field :insight_snapshots, { list: 'map<datetime, list<map<int, Object>>>' }
    field :name, 'string'
    field :optimization_goal, 'string'
    field :publish_status, 'string'
    field :publish_time, 'datetime'
    field :scheduled_experiment_timestamp, 'datetime'
    field :updated_time, 'datetime'
    has_no_post
    has_no_delete

  end
end
