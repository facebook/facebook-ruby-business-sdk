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

  class Link < AdObject

    field :caption, 'string'
    field :created_time, 'datetime'
    field :description, 'string'
    field :from, 'object'
    field :icon, 'string'
    field :id, 'string'
    field :link, 'string'
    field :message, 'string'
    field :multi_share_optimized, 'bool'
    field :name, 'string'
    field :privacy, 'Privacy'
    field :via, 'object'
    has_no_post
    has_no_delete

    has_edge :comments do |edge|
      edge.post 'Comment' do |api|
        api.has_param :attachment_id, 'string'
        api.has_param :attachment_share_url, 'string'
        api.has_param :attachment_url, 'string'
        api.has_param :comment_privacy_value, { enum: -> { Comment::COMMENT_PRIVACY_VALUE }}
        api.has_param :facepile_mentioned_ids, { list: 'string' }
        api.has_param :feedback_source, 'string'
        api.has_param :is_offline, 'bool'
        api.has_param :message, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :object_id, 'string'
        api.has_param :parent_comment_id, 'object'
        api.has_param :text, 'string'
        api.has_param :tracking, 'string'
      end
    end

    has_edge :likes do |edge|
      edge.get 'Profile'
    end

  end
end
