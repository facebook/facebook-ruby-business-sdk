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

  class Robot < AdObject

    field :bringup_vars, { list: 'hash' }
    field :configurations, { list: 'hash' }
    field :data_center, 'string'
    field :id, 'string'
    field :init_pos, { list: 'hash' }
    field :last_pos, { list: 'hash' }
    field :meetup_link_hash, 'string'
    field :robot_notes, 'string'
    field :suite, 'string'
    field :target_map_image_uri, 'string'
    field :target_os_image_uri, 'string'
    field :target_sw_image_uri, 'string'
    field :user, 'User'
    has_no_post
    has_no_delete

  end
end
