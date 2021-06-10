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
      "ACO_AUTOEXTRACTED_VIDEO",
      "ACO_VIDEO_VARIATION",
      "AD_BREAK_PREVIEW",
      "AD_DERIVATIVE",
      "AGE_UP",
      "ALBUM_MULTIMEDIA_POST",
      "ALOHA_CALL_VIDEO",
      "ALOHA_SUPERFRAME",
      "APP_REVIEW_SCREENCAST",
      "ATLAS_VIDEO",
      "AUDIO_BROADCAST",
      "BROADCAST",
      "CANVAS",
      "CFC_VIDEO",
      "CMS_MEDIA_MANAGER",
      "CONTAINED_POST_ATTACHMENT",
      "CONTAINED_POST_AUDIO_BROADCAST",
      "CONTAINED_POST_BROADCAST",
      "CONTAINED_POST_COPYRIGHT_REFERENCE_BROADCAST",
      "COPYRIGHT_REFERENCE_BROADCAST",
      "COPYRIGHT_REFERENCE_VIDEO",
      "CULTURAL_MOMENT_DEPRECATED",
      "DCO_AD_ASSET_FEED",
      "DCO_AUTOGEN_VIDEO",
      "DCO_TRIMMED_VIDEO",
      "DIM_SUM",
      "DIRECTED_POST_ATTACHMENT",
      "DIRECT_INBOX",
      "DIRECT_INBOX_REACTION",
      "DYNAMIC_ITEM_DISPLAY_BUNDLE",
      "DYNAMIC_ITEM_VIDEO",
      "DYNAMIC_TEMPLATE_VIDEO",
      "EVENT_COVER_VIDEO",
      "EVENT_TOUR",
      "FACECAST_DVR",
      "FB_SHORTS",
      "FB_SHORTS_GROUP_POST",
      "FB_SHORTS_POST",
      "FB_SHORTS_REMIX_POST",
      "FUNDRAISER_COVER_VIDEO",
      "GAME_CLIP",
      "GEMSTONE",
      "GOODWILL_ANNIVERSARY_DEPRECATED",
      "GOODWILL_ANNIVERSARY_PROMOTION_DEPRECATED",
      "GOODWILL_VIDEO_CONTAINED_SHARE",
      "GOODWILL_VIDEO_PROMOTION",
      "GOODWILL_VIDEO_SHARE",
      "GOODWILL_VIDEO_TOKEN_REQUIRED",
      "GROUP_POST",
      "HACK_TV",
      "HEURISTIC_CLUSTER_VIDEO",
      "HEURISTIC_PREVIEW",
      "HIGHLIGHT_CLIP_VIDEO",
      "HUDDLE_BROADCAST",
      "IG_REELS_XPV",
      "IG_STORIES_READER",
      "INSPIRATION_VIDEO",
      "INSTAGRAM_VIDEO_COPY",
      "INSTANT_APPLICATION_PREVIEW",
      "INSTANT_ARTICLE",
      "INSTANT_GAME_CLIP",
      "ISSUE_MODULE",
      "JOBS_VISUAL_INTRO_ENTRY",
      "JOB_APPLICATION_VIDEO",
      "JOB_OPENING_VIDEO",
      "KOTOTORO",
      "LEARN",
      "LEGACY",
      "LIVE_CREATIVE_KIT_VIDEO",
      "LIVE_LINEAR_VIDEO_CHANNEL_INTERNAL_BROADCAST",
      "LIVE_PHOTO",
      "LOOK_NOW_DEPRECATED",
      "MARKETPLACE_LISTING_VIDEO",
      "MARKETPLACE_PRE_RECORDED_VIDEO",
      "MESSENGER_WATCH_TOGETHER",
      "NEO_ASYNC_GAME_VIDEO",
      "NO_STORY",
      "NO_STORY_WITH_ENTPOST",
      "OCULUS_CREATOR_PORTAL",
      "OCULUS_VENUES_BROADCAST",
      "OFFERS_VIDEO",
      "PAGES_COVER_VIDEO",
      "PAGE_REVIEW_SCREENCAST",
      "PAGE_SLIDESHOW_VIDEO",
      "PARTNER_DIRECTORY_BRAND_MEDIA",
      "PIXELCLOUD",
      "PODCAST_HIGHLIGHT",
      "PODCAST_RSS",
      "PODCAST_RSS_NO_NEWSFEED_STORY",
      "PODCAST_VOICES",
      "PODCAST_VOICES_NO_NEWSFEED_STORY",
      "PREMIERE_SOURCE",
      "PREMIUM_MUSIC_VIDEO_NO_NEWSFEED_STORY",
      "PREMIUM_MUSIC_VIDEO_WITH_NEWSFEED_STORY",
      "PRIVATE_GALLERY_VIDEO",
      "PRODUCT_VIDEO",
      "PROFILE_COVER_VIDEO",
      "PROFILE_INTRO_CARD",
      "PROFILE_VIDEO",
      "PROTON",
      "QUICK_PROMOTION",
      "REPLACE_VIDEO",
      "SALES_CLIENT_INTERACTION",
      "SAY_THANKS_DEPRECATED",
      "SHOWREEL_NATIVE_DUMMY_VIDEO",
      "SLIDESHOW_ANIMOTO",
      "SLIDESHOW_SHAKR",
      "SLIDESHOW_VARIATION_VIDEO",
      "SOTTO_CONTENT",
      "SOUNDBITES_VIDEO",
      "SOUND_PLATFORM_STREAM",
      "SRT_ATTACHMENT",
      "STAGES_BROADCAST",
      "STORIES_VIDEO",
      "STORYLINE",
      "STORYLINE_WITH_EXTERNAL_MUSIC",
      "STORY_ARCHIVE_VIDEO",
      "STORY_CARD_TEMPLATE",
      "STREAM_HIGHLIGHTS_VIDEO",
      "TAROT_DIGEST",
      "TEMPORARY_UNLISTED",
      "TEMP_MULTIMEDIA_POST",
      "UNLISTED",
      "UNLISTED_HACK_TV",
      "UNLISTED_OCULUS",
      "VIDEO_COMMENT",
      "VIDEO_COMPOSITION_VARIATION",
      "VIDEO_CREATIVE_EDITOR_AUTOGEN_AD_VIDEO",
      "VIDEO_SUPERRES",
      "VOICES_ARTICLE_VIDEO",
      "VU_GENERATED_VIDEO",
      "WOODHENGE",
      "WORK_KNOWLEDGE_VIDEO",
      "YOUR_DAY",
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
      "OTHER",
      "POLITICS",
      "SCIENCE",
      "SPORTS",
      "TECHNOLOGY",
      "VIDEO_GAMING",
    ]

    FORMATTING = [
      "MARKDOWN",
      "PLAINTEXT",
    ]

    ORIGINAL_PROJECTION_TYPE = [
      "cubemap",
      "equirectangular",
      "half_equirectangular",
    ]

    SWAP_MODE = [
      "replace",
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

    UPLOAD_PHASE = [
      "cancel",
      "finish",
      "start",
      "transfer",
    ]

    TYPE = [
      "tagged",
      "uploaded",
    ]

    BACKDATED_TIME_GRANULARITY = [
      "day",
      "hour",
      "min",
      "month",
      "none",
      "year",
    ]


    field :ad_breaks, { list: 'int' }
    field :backdated_time, 'datetime'
    field :backdated_time_granularity, 'string'
    field :content_category, 'string'
    field :content_tags, { list: 'string' }
    field :copyright, 'VideoCopyright'
    field :copyright_monitoring_status, 'string'
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
    field :is_reference_only, 'bool'
    field :length, 'double'
    field :live_audience_count, 'int'
    field :live_status, 'string'
    field :music_video_copyright, 'MusicVideoCopyright'
    field :permalink_url, 'object'
    field :picture, 'string'
    field :place, 'Place'
    field :premiere_living_room_status, 'string'
    field :privacy, 'Privacy'
    field :published, 'bool'
    field :scheduled_publish_time, 'datetime'
    field :source, 'string'
    field :spherical, 'bool'
    field :status, 'object'
    field :title, 'string'
    field :universal_video_id, 'string'
    field :updated_time, 'datetime'
    field :adaptive_type, 'string'
    field :animated_effect_id, 'int'
    field :application_id, 'string'
    field :asked_fun_fact_prompt_id, 'int'
    field :audio_story_wave_animation_handle, 'string'
    field :chunk_session_id, 'string'
    field :composer_entry_picker, 'string'
    field :composer_entry_point, 'string'
    field :composer_entry_time, 'int'
    field :composer_session_events_log, 'string'
    field :composer_session_id, 'string'
    field :composer_source_surface, 'string'
    field :composer_type, 'string'
    field :container_type, { enum: -> { CONTAINER_TYPE }}
    field :creative_tools, 'string'
    field :end_offset, 'int'
    field :fbuploader_video_file_chunk, 'string'
    field :file_size, 'int'
    field :file_url, 'string'
    field :fisheye_video_cropped, 'bool'
    field :formatting, { enum: -> { FORMATTING }}
    field :fov, 'int'
    field :front_z_rotation, 'double'
    field :fun_fact_prompt_id, 'int'
    field :fun_fact_toastee_id, 'int'
    field :guide, { list: { list: 'int' } }
    field :guide_enabled, 'bool'
    field :has_nickname, 'bool'
    field :holiday_card, 'string'
    field :initial_heading, 'int'
    field :initial_pitch, 'int'
    field :instant_game_entry_point_data, 'string'
    field :is_boost_intended, 'bool'
    field :is_group_linking_post, 'bool'
    field :is_voice_clip, 'bool'
    field :location_source_id, 'string'
    field :name, 'string'
    field :offer_like_post_id, 'int'
    field :og_action_type_id, 'string'
    field :og_icon_id, 'string'
    field :og_object_id, 'string'
    field :og_phrase, 'string'
    field :og_suggestion_mechanism, 'string'
    field :original_fov, 'int'
    field :original_projection_type, { enum: -> { ORIGINAL_PROJECTION_TYPE }}
    field :publish_event_id, 'int'
    field :react_mode_metadata, 'string'
    field :referenced_sticker_id, 'string'
    field :replace_video_id, 'string'
    field :sales_promo_id, 'int'
    field :slideshow_spec, 'hash'
    field :source_instagram_media_id, 'string'
    field :start_offset, 'int'
    field :swap_mode, { enum: -> { SWAP_MODE }}
    field :text_format_metadata, 'string'
    field :throwback_camera_roll_media, 'string'
    field :thumb, 'file'
    field :time_since_original_post, 'int'
    field :transcode_setting_properties, 'string'
    field :unpublished_content_type, { enum: -> { UNPUBLISHED_CONTENT_TYPE }}
    field :upload_phase, { enum: -> { UPLOAD_PHASE }}
    field :upload_session_id, 'string'
    field :upload_setting_properties, 'string'
    field :video_file_chunk, 'string'
    field :video_id_original, 'string'
    field :video_start_time_ms, 'int'
    field :waterfall_id, 'string'

    has_edge :captions do |edge|
      edge.get
      edge.post 'AdVideo' do |api|
        api.has_param :captions_file, 'file'
        api.has_param :default_locale, 'string'
        api.has_param :locales_to_delete, { list: 'string' }
      end
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

    has_edge :crosspost_shared_pages do |edge|
      edge.get 'Page'
    end

    has_edge :likes do |edge|
      edge.get 'Profile'
      edge.post 'AdVideo' do |api|
        api.has_param :feedback_source, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :tracking, 'string'
      end
    end

    has_edge :poll_settings do |edge|
      edge.get
    end

    has_edge :polls do |edge|
      edge.get 'VideoPoll'
      edge.post 'VideoPoll' do |api|
        api.has_param :close_after_voting, 'bool'
        api.has_param :correct_option, 'int'
        api.has_param :default_open, 'bool'
        api.has_param :options, { list: 'string' }
        api.has_param :question, 'string'
        api.has_param :show_gradient, 'bool'
        api.has_param :show_results, 'bool'
      end
    end

    has_edge :sponsor_tags do |edge|
      edge.get 'Page'
    end

    has_edge :tags do |edge|
      edge.get
      edge.post 'AdVideo' do |api|
        api.has_param :tag_uid, 'int'
        api.has_param :uid, 'int'
        api.has_param :vid, 'string'
      end
    end

    has_edge :thumbnails do |edge|
      edge.get 'VideoThumbnail'
      edge.post 'AdVideo' do |api|
        api.has_param :is_preferred, 'bool'
        api.has_param :source, 'file'
      end
    end

    has_edge :video_insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :metric, { list: 'object' }
        api.has_param :period, { enum: -> { InsightsResult::PERIOD }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

  end
end
