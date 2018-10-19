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

  class AdVideo < AdObject
    CONTAINER_TYPE = [
      "LEGACY",
      "CONTAINED_POST_ATTACHMENT",
      "SAY_THANKS_DEPRECATED",
      "LOOK_NOW_DEPRECATED",
      "BROADCAST",
      "ALBUM_MULTIMEDIA_POST",
      "UNLISTED",
      "NO_STORY",
      "GOODWILL_ANNIVERSARY_DEPRECATED",
      "PROFILE_VIDEO",
      "DIRECT_INBOX",
      "DIRECT_INBOX_REACTION",
      "STORYLINE",
      "GROUP_POST",
      "ATLAS_VIDEO",
      "LIVE_PHOTO",
      "TEMP_MULTIMEDIA_POST",
      "GOODWILL_ANNIVERSARY_PROMOTION_DEPRECATED",
      "GOODWILL_VIDEO_SHARE",
      "GOODWILL_VIDEO_PROMOTION",
      "COPYRIGHT_REFERENCE_VIDEO",
      "CANVAS",
      "MOMENTS_VIDEO",
      "APP_REVIEW_SCREENCAST",
      "VIDEO_COMMENT",
      "COPYRIGHT_REFERENCE_BROADCAST",
      "OFFERS_VIDEO",
      "JOB_APPLICATION_VIDEO",
      "STORYLINE_WITH_EXTERNAL_MUSIC",
      "JOB_OPENING_VIDEO",
      "PAGE_SLIDESHOW_VIDEO",
      "INSTANT_ARTICLE",
      "PRODUCT_VIDEO",
      "DIRECTED_POST_ATTACHMENT",
      "PROFILE_INTRO_CARD",
      "ISSUE_MODULE",
      "GOODWILL_VIDEO_TOKEN_REQUIRED",
      "INSTANT_APPLICATION_PREVIEW",
      "REPLACE_VIDEO",
      "FACECAST_DVR",
      "PIXELCLOUD",
      "SLIDESHOW_SHAKR",
      "INSPIRATION_VIDEO",
      "TAROT_DIGEST",
      "SLIDESHOW_ANIMOTO",
      "AUDIO_BROADCAST",
      "LEARN",
      "CULTURAL_MOMENT_DEPRECATED",
      "YOUR_DAY",
      "PAGES_COVER_VIDEO",
      "GOODWILL_VIDEO_CONTAINED_SHARE",
      "DCO_AD_ASSET_FEED",
      "CONTAINED_POST_BROADCAST",
      "QUICK_PROMOTION",
      "DYNAMIC_ITEM_DISPLAY_BUNDLE",
      "EVENT_TOUR",
      "EVENT_COVER_VIDEO",
      "AD_DERIVATIVE",
      "CONTAINED_POST_AUDIO_BROADCAST",
      "LIVE_CREATIVE_KIT_VIDEO",
      "ALOHA_SUPERFRAME",
      "INSTAGRAM_VIDEO_COPY",
      "AD_BREAK_PREVIEW",
      "ALOHA_CALL_VIDEO",
      "STORY_ARCHIVE_VIDEO",
      "BRAND_EQUITY_POLL_VIDEO",
      "PROFILE_COVER_VIDEO",
      "DYNAMIC_ITEM_VIDEO",
      "PAGE_REVIEW_SCREENCAST",
      "HEURISTIC_PREVIEW",
      "GAME_CLIP",
      "WOODHENGE",
      "PREMIERE_SOURCE",
      "PRIVATE_GALLERY_VIDEO",
      "FISTBUMP",
      "STORY_HIGHLIGHT_VIDEO",
      "PROFILE_TO_PAGE_UPLOADED_VIDEO",
      "KOTOTORO",
      "DYNAMIC_TEMPLATE_VIDEO",
      "INSTANT_GAME_CLIP",
      "CANDIDATE_VIDEOS",
      "FUNDRAISER_COVER_VIDEO",
      "PROTON",
      "BELL_POLL",
      "CIVIC_PROPOSAL_COVER_VIDEO",
    ]

    CONTENT_CATEGORY = [
      "BEAUTY_FASHION",
      "BUSINESS",
      "CARS_TRUCKS",
      "COMEDY",
      "CUTE_ANIMALS",
      "ENTERTAINMENT",
      "FAMILY",
      "FOOD_HEALTH",
      "HOME",
      "LIFESTYLE",
      "MUSIC",
      "NEWS",
      "POLITICS",
      "SCIENCE",
      "SPORTS",
      "TECHNOLOGY",
      "VIDEO_GAMING",
      "OTHER",
    ]

    FORMATTING = [
      "PLAINTEXT",
      "MARKDOWN",
    ]

    ORIGINAL_PROJECTION_TYPE = [
      "equirectangular",
      "cubemap",
      "equiangular_cubemap",
      "half_equirectangular",
    ]

    SWAP_MODE = [
      "replace",
    ]

    UNPUBLISHED_CONTENT_TYPE = [
      "SCHEDULED",
      "DRAFT",
      "ADS_POST",
      "INLINE_CREATED",
      "PUBLISHED",
    ]

    UPLOAD_PHASE = [
      "start",
      "transfer",
      "finish",
      "cancel",
    ]

    TYPE = [
      "tagged",
      "uploaded",
    ]

    BACKDATED_TIME_GRANULARITY = [
      "year",
      "month",
      "day",
      "hour",
      "min",
      "none",
    ]


    field :ad_breaks, { list: 'int' }
    field :backdated_time, 'datetime'
    field :backdated_time_granularity, 'string'
    field :content_category, 'string'
    field :content_tags, { list: 'string' }
    field :created_time, 'datetime'
    field :custom_labels, { list: 'string' }
    field :description, 'string'
    field :embed_html, 'string'
    field :embeddable, 'bool'
    field :event, 'Event'
    field :expiration, 'object'
    field :format, { list: 'object' }
    field :from, 'object'
    field :icon, 'string'
    field :id, 'string'
    field :is_crosspost_video, 'bool'
    field :is_crossposting_eligible, 'bool'
    field :is_episode, 'bool'
    field :is_instagram_eligible, 'bool'
    field :length, 'double'
    field :live_audience_count, 'int'
    field :live_status, 'string'
    field :name, 'string'
    field :permalink_url, 'string'
    field :picture, 'string'
    field :place, 'Place'
    field :privacy, 'Privacy'
    field :published, 'bool'
    field :scheduled_publish_time, 'datetime'
    field :source, 'string'
    field :spherical, 'bool'
    field :status, 'object'
    field :title, 'string'
    field :tv_banner_ad, 'object'
    field :universal_video_id, 'string'
    field :updated_time, 'datetime'
    field :unpublished_content_type, { enum: -> { UNPUBLISHED_CONTENT_TYPE }}
    field :time_since_original_post, 'int'
    field :file_url, 'string'
    field :composer_session_id, 'string'
    field :waterfall_id, 'string'
    field :og_action_type_id, 'string'
    field :og_object_id, 'string'
    field :og_phrase, 'string'
    field :og_icon_id, 'string'
    field :og_suggestion_mechanism, 'string'
    field :manual_privacy, 'bool'
    field :is_explicit_share, 'bool'
    field :thumb, 'file'
    field :original_projection_type, { enum: -> { ORIGINAL_PROJECTION_TYPE }}
    field :initial_heading, 'int'
    field :initial_pitch, 'int'
    field :fov, 'int'
    field :original_fov, 'int'
    field :fisheye_video_cropped, 'bool'
    field :front_z_rotation, 'double'
    field :guide_enabled, 'bool'
    field :guide, { list: { list: 'int' } }
    field :audio_story_wave_animation_handle, 'string'
    field :adaptive_type, 'string'
    field :animated_effect_id, 'int'
    field :asked_fun_fact_prompt_id, 'int'
    field :composer_entry_picker, 'string'
    field :composer_entry_point, 'string'
    field :composer_entry_time, 'int'
    field :composer_session_events_log, 'string'
    field :composer_source_surface, 'string'
    field :composer_type, 'string'
    field :formatting, { enum: -> { FORMATTING }}
    field :fun_fact_prompt_id, 'string'
    field :fun_fact_toastee_id, 'int'
    field :is_group_linking_post, 'bool'
    field :has_nickname, 'bool'
    field :holiday_card, 'string'
    field :instant_game_entry_point_data, 'string'
    field :is_boost_intended, 'bool'
    field :location_source_id, 'string'
    field :offer_like_post_id, 'string'
    field :publish_event_id, 'int'
    field :react_mode_metadata, 'string'
    field :sales_promo_id, 'int'
    field :text_format_metadata, 'string'
    field :throwback_camera_roll_media, 'string'
    field :video_start_time_ms, 'int'
    field :application_id, 'string'
    field :upload_phase, { enum: -> { UPLOAD_PHASE }}
    field :file_size, 'int'
    field :start_offset, 'int'
    field :end_offset, 'int'
    field :video_file_chunk, 'string'
    field :fbuploader_video_file_chunk, 'string'
    field :upload_session_id, 'string'
    field :is_voice_clip, 'bool'
    field :attribution_app_id, 'string'
    field :slideshow_spec, 'hash'
    field :upload_setting_properties, 'string'
    field :transcode_setting_properties, 'string'
    field :container_type, { enum: -> { CONTAINER_TYPE }}
    field :referenced_sticker_id, 'string'
    field :replace_video_id, 'string'
    field :swap_mode, { enum: -> { SWAP_MODE }}
    field :chunk_session_id, 'string'

    has_edge :auto_generated_captions do |edge|
      edge.get
    end

    has_edge :auto_trims do |edge|
      edge.post 'AdVideo' do |api|
        api.has_param :target_id, 'int'
        api.has_param :auto_trim_type, 'string'
      end
    end

    has_edge :blocked_users do |edge|
      edge.post 'AdVideo' do |api|
        api.has_param :uid, 'object'
        api.has_param :remove_block, 'bool'
      end
    end

    has_edge :captions do |edge|
      edge.delete do |api|
        api.has_param :locale, 'string'
      end
      edge.get
      edge.post 'AdVideo' do |api|
        api.has_param :default_locale, 'string'
        api.has_param :captions_file, 'file'
        api.has_param :locales_to_delete, { list: 'string' }
      end
    end

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

    has_edge :crosspost_shared_pages do |edge|
      edge.get 'Page'
    end

    has_edge :likes do |edge|
      edge.delete do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :feedback_source, 'string'
      end
      edge.get 'Profile'
      edge.post 'AdVideo' do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :feedback_source, 'string'
      end
    end

    has_edge :polls do |edge|
      edge.get 'VideoPoll'
      edge.post 'VideoPoll' do |api|
        api.has_param :question, 'string'
        api.has_param :options, { list: 'string' }
        api.has_param :correct_option, 'int'
        api.has_param :default_open, 'bool'
        api.has_param :show_results, 'bool'
        api.has_param :show_gradient, 'bool'
        api.has_param :close_after_voting, 'bool'
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

    has_edge :summarizations do |edge|
      edge.post 'AdVideo' do |api|
        api.has_param :target_id, 'int'
        api.has_param :summarization_type, 'string'
      end
    end

    has_edge :tags do |edge|
      edge.get 'TaggableSubject'
      edge.post 'AdVideo' do |api|
        api.has_param :uid, 'int'
        api.has_param :vid, 'string'
        api.has_param :tag_uid, 'int'
      end
    end

    has_edge :thumbnails do |edge|
      edge.get 'VideoThumbnail'
      edge.post 'AdVideo' do |api|
        api.has_param :source, 'file'
        api.has_param :is_preferred, 'bool'
      end
    end

    has_edge :video_insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :metric, { list: 'object' }
        api.has_param :period, { enum: -> { InsightsResult::PERIOD }}
        api.has_param :since, 'object'
        api.has_param :until, 'object'
      end
    end

  end
end
