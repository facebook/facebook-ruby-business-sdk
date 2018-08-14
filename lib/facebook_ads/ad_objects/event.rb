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
    TYPE = [
      "private",
      "public",
      "group",
      "community",
    ]

    EVENT_STATE_FILTER = [
      "canceled",
      "draft",
      "scheduled_draft_for_publication",
      "published",
    ]

    TIME_FILTER = [
      "upcoming",
      "past",
    ]

    PROMOTABLE_EVENT_TYPES = [
      "OFFSITE_TICKET",
      "ONSITE_TICKET",
      "RSVP",
    ]


    field :attending_count, 'int'
    field :can_guests_invite, 'bool'
    field :category, 'string'
    field :cover, 'CoverPhoto'
    field :declined_count, 'int'
    field :description, 'string'
    field :discount_code_enabled, 'bool'
    field :end_time, 'string'
    field :event_times, { list: 'object' }
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
    field :parent_group, 'object'
    field :place, 'object'
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

    has_edge :live_videos do |edge|
      edge.post do |api|
        api.has_param :attribution_app_id, 'string'
        api.has_param :content_tags, { list: 'string' }
        api.has_param :description, 'string'
        api.has_param :encoding_settings, 'string'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :front_z_rotation, 'double'
        api.has_param :is_spherical, 'bool'
        api.has_param :live_encoders, { list: 'string' }
        api.has_param :original_fov, 'int'
        api.has_param :planned_start_time, 'int'
        api.has_param :privacy, 'object'
        api.has_param :projection, { enum: %w{EQUIRECTANGULAR CUBEMAP }}
        api.has_param :published, 'bool'
        api.has_param :save_vod, 'bool'
        api.has_param :schedule_custom_profile_image, 'file'
        api.has_param :spatial_audio_format, { enum: %w{ambiX_4 }}
        api.has_param :status, { enum: %w{UNPUBLISHED LIVE_NOW SCHEDULED_UNPUBLISHED SCHEDULED_LIVE SCHEDULED_CANCELED }}
        api.has_param :stereoscopic_mode, { enum: %w{MONO LEFT_RIGHT TOP_BOTTOM }}
        api.has_param :stop_on_delete_stream, 'bool'
        api.has_param :stream_type, { enum: %w{REGULAR AMBIENT }}
        api.has_param :title, 'string'
      end
    end

    has_edge :photos do |edge|
      edge.post 'Photo' do |api|
        api.has_param :aid, 'string'
        api.has_param :allow_spherical_photo, 'bool'
        api.has_param :application_id, 'string'
        api.has_param :audience_exp, 'bool'
        api.has_param :backdated_time, 'datetime'
        api.has_param :backdated_time_granularity, { enum: -> { Photo::BACKDATED_TIME_GRANULARITY }}
        api.has_param :caption, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :feed_targeting, 'object'
        api.has_param :full_res_is_coming_later, 'bool'
        api.has_param :initial_view_heading_override_degrees, 'int'
        api.has_param :initial_view_pitch_override_degrees, 'int'
        api.has_param :initial_view_vertical_fov_override_degrees, 'int'
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
        api.has_param :privacy, 'object'
        api.has_param :profile_id, 'int'
        api.has_param :published, 'bool'
        api.has_param :qn, 'string'
        api.has_param :scheduled_publish_time, 'int'
        api.has_param :spherical_metadata, 'hash'
        api.has_param :sponsor_id, 'string'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :tags, { list: 'object' }
        api.has_param :target_id, 'int'
        api.has_param :targeting, 'object'
        api.has_param :url, 'string'
      end
    end

    has_edge :videos do |edge|
      edge.post do |api|
        api.has_param :audio_story_wave_animation_handle, 'string'
        api.has_param :content_category, { enum: %w{BEAUTY_FASHION BUSINESS CARS_TRUCKS COMEDY CUTE_ANIMALS ENTERTAINMENT FAMILY FOOD_HEALTH HOME LIFESTYLE MUSIC NEWS POLITICS SCIENCE SPORTS TECHNOLOGY VIDEO_GAMING OTHER }}
        api.has_param :description, 'string'
        api.has_param :embeddable, 'bool'
        api.has_param :end_offset, 'int'
        api.has_param :file_size, 'int'
        api.has_param :file_url, 'string'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :fov, 'int'
        api.has_param :front_z_rotation, 'double'
        api.has_param :guide, { list: { list: 'int' } }
        api.has_param :guide_enabled, 'bool'
        api.has_param :initial_heading, 'int'
        api.has_param :initial_pitch, 'int'
        api.has_param :original_fov, 'int'
        api.has_param :original_projection_type, { enum: %w{equirectangular cubemap equiangular_cubemap half_equirectangular }}
        api.has_param :react_mode_metadata, 'string'
        api.has_param :referenced_sticker_id, 'string'
        api.has_param :replace_video_id, 'string'
        api.has_param :slideshow_spec, 'hash'
        api.has_param :source, 'string'
        api.has_param :spherical, 'bool'
        api.has_param :start_offset, 'int'
        api.has_param :swap_mode, { enum: %w{replace }}
        api.has_param :thumb, 'file'
        api.has_param :title, 'string'
        api.has_param :unpublished_content_type, { enum: %w{SCHEDULED DRAFT ADS_POST INLINE_CREATED PUBLISHED }}
        api.has_param :upload_phase, { enum: %w{start transfer finish cancel }}
        api.has_param :upload_session_id, 'string'
        api.has_param :video_file_chunk, 'string'
        api.has_param :xpost_everstore_handle, 'string'
      end
    end

  end
end
