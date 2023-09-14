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

  class InstagramCarousel < AdObject

    field :caption_text, 'string'
    field :comment_count, 'int'
    field :content_type, 'int'
    field :display_url, 'string'
    field :id, 'string'
    field :like_count, 'int'
    field :owner_instagram_user, 'InstagramUser'
    field :permalink, 'string'
    field :taken_at, 'datetime'
    field :video_url, 'string'
    has_no_post
    has_no_delete

    has_edge :comments do |edge|
      edge.get 'InstagramComment'
      edge.post 'InstagramComment' do |api|
        api.has_param :ad_id, 'string'
        api.has_param :message, 'string'
      end
    end

  end
end
