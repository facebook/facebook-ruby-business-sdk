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

  class RtbDynamicPost < AdObject

    field :child_attachments, { list: 'DynamicPostChildAttachment' }
    field :created, 'datetime'
    field :description, 'string'
    field :id, 'string'
    field :image_url, 'string'
    field :link, 'string'
    field :message, 'string'
    field :owner_id, 'string'
    field :place_id, 'string'
    field :product_id, 'string'
    field :title, 'string'
    has_no_post
    has_no_delete

    has_edge :comments do |edge|
      edge.get 'Comment' do |api|
        api.has_param :filter, { enum: -> { Comment::FILTER }}
        api.has_param :live_filter, { enum: -> { Comment::LIVE_FILTER }}
        api.has_param :order, { enum: -> { Comment::ORDER }}
        api.has_param :since, 'datetime'
      end
    end

    has_edge :likes do |edge|
      edge.get 'Profile'
    end

  end
end
