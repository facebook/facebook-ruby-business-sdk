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

  class IgUser < AdObject

    field :biography, 'string'
    field :business_discovery, 'IgUser'
    field :followers_count, 'int'
    field :follows_count, 'int'
    field :id, 'string'
    field :ig_id, 'int'
    field :media_count, 'int'
    field :mentioned_comment, 'IgComment'
    field :mentioned_media, 'IgMedia'
    field :name, 'string'
    field :owner_business, 'Business'
    field :profile_picture_url, 'string'
    field :shopping_product_tag_eligibility, 'bool'
    field :shopping_review_status, 'string'
    field :username, 'string'
    field :website, 'string'
    has_no_post
    has_no_delete

    has_edge :available_catalogs do |edge|
      edge.get 'UserAvailableCatalogs'
    end

    has_edge :catalog_product_search do |edge|
      edge.get 'ShadowIgUserCatalogProductSearch' do |api|
        api.has_param :catalog_id, 'string'
        api.has_param :q, 'string'
      end
    end

    has_edge :content_publishing_limit do |edge|
      edge.get 'ContentPublishingLimitResponse' do |api|
        api.has_param :since, 'datetime'
      end
    end

    has_edge :dataset do |edge|
      edge.get 'Dataset'
    end

    has_edge :insights do |edge|
      edge.get 'InstagramInsightsResult' do |api|
        api.has_param :breakdown, { list: { enum: -> { InstagramInsightsResult::BREAKDOWN }} }
        api.has_param :metric, { list: { enum: -> { InstagramInsightsResult::METRIC }} }
        api.has_param :metric_type, { enum: -> { InstagramInsightsResult::METRIC_TYPE }}
        api.has_param :period, { list: { enum: -> { InstagramInsightsResult::PERIOD }} }
        api.has_param :since, 'datetime'
        api.has_param :timeframe, { enum: -> { InstagramInsightsResult::TIMEFRAME }}
        api.has_param :until, 'datetime'
      end
    end

    has_edge :live_media do |edge|
      edge.get 'IgMedia' do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :media do |edge|
      edge.get 'IgMedia' do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
      edge.post 'IgMedia' do |api|
        api.has_param :audio_name, 'string'
        api.has_param :caption, 'string'
        api.has_param :children, { list: 'string' }
        api.has_param :collaborators, { list: 'string' }
        api.has_param :cover_url, 'string'
        api.has_param :image_url, 'string'
        api.has_param :is_carousel_item, 'bool'
        api.has_param :location_id, 'string'
        api.has_param :media_type, 'string'
        api.has_param :product_tags, { list: 'hash' }
        api.has_param :share_to_feed, 'bool'
        api.has_param :thumb_offset, 'string'
        api.has_param :user_tags, { list: 'hash' }
        api.has_param :video_url, 'string'
      end
    end

    has_edge :media_publish do |edge|
      edge.post 'IgMedia' do |api|
        api.has_param :creation_id, 'int'
      end
    end

    has_edge :mentions do |edge|
      edge.post do |api|
        api.has_param :comment_id, 'string'
        api.has_param :media_id, 'string'
        api.has_param :message, 'string'
      end
    end

    has_edge :notification_message_tokens do |edge|
      edge.get 'UserPageOneTimeOptInTokenSettings'
    end

    has_edge :product_appeal do |edge|
      edge.get 'IgShoppingProductAppeal' do |api|
        api.has_param :product_id, 'string'
      end
      edge.post 'IgShoppingProductAppeal' do |api|
        api.has_param :appeal_reason, 'string'
        api.has_param :product_id, 'string'
      end
    end

    has_edge :recently_searched_hashtags do |edge|
      edge.get 'ShadowIgHashtag'
    end

    has_edge :stories do |edge|
      edge.get 'IgMedia'
    end

    has_edge :tags do |edge|
      edge.get 'IgMedia'
    end

  end
end
