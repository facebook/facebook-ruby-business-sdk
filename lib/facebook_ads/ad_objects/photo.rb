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
      "SCHEDULED",
    ]

    TYPE = [
      "profile",
      "tagged",
      "uploaded",
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

    POST_SURFACES_BLACKLIST = [
      "1",
      "2",
      "3",
      "4",
      "5",
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

    has_edge :comments do |edge|
      edge.get 'Comment' do |api|
        api.has_param :filter, { enum: -> { Comment::FILTER }}
        api.has_param :order, { enum: -> { Comment::ORDER }}
        api.has_param :live_filter, { enum: -> { Comment::LIVE_FILTER }}
        api.has_param :since, 'datetime'
      end
      edge.post 'Comment' do |api|
        api.has_param :object_id, 'string'
        api.has_param :parent_comment_id, 'object'
        api.has_param :nectar_module, 'string'
        api.has_param :attachment_id, 'string'
        api.has_param :attachment_url, 'string'
        api.has_param :attachment_share_url, 'string'
        api.has_param :feedback_source, 'string'
        api.has_param :facepile_mentioned_ids, { list: 'string' }
        api.has_param :is_offline, 'bool'
        api.has_param :comment_privacy_value, { enum: -> { Comment::COMMENT_PRIVACY_VALUE }}
        api.has_param :message, 'string'
        api.has_param :text, 'string'
        api.has_param :tracking, 'string'
      end
    end

    has_edge :dismisstagsuggestion do |edge|
      edge.post 'Photo' do |api|
        api.has_param :facebox, 'int'
        api.has_param :closing_source, 'string'
        api.has_param :is_first, 'bool'
        api.has_param :closing_action, 'string'
      end
    end

    has_edge :insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
        api.has_param :metric, { list: 'object' }
        api.has_param :period, { enum: -> { InsightsResult::PERIOD }}
        api.has_param :date_preset, { enum: -> { InsightsResult::DATE_PRESET }}
      end
    end

    has_edge :likes do |edge|
      edge.delete do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :feedback_source, 'string'
      end
      edge.get 'Profile'
      edge.post 'Photo' do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :feedback_source, 'string'
      end
    end

    has_edge :photos do |edge|
      edge.post 'Photo' do |api|
        api.has_param :aid, 'string'
        api.has_param :alt_text_custom, 'string'
        api.has_param :caption, 'string'
        api.has_param :url, 'string'
        api.has_param :uid, 'int'
        api.has_param :profile_id, 'int'
        api.has_param :target_id, 'int'
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
        api.has_param :privacy, 'string'
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

    has_edge :tags do |edge|
      edge.get 'TaggableSubject'
      edge.post 'Photo' do |api|
        api.has_param :pid, 'string'
        api.has_param :tag_uid, 'int'
        api.has_param :tag_text, 'string'
        api.has_param :x, 'double'
        api.has_param :y, 'double'
        api.has_param :tags, { list: 'object' }
        api.has_param :owner_uid, 'int'
      end
    end

  end
end
