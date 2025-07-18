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
    field :has_profile_pic, 'bool'
    field :id, 'string'
    field :ig_id, 'int'
    field :is_published, 'bool'
    field :legacy_instagram_user_id, 'string'
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

    has_edge :agencies do |edge|
      edge.get 'Business'
    end

    has_edge :authorized_adaccounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'IgUser' do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
    end

    has_edge :available_catalogs do |edge|
      edge.get 'UserAvailableCatalogs'
    end

    has_edge :branded_content_ad_permissions do |edge|
      edge.get 'IgbcAdsPermission'
      edge.post 'IgbcAdsPermission' do |api|
        api.has_param :creator_instagram_account, 'string'
        api.has_param :creator_instagram_username, 'string'
        api.has_param :revoke, 'bool'
      end
    end

    has_edge :branded_content_advertisable_medias do |edge|
      edge.get 'BrandedContentShadowIgMediaId' do |api|
        api.has_param :ad_code, 'string'
        api.has_param :creator_username, 'string'
        api.has_param :only_fetch_allowlisted, 'bool'
        api.has_param :only_fetch_recommended_content, 'bool'
        api.has_param :permalinks, { list: 'string' }
      end
    end

    has_edge :branded_content_tag_approval do |edge|
      edge.delete do |api|
        api.has_param :user_ids, { list: 'int' }
      end
      edge.get 'BrandedContentShadowIgUserId' do |api|
        api.has_param :user_ids, { list: 'int' }
      end
      edge.post 'BrandedContentShadowIgUserId' do |api|
        api.has_param :user_ids, { list: 'int' }
      end
    end

    has_edge :catalog_product_search do |edge|
      edge.get 'ShadowIgUserCatalogProductSearch' do |api|
        api.has_param :catalog_id, 'string'
        api.has_param :q, 'string'
      end
    end

    has_edge :connected_threads_user do |edge|
      edge.get 'ThreadsUser'
    end

    has_edge :content_publishing_limit do |edge|
      edge.get 'ContentPublishingLimitResponse' do |api|
        api.has_param :since, 'datetime'
      end
    end

    has_edge :creator_marketplace_creators do |edge|
      edge.get 'IgUserExportForCam' do |api|
        api.has_param :creator_age_bucket, { list: 'object' }
        api.has_param :creator_countries, { list: { enum: -> { IgUserExportForCam::CREATOR_COUNTRIES }} }
        api.has_param :creator_gender, { list: { enum: -> { IgUserExportForCam::CREATOR_GENDER }} }
        api.has_param :creator_interests, { list: 'object' }
        api.has_param :creator_max_engaged_accounts, 'int'
        api.has_param :creator_max_followers, 'int'
        api.has_param :creator_min_engaged_accounts, 'int'
        api.has_param :creator_min_followers, 'int'
        api.has_param :major_audience_age_bucket, { list: 'object' }
        api.has_param :major_audience_countries, { list: { enum: -> { IgUserExportForCam::MAJOR_AUDIENCE_COUNTRIES }} }
        api.has_param :major_audience_gender, { list: { enum: -> { IgUserExportForCam::MAJOR_AUDIENCE_GENDER }} }
        api.has_param :query, 'string'
        api.has_param :reels_interaction_rate, 'object'
        api.has_param :similar_to_creators, { list: 'string' }
      end
    end

    has_edge :dataset do |edge|
      edge.get 'Dataset'
      edge.post 'Dataset' do |api|
        api.has_param :dataset_name, 'string'
      end
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

    has_edge :instagram_backed_threads_user do |edge|
      edge.get 'ThreadsUser'
      edge.post 'ThreadsUser'
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
        api.has_param :alt_text, 'string'
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
        api.has_param :upload_type, 'string'
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

    has_edge :upcoming_events do |edge|
      edge.get 'IgUpcomingEvent'
      edge.post do |api|
        api.has_param :end_time, 'datetime'
        api.has_param :notification_subtypes, { list: { enum: %w{AFTER_EVENT_1DAY AFTER_EVENT_2DAY AFTER_EVENT_3DAY AFTER_EVENT_4DAY AFTER_EVENT_5DAY AFTER_EVENT_6DAY AFTER_EVENT_7DAY BEFORE_EVENT_15MIN BEFORE_EVENT_1DAY BEFORE_EVENT_1HOUR BEFORE_EVENT_2DAY EVENT_START RESCHEDULED }} }
        api.has_param :start_time, 'datetime'
        api.has_param :title, 'string'
      end
    end

    has_edge :welcome_message_flows do |edge|
      edge.get 'ShadowIgUserCtxPartnerAppWelcomeMessageFlow' do |api|
        api.has_param :app_id, 'string'
        api.has_param :flow_id, 'string'
      end
    end

  end
end
