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

  class Photo < AdObject
    BACKDATED_TIME_GRANULARITY = [
      "day",
      "hour",
      "min",
      "month",
      "none",
      "year",
    ]

    UNPUBLISHED_CONTENT_TYPE = [
      "ADS_POST",
      "DRAFT",
      "INLINE_CREATED",
      "PUBLISHED",
      "REVIEWABLE_BRANDED_CONTENT",
      "SCHEDULED",
      "SCHEDULED_RECURRING",
    ]

    TYPE = [
      "profile",
      "tagged",
      "uploaded",
    ]


    field :album, 'Album'
    field :alt_text, 'string'
    field :alt_text_custom, 'string'
    field :backdated_time, 'datetime'
    field :backdated_time_granularity, 'string'
    field :can_backdate, 'bool'
    field :can_delete, 'bool'
    field :can_tag, 'bool'
    field :created_time, 'datetime'
    field :event, 'Event'
    field :from, 'object'
    field :height, 'int'
    field :icon, 'string'
    field :id, 'string'
    field :images, { list: 'PlatformImageSource' }
    field :link, 'string'
    field :name, 'string'
    field :name_tags, { list: 'EntityAtTextRange' }
    field :page_story_id, 'string'
    field :picture, 'string'
    field :place, 'Place'
    field :position, 'int'
    field :source, 'string'
    field :target, 'Profile'
    field :updated_time, 'datetime'
    field :webp_images, { list: 'PlatformImageSource' }
    field :width, 'int'
    has_no_post

    has_edge :comments do |edge|
      edge.get 'Comment' do |api|
        api.has_param :filter, { enum: -> { Comment::FILTER }}
        api.has_param :live_filter, { enum: -> { Comment::LIVE_FILTER }}
        api.has_param :order, { enum: -> { Comment::ORDER }}
        api.has_param :since, 'datetime'
      end
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

    has_edge :insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :date_preset, { enum: -> { InsightsResult::DATE_PRESET }}
        api.has_param :metric, { list: 'object' }
        api.has_param :period, { enum: -> { InsightsResult::PERIOD }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :likes do |edge|
      edge.get 'Profile'
      edge.post 'Photo' do |api|
        api.has_param :feedback_source, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :tracking, 'string'
      end
    end

    has_edge :sponsor_tags do |edge|
      edge.get 'Page'
    end

  end
end
