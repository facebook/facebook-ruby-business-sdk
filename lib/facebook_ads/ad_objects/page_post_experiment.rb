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
    OPTIMIZATION_GOAL = [
      "AUTO_RESOLVE_TO_CONTROL",
      "AVG_TIME_WATCHED",
      "COMMENTS",
      "IMPRESSIONS",
      "IMPRESSIONS_UNIQUE",
      "LINK_CLICKS",
      "OTHER",
      "REACTIONS",
      "REELS_PLAYS",
      "SHARES",
      "VIDEO_VIEWS_60S",
    ]


    field :auto_resolve_settings, 'object'
    field :control_video_id, 'string'
    field :creation_time, 'datetime'
    field :creator, 'User'
    field :declared_winning_time, 'datetime'
    field :declared_winning_video_id, 'string'
    field :description, 'string'
    field :experiment_video_ids, { list: 'string' }
    field :id, 'string'
    field :insight_snapshots, { list: 'map<datetime, list<map<int, Object>>>' }
    field :name, 'string'
    field :optimization_goal, 'string'
    field :publish_status, 'string'
    field :publish_time, 'datetime'
    field :scheduled_experiment_timestamp, 'datetime'
    field :updated_time, 'datetime'
    has_no_post

    has_edge :video_insights do |edge|
      edge.get
    end

  end
end
