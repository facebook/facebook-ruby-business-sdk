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

  class IgMedia < AdObject

    field :caption, 'string'
    field :comments_count, 'int'
    field :copyright_check_information, 'IgVideoCopyrightCheckMatchesInformation'
    field :id, 'string'
    field :ig_id, 'string'
    field :is_comment_enabled, 'bool'
    field :is_shared_to_feed, 'bool'
    field :like_count, 'int'
    field :media_product_type, 'string'
    field :media_type, 'string'
    field :media_url, 'string'
    field :owner, 'IgUser'
    field :permalink, 'string'
    field :shortcode, 'string'
    field :thumbnail_url, 'string'
    field :timestamp, 'datetime'
    field :username, 'string'
    has_no_delete

    has_edge :children do |edge|
      edge.get 'IgMedia'
    end

    has_edge :collaborators do |edge|
      edge.get 'ShadowIgMediaCollaborators'
    end

    has_edge :comments do |edge|
      edge.get 'IgComment'
      edge.post 'IgComment' do |api|
        api.has_param :message, 'string'
      end
    end

    has_edge :insights do |edge|
      edge.get 'InstagramInsightsResult' do |api|
        api.has_param :breakdown, { list: { enum: -> { InstagramInsightsResult::BREAKDOWN }} }
        api.has_param :metric, { list: { enum: -> { InstagramInsightsResult::METRIC }} }
        api.has_param :period, { list: { enum: -> { InstagramInsightsResult::PERIOD }} }
      end
    end

    has_edge :product_tags do |edge|
      edge.delete do |api|
        api.has_param :child_index, 'int'
        api.has_param :deleted_tags, { list: 'hash' }
      end
      edge.get 'ShadowIgMediaProductTags'
      edge.post 'ShadowIgMediaProductTags' do |api|
        api.has_param :child_index, 'int'
        api.has_param :updated_tags, { list: 'hash' }
      end
    end

  end
end
