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
