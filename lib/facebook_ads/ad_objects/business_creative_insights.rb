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

  class BusinessCreativeInsights < AdObject

    field :actions, { list: 'AdsActionStats' }
    field :age, 'string'
    field :country, 'string'
    field :date_end, 'string'
    field :date_start, 'string'
    field :device_platform, 'string'
    field :gender, 'string'
    field :impressions, 'int'
    field :inline_link_clicks, 'int'
    field :objective, 'string'
    field :optimization_goal, 'string'
    field :platform_position, 'string'
    field :publisher_platform, 'string'
    field :quality_ranking, 'string'
    field :video_play_actions, { list: 'AdsActionStats' }
    field :video_thruplay_watched_actions, { list: 'AdsActionStats' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
