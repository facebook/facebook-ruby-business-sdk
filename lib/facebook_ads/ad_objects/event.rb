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

  class Event < AdObject
    CATEGORY = [
      "CLASSIC_LITERATURE",
      "COMEDY",
      "CRAFTS",
      "DANCE",
      "DRINKS",
      "FITNESS_AND_WORKOUTS",
      "FOODS",
      "GAMES",
      "GARDENING",
      "HEALTHY_LIVING_AND_SELF_CARE",
      "HEALTH_AND_MEDICAL",
      "HOME_AND_GARDEN",
      "MUSIC_AND_AUDIO",
      "PARTIES",
      "PROFESSIONAL_NETWORKING",
      "RELIGIONS",
      "SHOPPING_EVENT",
      "SOCIAL_ISSUES",
      "SPORTS",
      "THEATER",
      "TV_AND_MOVIES",
      "VISUAL_ARTS",
    ]

    ONLINE_EVENT_FORMAT = [
      "fb_live",
      "messenger_room",
      "none",
      "other",
      "third_party",
    ]

    TYPE = [
      "community",
      "friends",
      "group",
      "private",
      "public",
      "work_company",
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


    field :attending_count, 'int'
    field :can_guests_invite, 'bool'
    field :category, { enum: -> { CATEGORY }}
    field :cover, 'CoverPhoto'
    field :created_time, 'datetime'
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
    field :is_online, 'bool'
    field :is_page_owned, 'bool'
    field :maybe_count, 'int'
    field :name, 'string'
    field :noreply_count, 'int'
    field :online_event_format, { enum: -> { ONLINE_EVENT_FORMAT }}
    field :online_event_third_party_url, 'string'
    field :owner, 'object'
    field :parent_group, 'Group'
    field :place, 'Place'
    field :registration_setting, 'object'
    field :scheduled_publish_time, 'string'
    field :start_time, 'string'
    field :ticket_setting, 'object'
    field :ticket_uri, 'string'
    field :ticket_uri_start_sales_time, 'string'
    field :ticketing_privacy_uri, 'string'
    field :ticketing_terms_uri, 'string'
    field :timezone, 'string'
    field :type, { enum: -> { TYPE }}
    field :updated_time, 'datetime'
    has_no_post
    has_no_delete

    has_edge :comments do |edge|
      edge.get 'NullNode'
    end

    has_edge :feed do |edge|
      edge.get 'NullNode'
    end

    has_edge :live_videos do |edge|
      edge.get 'NullNode'
      edge.post 'LiveVideo' do |api|
        api.has_param :content_tags, { list: 'string' }
        api.has_param :description, 'string'
        api.has_param :enable_backup_ingest, 'bool'
        api.has_param :encoding_settings, 'string'
        api.has_param :event_params, 'object'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :front_z_rotation, 'double'
        api.has_param :is_audio_only, 'bool'
        api.has_param :is_spherical, 'bool'
        api.has_param :original_fov, 'int'
        api.has_param :privacy, 'string'
        api.has_param :projection, { enum: -> { LiveVideo::PROJECTION }}
        api.has_param :published, 'bool'
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
      edge.get 'NullNode'
    end

    has_edge :picture do |edge|
      edge.get 'NullNode'
    end

    has_edge :posts do |edge|
      edge.get 'NullNode'
    end

    has_edge :roles do |edge|
      edge.get 'Profile'
    end

    has_edge :ticket_tiers do |edge|
      edge.get
    end

    has_edge :videos do |edge|
      edge.get 'NullNode'
    end

  end
end
