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

  class InstagramMedia < AdObject

    field :caption_text, 'string'
    field :comment_count, 'int'
    field :content_type, 'int'
    field :display_url, 'string'
    field :filter_name, 'string'
    field :id, 'string'
    field :ig_media_id, 'string'
    field :latitude, 'double'
    field :like_count, 'int'
    field :location, 'Location'
    field :location_name, 'string'
    field :longitude, 'double'
    field :owner_instagram_user, 'InstagramUser'
    field :permalink, 'string'
    field :taken_at, 'datetime'
    field :video_url, 'string'
    has_no_post
    has_no_delete

  end
end
