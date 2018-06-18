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

  class User < AdObject

    field :about, 'string'
    field :address, 'Location'
    field :admin_notes, { list: 'PageAdminNote' }
    field :age_range, 'object'
    field :birthday, 'string'
    field :can_review_measurement_request, 'bool'
    field :context, 'object'
    field :cover, 'object'
    field :currency, 'object'
    field :devices, { list: 'object' }
    field :education, { list: 'object' }
    field :email, 'string'
    field :employee_number, 'string'
    field :favorite_athletes, { list: 'object' }
    field :favorite_teams, { list: 'object' }
    field :first_name, 'string'
    field :gender, 'string'
    field :hometown, 'Page'
    field :id, 'string'
    field :inspirational_people, { list: 'object' }
    field :install_type, 'string'
    field :installed, 'bool'
    field :interested_in, { list: 'string' }
    field :is_famedeeplinkinguser, 'bool'
    field :is_payment_enabled, 'bool'
    field :is_shared_login, 'bool'
    field :is_verified, 'bool'
    field :labels, { list: 'PageLabel' }
    field :languages, { list: 'object' }
    field :last_ad_referral, 'object'
    field :last_name, 'string'
    field :link, 'string'
    field :local_news_megaphone_dismiss_status, 'bool'
    field :local_news_subscription_status, 'bool'
    field :locale, 'string'
    field :location, 'Page'
    field :meeting_for, { list: 'string' }
    field :middle_name, 'string'
    field :name, 'string'
    field :name_format, 'string'
    field :payment_pricepoints, 'object'
    field :political, 'string'
    field :profile_pic, 'string'
    field :public_key, 'string'
    field :quotes, 'string'
    field :relationship_status, 'string'
    field :religion, 'string'
    field :security_settings, 'object'
    field :shared_login_upgrade_required_by, 'datetime'
    field :short_name, 'string'
    field :significant_other, 'User'
    field :sports, { list: 'object' }
    field :test_group, 'int'
    field :third_party_id, 'string'
    field :timezone, 'double'
    field :token_for_business, 'string'
    field :updated_time, 'datetime'
    field :verified, 'bool'
    field :video_upload_limits, 'object'
    field :viewer_can_send_gift, 'bool'
    field :website, 'string'
    field :work, { list: 'object' }
    has_no_post
    has_no_delete

    has_edge :accounts do |edge|
      edge.get 'Page' do |api|
        api.has_param :business_id, 'string'
        api.has_param :is_business, 'bool'
        api.has_param :is_place, 'bool'
        api.has_param :is_promotable, 'bool'
      end
      edge.post do |api|
        api.has_param :about, 'string'
        api.has_param :address, 'string'
        api.has_param :category_enum, 'string'
        api.has_param :category_list, { list: 'string' }
        api.has_param :city_id, 'object'
        api.has_param :coordinates, 'object'
        api.has_param :cover_photo, 'object'
        api.has_param :description, 'string'
        api.has_param :ignore_coordinate_warnings, 'bool'
        api.has_param :location, 'object'
        api.has_param :name, 'string'
        api.has_param :phone, 'string'
        api.has_param :picture, 'string'
        api.has_param :website, 'string'
        api.has_param :zip, 'string'
      end
    end

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :albums do |edge|
      edge.post 'Album' do |api|
        api.has_param :contributors, { list: 'int' }
        api.has_param :description, 'string'
        api.has_param :is_default, 'bool'
        api.has_param :location, 'string'
        api.has_param :make_shared_album, 'bool'
        api.has_param :message, 'string'
        api.has_param :name, 'string'
        api.has_param :place, 'object'
        api.has_param :privacy, 'object'
        api.has_param :tags, { list: 'int' }
        api.has_param :visible, 'string'
      end
    end

    has_edge :conversations do |edge|
      edge.get 'UnifiedThread' do |api|
        api.has_param :folder, 'string'
        api.has_param :tags, { list: 'string' }
      end
    end

    has_edge :leadgen_forms do |edge|
      edge.get 'LeadgenForm' do |api|
        api.has_param :page_id, 'string'
        api.has_param :query, 'string'
      end
    end

    has_edge :live_encoders do |edge|
      edge.post do |api|
        api.has_param :brand, 'string'
        api.has_param :device_id, 'string'
        api.has_param :model, 'string'
        api.has_param :name, 'string'
        api.has_param :version, 'string'
      end
    end

    has_edge :live_videos do |edge|
      edge.get 'LiveVideo' do |api|
        api.has_param :broadcast_status, { list: { enum: -> { LiveVideo::BROADCAST_STATUS }} }
        api.has_param :type, { enum: -> { LiveVideo::TYPE }}
      end
      edge.post 'LiveVideo' do |api|
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
        api.has_param :projection, { enum: -> { LiveVideo::PROJECTION }}
        api.has_param :published, 'bool'
        api.has_param :save_vod, 'bool'
        api.has_param :schedule_custom_profile_image, 'file'
        api.has_param :spatial_audio_format, { enum: -> { LiveVideo::SPATIAL_AUDIO_FORMAT }}
        api.has_param :status, { enum: -> { LiveVideo::STATUS }}
        api.has_param :stop_on_delete_stream, 'bool'
        api.has_param :stream_type, { enum: -> { LiveVideo::STREAM_TYPE }}
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

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :width, 'int'
      end
    end

    has_edge :promotable_domains do |edge|
      edge.get 'Domain'
    end

    has_edge :promotable_events do |edge|
      edge.get 'Event' do |api|
        api.has_param :include_past_events, 'bool'
        api.has_param :is_page_event, 'bool'
        api.has_param :page_id, 'int'
        api.has_param :promotable_event_types, { list: { enum: -> { Event::PROMOTABLE_EVENT_TYPES }} }
      end
    end

    has_edge :threads do |edge|
      edge.get 'UnifiedThread' do |api|
        api.has_param :folder, 'string'
        api.has_param :tags, { list: 'string' }
      end
    end

  end
end
