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

  class Event < AdObject
    CATEGORY = [
      "ART_EVENT",
      "BOOK_EVENT",
      "CLASS_EVENT",
      "COMEDY_EVENT",
      "CONFERENCE_EVENT",
      "DANCE_EVENT",
      "DINING_EVENT",
      "FAMILY_EVENT",
      "FESTIVAL_EVENT",
      "FITNESS",
      "FOOD_TASTING",
      "FUNDRAISER",
      "LECTURE",
      "MEETUP",
      "MOVIE_EVENT",
      "MUSIC_EVENT",
      "NEIGHBORHOOD",
      "NIGHTLIFE",
      "OTHER",
      "RELIGIOUS_EVENT",
      "SHOPPING",
      "SPORTS_EVENT",
      "THEATER_EVENT",
      "VOLUNTEERING",
      "WORKSHOP",
    ]

    TYPE = [
      "community",
      "group",
      "private",
      "public",
    ]

    EVENT_STATE_FILTER = [
      "canceled",
      "draft",
      "published",
      "scheduled_draft_for_publication",
    ]

    TIME_FILTER = [
      "past",
      "upcoming",
    ]

    PROMOTABLE_EVENT_TYPES = [
      "OFFSITE_TICKET",
      "ONSITE_TICKET",
      "RSVP",
    ]


    field :attending_count, 'int'
    field :can_guests_invite, 'bool'
    field :category, { enum: -> { CATEGORY }}
    field :cover, 'CoverPhoto'
    field :declined_count, 'int'
    field :description, 'string'
    field :discount_code_enabled, 'bool'
    field :end_time, 'string'
    field :event_times, { list: 'ChildEvent' }
    field :guest_list_enabled, 'bool'
    field :id, 'string'
    field :interested_count, 'int'
    field :is_canceled, 'bool'
    field :is_draft, 'bool'
    field :is_page_owned, 'bool'
    field :maybe_count, 'int'
    field :name, 'string'
    field :noreply_count, 'int'
    field :owner, 'object'
    field :parent_group, 'Group'
    field :place, 'Place'
    field :scheduled_publish_time, 'string'
    field :start_time, 'string'
    field :ticket_uri, 'string'
    field :ticket_uri_start_sales_time, 'string'
    field :ticketing_privacy_uri, 'string'
    field :ticketing_terms_uri, 'string'
    field :timezone, 'string'
    field :type, { enum: -> { TYPE }}
    field :updated_time, 'datetime'
    has_no_post
    has_no_delete

    has_edge :admins do |edge|
      edge.get 'Profile'
    end

    has_edge :feed do |edge|
      edge.post do |api|
        api.has_param :actions, 'object'
        api.has_param :adaptive_type, 'string'
        api.has_param :album_id, 'string'
        api.has_param :android_key_hash, 'string'
        api.has_param :animated_effect_id, 'int'
        api.has_param :application_id, 'string'
        api.has_param :asked_fun_fact_prompt_id, 'int'
        api.has_param :asset3d_id, 'int'
        api.has_param :associated_id, 'string'
        api.has_param :attach_place_suggestion, 'bool'
        api.has_param :attached_media, { list: 'object' }
        api.has_param :audience_exp, 'bool'
        api.has_param :backdated_time, 'datetime'
        api.has_param :backdated_time_granularity, { enum: %w{day hour min month none year }}
        api.has_param :call_to_action, 'object'
        api.has_param :caption, 'string'
        api.has_param :checkin_entry_point, { enum: %w{BRANDING_CHECKIN BRANDING_OTHER BRANDING_PHOTO BRANDING_STATUS }}
        api.has_param :child_attachments, { list: 'object' }
        api.has_param :client_mutation_id, 'string'
        api.has_param :composer_entry_picker, 'string'
        api.has_param :composer_entry_point, 'string'
        api.has_param :composer_entry_time, 'int'
        api.has_param :composer_session_events_log, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :composer_source_surface, 'string'
        api.has_param :composer_type, 'string'
        api.has_param :connection_class, 'string'
        api.has_param :content_attachment, 'string'
        api.has_param :coordinates, 'object'
        api.has_param :cta_link, 'string'
        api.has_param :cta_type, 'string'
        api.has_param :description, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :expanded_height, 'int'
        api.has_param :expanded_width, 'int'
        api.has_param :feed_targeting, 'object'
        api.has_param :formatting, { enum: %w{MARKDOWN PLAINTEXT }}
        api.has_param :fun_fact_prompt_id, 'int'
        api.has_param :fun_fact_toastee_id, 'int'
        api.has_param :has_nickname, 'bool'
        api.has_param :height, 'int'
        api.has_param :holiday_card, 'string'
        api.has_param :home_checkin_city_id, 'object'
        api.has_param :image_crops, 'hash'
        api.has_param :implicit_with_tags, { list: 'int' }
        api.has_param :instant_game_entry_point_data, 'string'
        api.has_param :ios_bundle_id, 'string'
        api.has_param :is_backout_draft, 'bool'
        api.has_param :is_boost_intended, 'bool'
        api.has_param :is_explicit_location, 'bool'
        api.has_param :is_explicit_share, 'bool'
        api.has_param :is_group_linking_post, 'bool'
        api.has_param :is_photo_container, 'bool'
        api.has_param :link, 'string'
        api.has_param :location_source_id, 'string'
        api.has_param :manual_privacy, 'bool'
        api.has_param :message, 'string'
        api.has_param :multi_share_end_card, 'bool'
        api.has_param :multi_share_optimized, 'bool'
        api.has_param :name, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :object_attachment, 'string'
        api.has_param :offer_like_post_id, 'int'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_hide_object_attachment, 'bool'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_set_profile_badge, 'bool'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :page_recommendation, 'string'
        api.has_param :picture, 'string'
        api.has_param :place, 'object'
        api.has_param :place_attachment_setting, { enum: %w{1 2 }}
        api.has_param :place_list, 'string'
        api.has_param :place_list_data, { list: 'string' }
        api.has_param :post_surfaces_blacklist, { list: { enum: %w{1 2 3 4 5 }} }
        api.has_param :posting_to_redspace, { enum: %w{disabled enabled }}
        api.has_param :privacy, 'string'
        api.has_param :prompt_id, 'string'
        api.has_param :prompt_tracking_string, 'string'
        api.has_param :properties, 'object'
        api.has_param :proxied_app_id, 'string'
        api.has_param :publish_event_id, 'int'
        api.has_param :published, 'bool'
        api.has_param :quote, 'string'
        api.has_param :react_mode_metadata, 'string'
        api.has_param :ref, { list: 'string' }
        api.has_param :referenceable_image_ids, { list: 'string' }
        api.has_param :referral_id, 'string'
        api.has_param :sales_promo_id, 'int'
        api.has_param :scheduled_publish_time, 'datetime'
        api.has_param :source, 'string'
        api.has_param :sponsor_id, 'string'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :suggested_place_id, 'object'
        api.has_param :tags, { list: 'int' }
        api.has_param :target_surface, { enum: %w{STORY TIMELINE }}
        api.has_param :targeting, 'object'
        api.has_param :text_format_metadata, 'string'
        api.has_param :text_format_preset_id, 'string'
        api.has_param :text_only_place, 'string'
        api.has_param :throwback_camera_roll_media, 'string'
        api.has_param :thumbnail, 'file'
        api.has_param :time_since_original_post, 'int'
        api.has_param :title, 'string'
        api.has_param :tracking_info, 'string'
        api.has_param :unpublished_content_type, { enum: %w{ADS_POST DRAFT INLINE_CREATED PUBLISHED SCHEDULED }}
        api.has_param :user_selected_tags, 'bool'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :viewer_coordinates, 'object'
        api.has_param :width, 'int'
      end
    end

    has_edge :live_videos do |edge|
      edge.post 'LiveVideo' do |api|
        api.has_param :content_tags, { list: 'string' }
        api.has_param :description, 'string'
        api.has_param :encoding_settings, 'string'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :front_z_rotation, 'double'
        api.has_param :is_audio_only, 'bool'
        api.has_param :is_spherical, 'bool'
        api.has_param :live_encoders, { list: 'string' }
        api.has_param :original_fov, 'int'
        api.has_param :planned_start_time, 'int'
        api.has_param :privacy, 'string'
        api.has_param :projection, { enum: -> { LiveVideo::PROJECTION }}
        api.has_param :published, 'bool'
        api.has_param :save_vod, 'bool'
        api.has_param :schedule_custom_profile_image, 'file'
        api.has_param :spatial_audio_format, { enum: -> { LiveVideo::SPATIAL_AUDIO_FORMAT }}
        api.has_param :status, { enum: -> { LiveVideo::STATUS }}
        api.has_param :stereoscopic_mode, { enum: -> { LiveVideo::STEREOSCOPIC_MODE }}
        api.has_param :stop_on_delete_stream, 'bool'
        api.has_param :stream_type, { enum: -> { LiveVideo::STREAM_TYPE }}
        api.has_param :title, 'string'
      end
    end

    has_edge :photos do |edge|
      edge.post 'Photo' do |api|
        api.has_param :aid, 'string'
        api.has_param :allow_spherical_photo, 'bool'
        api.has_param :alt_text_custom, 'string'
        api.has_param :android_key_hash, 'string'
        api.has_param :application_id, 'string'
        api.has_param :attempt, 'int'
        api.has_param :audience_exp, 'bool'
        api.has_param :backdated_time, 'datetime'
        api.has_param :backdated_time_granularity, { enum: -> { Photo::BACKDATED_TIME_GRANULARITY }}
        api.has_param :caption, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :feed_targeting, 'object'
        api.has_param :filter_type, 'int'
        api.has_param :full_res_is_coming_later, 'bool'
        api.has_param :initial_view_heading_override_degrees, 'int'
        api.has_param :initial_view_pitch_override_degrees, 'int'
        api.has_param :initial_view_vertical_fov_override_degrees, 'int'
        api.has_param :ios_bundle_id, 'string'
        api.has_param :is_explicit_location, 'bool'
        api.has_param :is_explicit_place, 'bool'
        api.has_param :manual_privacy, 'bool'
        api.has_param :message, 'string'
        api.has_param :name, 'string'
        api.has_param :no_story, 'bool'
        api.has_param :offline_id, 'int'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_set_profile_badge, 'bool'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :place, 'object'
        api.has_param :privacy, 'string'
        api.has_param :profile_id, 'int'
        api.has_param :proxied_app_id, 'string'
        api.has_param :published, 'bool'
        api.has_param :qn, 'string'
        api.has_param :scheduled_publish_time, 'int'
        api.has_param :spherical_metadata, 'hash'
        api.has_param :sponsor_id, 'string'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :tags, { list: 'object' }
        api.has_param :target_id, 'int'
        api.has_param :targeting, 'object'
        api.has_param :time_since_original_post, 'int'
        api.has_param :uid, 'int'
        api.has_param :unpublished_content_type, { enum: -> { Photo::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :url, 'string'
        api.has_param :user_selected_tags, 'bool'
        api.has_param :vault_image_id, 'string'
      end
    end

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :width, 'int'
      end
    end

    has_edge :roles do |edge|
      edge.get 'Profile'
    end

  end
end
