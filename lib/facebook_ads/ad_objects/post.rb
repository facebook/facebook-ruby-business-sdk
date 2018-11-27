# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class Post < AdObject
    BACKDATED_TIME_GRANULARITY = [
      "year",
      "month",
      "day",
      "hour",
      "min",
      "none",
    ]

    FEED_STORY_VISIBILITY = [
      "hidden",
      "visible",
    ]

    TIMELINE_VISIBILITY = [
      "hidden",
      "normal",
      "forced_allow",
    ]


    field :actions, { list: 'string' }
    field :admin_creator, 'object'
    field :allowed_advertising_objectives, { list: 'string' }
    field :application, 'Application'
    field :backdated_time, 'datetime'
    field :call_to_action, 'object'
    field :caption, 'string'
    field :child_attachments, { list: 'string' }
    field :comments_mirroring_domain, 'string'
    field :coordinates, 'object'
    field :created_time, 'datetime'
    field :description, 'string'
    field :event, 'Event'
    field :expanded_height, 'int'
    field :expanded_width, 'int'
    field :feed_targeting, 'object'
    field :from, 'object'
    field :full_picture, 'string'
    field :height, 'int'
    field :icon, 'string'
    field :id, 'string'
    field :instagram_eligibility, 'string'
    field :is_app_share, 'bool'
    field :is_expired, 'bool'
    field :is_hidden, 'bool'
    field :is_instagram_eligible, 'bool'
    field :is_popular, 'bool'
    field :is_published, 'bool'
    field :is_spherical, 'bool'
    field :link, 'string'
    field :message, 'string'
    field :message_tags, { list: 'string' }
    field :multi_share_end_card, 'bool'
    field :multi_share_optimized, 'bool'
    field :name, 'string'
    field :object_id, 'string'
    field :parent_id, 'string'
    field :permalink_url, 'object'
    field :picture, 'string'
    field :place, 'Place'
    field :privacy, 'Privacy'
    field :promotable_id, 'string'
    field :promotion_status, 'string'
    field :properties, { list: 'string' }
    field :scheduled_publish_time, 'double'
    field :shares, 'object'
    field :source, 'string'
    field :status_type, 'string'
    field :story, 'string'
    field :story_tags, { list: 'string' }
    field :subscribed, 'bool'
    field :target, 'Profile'
    field :targeting, 'object'
    field :timeline_visibility, 'string'
    field :type, 'string'
    field :updated_time, 'datetime'
    field :via, 'object'
    field :video_buying_eligibility, { list: 'string' }
    field :width, 'int'

    has_edge :attachments do |edge|
      edge.get
    end

    has_edge :comments do |edge|
      edge.get 'Comment' do |api|
        api.has_param :filter, { enum: -> { Comment::FILTER }}
        api.has_param :order, { enum: -> { Comment::ORDER }}
        api.has_param :live_filter, { enum: -> { Comment::LIVE_FILTER }}
        api.has_param :since, 'datetime'
      end
      edge.post 'Comment' do |api|
        api.has_param :message, 'string'
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :attachment_id, 'string'
        api.has_param :attachment_url, 'string'
        api.has_param :attachment_share_url, 'string'
        api.has_param :post_id, 'string'
        api.has_param :parent_comment_id, 'object'
        api.has_param :comment, 'string'
        api.has_param :feedback_source, 'string'
        api.has_param :comment_privacy_value, { enum: -> { Comment::COMMENT_PRIVACY_VALUE }}
      end
    end

    has_edge :dynamic_posts do |edge|
      edge.get 'RtbDynamicPost'
    end

    has_edge :edit_actions do |edge|
      edge.get
    end

    has_edge :insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
        api.has_param :metric, { list: 'object' }
        api.has_param :period, { enum: -> { InsightsResult::PERIOD }}
        api.has_param :show_permission_error, 'bool'
        api.has_param :date_preset, { enum: -> { InsightsResult::DATE_PRESET }}
      end
    end

    has_edge :likes do |edge|
      edge.delete do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
      end
      edge.get 'Profile'
      edge.post 'Post' do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :feedback_source, 'string'
      end
    end

    has_edge :photos do |edge|
      edge.post 'Photo' do |api|
        api.has_param :aid, 'string'
        api.has_param :caption, 'string'
        api.has_param :url, 'string'
        api.has_param :uid, 'int'
        api.has_param :profile_id, 'int'
        api.has_param :target_id, 'int'
        api.has_param :checkin_id, 'object'
        api.has_param :vault_image_id, 'string'
        api.has_param :tags, { list: 'object' }
        api.has_param :place, 'object'
        api.has_param :is_explicit_place, 'bool'
        api.has_param :is_explicit_location, 'bool'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :og_set_profile_badge, 'bool'
        api.has_param :privacy, 'object'
        api.has_param :targeting, 'object'
        api.has_param :feed_targeting, 'object'
        api.has_param :no_story, 'bool'
        api.has_param :published, 'bool'
        api.has_param :offline_id, 'int'
        api.has_param :attempt, 'int'
        api.has_param :backdated_time, 'datetime'
        api.has_param :backdated_time_granularity, { enum: -> { Photo::BACKDATED_TIME_GRANULARITY }}
        api.has_param :time_since_original_post, 'int'
        api.has_param :filter_type, 'int'
        api.has_param :scheduled_publish_time, 'int'
        api.has_param :unpublished_content_type, { enum: -> { Photo::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :full_res_is_coming_later, 'bool'
        api.has_param :composer_session_id, 'string'
        api.has_param :qn, 'string'
        api.has_param :manual_privacy, 'bool'
        api.has_param :audience_exp, 'bool'
        api.has_param :proxied_app_id, 'string'
        api.has_param :ios_bundle_id, 'string'
        api.has_param :android_key_hash, 'string'
        api.has_param :user_selected_tags, 'bool'
        api.has_param :allow_spherical_photo, 'bool'
        api.has_param :spherical_metadata, 'hash'
        api.has_param :initial_view_heading_override_degrees, 'int'
        api.has_param :initial_view_pitch_override_degrees, 'int'
        api.has_param :initial_view_vertical_fov_override_degrees, 'int'
        api.has_param :sponsor_id, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :application_id, 'string'
        api.has_param :name, 'string'
        api.has_param :message, 'string'
      end
    end

    has_edge :promotions do |edge|
      edge.post do |api|
        api.has_param :budget, 'int'
        api.has_param :currency, 'string'
        api.has_param :ad_account_id, 'string'
        api.has_param :audience, { enum: %w{GROUPER NCPP CUSTOM_AUDIENCE LOOKALIKE FANS LOCAL IG_PROMOTED_POST_AUTO SAVED_AUDIENCE EVENT_ENGAGEMENT DISTRICT SMART_AUDIENCE CREATE_NEW AUTO_LOOKALIKE MULT_CUSTOM_AUDIENCES EVENT_CUSTOM_AUDIENCES AUTO_PAGE_LOOKALIKE }}
        api.has_param :targeting, 'Targeting'
        api.has_param :start_time, 'int'
        api.has_param :stop_time, 'int'
        api.has_param :ad_conversion_pixel_id, 'int'
        api.has_param :placement, 'string'
        api.has_param :flow_id, 'string'
        api.has_param :audience_id, 'string'
        api.has_param :bid_amount, 'int'
        api.has_param :cta_type, { enum: %w{OPEN_LINK LIKE_PAGE SHOP_NOW PLAY_GAME INSTALL_APP USE_APP CALL CALL_ME INSTALL_MOBILE_APP USE_MOBILE_APP MOBILE_DOWNLOAD BOOK_TRAVEL LISTEN_MUSIC WATCH_VIDEO LEARN_MORE SIGN_UP DOWNLOAD WATCH_MORE NO_BUTTON VISIT_PAGES_FEED APPLY_NOW BUY_NOW GET_OFFER GET_OFFER_VIEW BUY_TICKETS UPDATE_APP GET_DIRECTIONS BUY MESSAGE_PAGE DONATE SUBSCRIBE SAY_THANKS SELL_NOW SHARE DONATE_NOW GET_QUOTE CONTACT_US ORDER_NOW ADD_TO_CART VIDEO_ANNOTATION MOMENTS RECORD_NOW GET_SHOWTIMES LISTEN_NOW WOODHENGE_SUPPORT EVENT_RSVP WHATSAPP_MESSAGE FOLLOW_NEWS_STORYLINE SEE_MORE }}
      end
    end

    has_edge :reactions do |edge|
      edge.get 'Profile' do |api|
        api.has_param :type, { enum: -> { Profile::TYPE }}
      end
    end

    has_edge :seen do |edge|
      edge.get 'User'
    end

    has_edge :sharedposts do |edge|
      edge.get 'Post'
    end

    has_edge :sponsor_tags do |edge|
      edge.get 'Page'
    end

    has_edge :to do |edge|
      edge.get 'Profile'
    end

    has_edge :with_tags do |edge|
      edge.get 'Profile'
    end

  end
end
