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

  class InstagramInsightsResult < AdObject
    BREAKDOWN = [
      "action_type",
      "follow_type",
      "story_navigation_action_type",
      "surface_type",
    ]

    METRIC = [
      "carousel_album_engagement",
      "carousel_album_impressions",
      "carousel_album_reach",
      "carousel_album_saved",
      "carousel_album_video_views",
      "clips_replays_count",
      "comments",
      "engagement",
      "exits",
      "follows",
      "ig_reels_aggregated_all_plays_count",
      "ig_reels_avg_watch_time",
      "ig_reels_video_view_total_time",
      "impressions",
      "likes",
      "navigation",
      "plays",
      "profile_activity",
      "profile_visits",
      "reach",
      "replies",
      "saved",
      "shares",
      "taps_back",
      "taps_forward",
      "total_interactions",
      "video_views",
    ]

    PERIOD = [
      "day",
      "days_28",
      "lifetime",
      "month",
      "total_over_range",
      "week",
    ]

    METRIC_TYPE = [
      "default",
      "time_series",
      "total_value",
    ]

    TIMEFRAME = [
      "last_14_days",
      "last_30_days",
      "last_90_days",
      "prev_month",
      "this_month",
      "this_week",
    ]


    field :description, 'string'
    field :id, 'string'
    field :name, 'string'
    field :period, 'string'
    field :title, 'string'
    field :total_value, 'object'
    field :values, { list: 'InstagramInsightsValue' }
    has_no_get
    has_no_post
    has_no_delete

  end
end
