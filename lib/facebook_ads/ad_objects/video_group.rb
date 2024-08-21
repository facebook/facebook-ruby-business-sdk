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

  class VideoGroup < AdObject

    field :created_time, 'string'
    field :description, 'string'
    field :disable_reason, 'string'
    field :id, 'string'
    field :ig_profile_ids, { list: 'string' }
    field :is_disabled, 'bool'
    field :is_fb_video_group, 'bool'
    field :last_used_time, 'string'
    field :length, 'double'
    field :name, 'string'
    field :page_id, 'string'
    field :page_ids, { list: 'string' }
    field :picture, 'string'
    field :placements, { list: 'string' }
    field :video_group_types, { list: 'string' }
    field :videos, { list: 'string' }
    field :views, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
