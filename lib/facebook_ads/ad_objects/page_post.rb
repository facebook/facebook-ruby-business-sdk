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

  class PagePost < AdObject
    BACKDATED_TIME_GRANULARITY = [
      "year",
      "month",
      "day",
      "hour",
      "min",
      "none",
    ]

    CHECKIN_ENTRY_POINT = [
      "BRANDING_CHECKIN",
      "BRANDING_STATUS",
      "BRANDING_PHOTO",
      "BRANDING_OTHER",
    ]

    FORMATTING = [
      "PLAINTEXT",
      "MARKDOWN",
    ]

    PLACE_ATTACHMENT_SETTING = [
      "1",
      "2",
    ]

    POST_SURFACES_BLACKLIST = [
      "1",
      "2",
      "3",
      "4",
      "5",
    ]

    POSTING_TO_REDSPACE = [
      "enabled",
      "disabled",
    ]

    TARGET_SURFACE = [
      "STORY",
      "TIMELINE",
    ]

    UNPUBLISHED_CONTENT_TYPE = [
      "SCHEDULED",
      "DRAFT",
      "ADS_POST",
      "INLINE_CREATED",
      "PUBLISHED",
    ]

    WITH = [
      "LOCATION",
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
    field :can_reply_privately, 'bool'
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
      edge.post 'PagePost' do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :feedback_source, 'string'
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
