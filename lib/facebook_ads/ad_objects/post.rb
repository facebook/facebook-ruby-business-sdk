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
      "day",
      "hour",
      "min",
      "month",
      "none",
      "year",
    ]

    FEED_STORY_VISIBILITY = [
      "hidden",
      "visible",
    ]

    TIMELINE_VISIBILITY = [
      "forced_allow",
      "hidden",
      "normal",
    ]

    WITH = [
      "LOCATION",
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
    field :is_eligible_for_promotion, 'bool'
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
        api.has_param :live_filter, { enum: -> { Comment::LIVE_FILTER }}
        api.has_param :order, { enum: -> { Comment::ORDER }}
        api.has_param :since, 'datetime'
      end
      edge.post 'Comment' do |api|
        api.has_param :attachment_id, 'string'
        api.has_param :attachment_share_url, 'string'
        api.has_param :attachment_url, 'string'
        api.has_param :comment, 'string'
        api.has_param :comment_privacy_value, { enum: -> { Comment::COMMENT_PRIVACY_VALUE }}
        api.has_param :feedback_source, 'string'
        api.has_param :message, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :parent_comment_id, 'object'
        api.has_param :post_id, 'string'
        api.has_param :tracking, 'string'
      end
    end

    has_edge :dynamic_posts do |edge|
      edge.get 'RtbDynamicPost'
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
      edge.delete do |api|
        api.has_param :nectar_module, 'string'
        api.has_param :tracking, 'string'
      end
      edge.post 'Post' do |api|
        api.has_param :feedback_source, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :tracking, 'string'
      end
    end

    has_edge :promotions do |edge|
      edge.post do |api|
        api.has_param :ad_account_id, 'string'
        api.has_param :ad_conversion_pixel_id, 'int'
        api.has_param :audience, { enum: %w{AUTO_LOOKALIKE AUTO_PAGE_LOOKALIKE AUTO_TARGETING CREATE_NEW CUSTOM_AUDIENCE DISTRICT EVENT_CUSTOM_AUDIENCES EVENT_ENGAGEMENT FANS GROUPER HEC_AUDIENCE IG_PROMOTED_POST_AUTO LOCAL LOOKALIKE MULT_CUSTOM_AUDIENCES NCPP SAVED_AUDIENCE SMART_AUDIENCE }}
        api.has_param :audience_id, 'string'
        api.has_param :bid_amount, 'int'
        api.has_param :budget, 'int'
        api.has_param :cta_type, { enum: %w{ADD_TO_CART APPLY_NOW BOOK_TRAVEL BUY BUY_NOW BUY_TICKETS CALL CALL_ME CONTACT CONTACT_US DONATE DONATE_NOW DOWNLOAD EVENT_RSVP FIND_A_GROUP FIND_YOUR_GROUPS FOLLOW_NEWS_STORYLINE GET_DIRECTIONS GET_OFFER GET_OFFER_VIEW GET_QUOTE GET_SHOWTIMES INSTALL_APP INSTALL_MOBILE_APP LEARN_MORE LIKE_PAGE LISTEN_MUSIC LISTEN_NOW MESSAGE_PAGE MOBILE_DOWNLOAD MOMENTS NO_BUTTON OPEN_LINK ORDER_NOW PLAY_GAME RECORD_NOW SAY_THANKS SEE_MORE SELL_NOW SHARE SHOP_NOW SIGN_UP SOTTO_SUBSCRIBE SUBSCRIBE UPDATE_APP USE_APP USE_MOBILE_APP VIDEO_ANNOTATION VISIT_PAGES_FEED WATCH_MORE WATCH_VIDEO WHATSAPP_MESSAGE WOODHENGE_SUPPORT }}
        api.has_param :currency, 'string'
        api.has_param :flow_id, 'string'
        api.has_param :placement, 'string'
        api.has_param :start_time, 'int'
        api.has_param :stop_time, 'int'
        api.has_param :targeting, 'Targeting'
      end
    end

    has_edge :reactions do |edge|
      edge.get 'Profile' do |api|
        api.has_param :type, { enum: -> { Profile::TYPE }}
      end
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

  end
end
