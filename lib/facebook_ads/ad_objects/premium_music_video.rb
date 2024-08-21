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

  class PremiumMusicVideo < AdObject

    field :creation_time, 'string'
    field :cross_post_videos, { list: 'object' }
    field :eligible_cross_post_pages, { list: 'object' }
    field :id, 'string'
    field :preferred_video_thumbnail_image_uri, 'string'
    field :premium_music_video_metadata, 'object'
    field :scheduled_publish_time, 'int'
    field :title, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
