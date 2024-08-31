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

  class IgUserForIgOnlyApi < AdObject

    field :account_type, 'string'
    field :biography, 'string'
    field :followers_count, 'int'
    field :follows_count, 'int'
    field :id, 'string'
    field :media_count, 'int'
    field :name, 'string'
    field :profile_picture_url, 'string'
    field :user_id, 'int'
    field :username, 'string'
    field :website, 'string'
    has_no_post
    has_no_delete

    has_edge :content_publishing_limit do |edge|
      edge.get 'ContentPublishingLimitResponse' do |api|
        api.has_param :since, 'datetime'
      end
    end

    has_edge :conversations do |edge|
      edge.get 'UnifiedThread' do |api|
        api.has_param :folder, 'string'
        api.has_param :platform, { enum: -> { UnifiedThread::PLATFORM }}
        api.has_param :tags, { list: 'string' }
        api.has_param :user_id, 'string'
      end
    end

    has_edge :live_media do |edge|
      edge.get
    end

    has_edge :media do |edge|
      edge.get do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
      edge.post do |api|
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

    has_edge :mediapublish do |edge|
      edge.post do |api|
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

    has_edge :messageattachments do |edge|
      edge.post do |api|
        api.has_param :message, 'object'
      end
    end

    has_edge :messages do |edge|
      edge.post do |api|
        api.has_param :message, 'object'
        api.has_param :messaging_type, { enum: %w{MESSAGE_TAG RESPONSE UPDATE UTILITY }}
        api.has_param :payload, 'string'
        api.has_param :recipient, 'object'
        api.has_param :sender_action, { enum: %w{MARK_SEEN REACT TYPING_OFF TYPING_ON UNREACT }}
        api.has_param :tag, 'object'
        api.has_param :thread_control, 'object'
      end
    end

    has_edge :messenger_profile do |edge|
      edge.delete do |api|
        api.has_param :fields, { list: { enum: %w{ACCOUNT_LINKING_URL COMMANDS DESCRIPTION GET_STARTED GREETING HOME_URL ICE_BREAKERS PAYMENT_SETTINGS PERSISTENT_MENU PLATFORM SUBJECT_TO_NEW_EU_PRIVACY_RULES TARGET_AUDIENCE TITLE WHITELISTED_DOMAINS }} }
      end
      edge.get
      edge.post do |api|
        api.has_param :ice_breakers, { list: 'hash' }
        api.has_param :persistent_menu, { list: 'object' }
      end
    end

    has_edge :stories do |edge|
      edge.get
    end

    has_edge :subscribed_apps do |edge|
      edge.delete
      edge.get
      edge.post do |api|
        api.has_param :subscribed_fields, { list: { enum: %w{comments creator_marketplace_invited_creator_onboarding creator_marketplace_projects delta live_comments mentions message_reactions messages messaging_handover messaging_optins messaging_postbacks messaging_referral messaging_seen standby story_insights }} }
      end
    end

    has_edge :tags do |edge|
      edge.get
    end

    has_edge :welcome_message_flows do |edge|
      edge.get 'CtxPartnerAppWelcomeMessageFlow' do |api|
        api.has_param :app_id, 'string'
        api.has_param :flow_id, 'string'
      end
    end

  end
end
