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
      "day",
      "hour",
      "min",
      "month",
      "none",
      "year",
    ]

    CHECKIN_ENTRY_POINT = [
      "BRANDING_CHECKIN",
      "BRANDING_OTHER",
      "BRANDING_PHOTO",
      "BRANDING_STATUS",
    ]

    FORMATTING = [
      "MARKDOWN",
      "PLAINTEXT",
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
      "disabled",
      "enabled",
    ]

    TARGET_SURFACE = [
      "STORY",
      "TIMELINE",
    ]

    UNPUBLISHED_CONTENT_TYPE = [
      "ADS_POST",
      "DRAFT",
      "INLINE_CREATED",
      "PUBLISHED",
      "SCHEDULED",
    ]

    WITH = [
      "LOCATION",
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


    field :actions, { list: 'string' }
    field :admin_creator, 'object'
    field :allowed_advertising_objectives, { list: 'string' }
    field :application, 'Application'
    field :backdated_time, 'datetime'
    field :call_to_action, 'object'
    field :can_reply_privately, 'bool'
    field :child_attachments, { list: 'string' }
    field :comments_mirroring_domain, 'string'
    field :coordinates, 'object'
    field :created_time, 'datetime'
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
    field :message, 'string'
    field :message_tags, { list: 'string' }
    field :multi_share_end_card, 'bool'
    field :multi_share_optimized, 'bool'
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
    field :status_type, 'string'
    field :story, 'string'
    field :story_tags, { list: 'string' }
    field :subscribed, 'bool'
    field :target, 'Profile'
    field :targeting, 'object'
    field :timeline_visibility, 'string'
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

    has_edge :edit_actions do |edge|
      edge.get
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
      edge.get 'Profile'
      edge.post 'PagePost' do |api|
        api.has_param :feedback_source, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :tracking, 'string'
      end
    end

    has_edge :private_replies do |edge|
      edge.post 'PagePost' do |api|
        api.has_param :message, 'string'
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
