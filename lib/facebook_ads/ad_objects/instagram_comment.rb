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

  class InstagramComment < AdObject

    field :comment_type, 'string'
    field :created_at, 'datetime'
    field :id, 'string'
    field :instagram_comment_id, 'string'
    field :instagram_user, 'InstagramUser'
    field :mentioned_instagram_users, { list: 'InstagramUser' }
    field :message, 'string'
    field :username, 'string'

    has_edge :replies do |edge|
      edge.get 'InstagramComment'
      edge.post 'InstagramComment' do |api|
        api.has_param :ad_id, 'string'
        api.has_param :message, 'string'
      end
    end

  end
end
