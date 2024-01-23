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

  class User < AdObject
    LOCAL_NEWS_MEGAPHONE_DISMISS_STATUS = [
      "NO",
      "YES",
    ]

    LOCAL_NEWS_SUBSCRIPTION_STATUS = [
      "STATUS_OFF",
      "STATUS_ON",
    ]

    FILTERING = [
      "ema",
      "groups",
      "groups_social",
    ]

    TYPE = [
      "content_update",
      "generic",
    ]


    field :about, 'string'
    field :age_range, 'AgeRange'
    field :avatar_2d_profile_picture, 'AvatarProfilePicture'
    field :birthday, 'string'
    field :community, 'Group'
    field :cover, 'UserCoverPhoto'
    field :currency, 'Currency'
    field :education, { list: 'object' }
    field :email, 'string'
    field :favorite_athletes, { list: 'Experience' }
    field :favorite_teams, { list: 'Experience' }
    field :first_name, 'string'
    field :gender, 'string'
    field :hometown, 'Page'
    field :id, 'string'
    field :id_for_avatars, 'string'
    field :inspirational_people, { list: 'Experience' }
    field :install_type, 'string'
    field :installed, 'bool'
    field :is_guest_user, 'bool'
    field :is_work_account, 'bool'
    field :languages, { list: 'Experience' }
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
    field :payment_pricepoints, 'PaymentPricepoints'
    field :political, 'string'
    field :profile_pic, 'string'
    field :quotes, 'string'
    field :relationship_status, 'string'
    field :shared_login_upgrade_required_by, 'datetime'
    field :short_name, 'string'
    field :significant_other, 'User'
    field :sports, { list: 'Experience' }
    field :supports_donate_button_in_live_video, 'bool'
    field :third_party_id, 'string'
    field :timezone, 'double'
    field :token_for_business, 'string'
    field :updated_time, 'datetime'
    field :verified, 'bool'
    field :video_upload_limits, 'VideoUploadLimits'
    field :website, 'string'

    has_edge :access_tokens do |edge|
      edge.delete
      edge.post 'User' do |api|
        api.has_param :business_app, 'int'
        api.has_param :page_id, 'string'
        api.has_param :scope, { list: 'Permission' }
        api.has_param :set_token_expires_in_60_days, 'bool'
      end
    end

    has_edge :accounts do |edge|
      edge.get 'Page' do |api|
        api.has_param :is_place, 'bool'
        api.has_param :is_promotable, 'bool'
      end
      edge.post do |api|
        api.has_param :about, 'string'
        api.has_param :address, 'string'
        api.has_param :category, 'int'
        api.has_param :category_enum, 'string'
        api.has_param :category_list, { list: 'string' }
        api.has_param :city_id, 'string'
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

    has_edge :ad_studies do |edge|
      edge.get 'AdStudy'
      edge.post 'AdStudy' do |api|
        api.has_param :cells, { list: 'object' }
        api.has_param :client_business, 'string'
        api.has_param :confidence_level, 'double'
        api.has_param :cooldown_start_time, 'int'
        api.has_param :description, 'string'
        api.has_param :end_time, 'int'
        api.has_param :name, 'string'
        api.has_param :objectives, { list: 'object' }
        api.has_param :observation_end_time, 'int'
        api.has_param :start_time, 'int'
        api.has_param :type, { enum: -> { AdStudy::TYPE }}
        api.has_param :viewers, { list: 'int' }
      end
    end

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :albums do |edge|
      edge.get 'Album'
    end

    has_edge :applications do |edge|
      edge.post 'User' do |api|
        api.has_param :business_app, 'int'
      end
    end

    has_edge :apprequestformerrecipients do |edge|
      edge.get 'AppRequestFormerRecipient'
    end

    has_edge :apprequests do |edge|
      edge.get 'AppRequest'
    end

    has_edge :assigned_ad_accounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :assigned_business_asset_groups do |edge|
      edge.get 'BusinessAssetGroup' do |api|
        api.has_param :contained_asset_id, 'string'
      end
    end

    has_edge :assigned_pages do |edge|
      edge.get 'Page' do |api|
        api.has_param :pages, { list: 'int' }
      end
    end

    has_edge :assigned_product_catalogs do |edge|
      edge.get 'ProductCatalog'
    end

    has_edge :avatars do |edge|
      edge.get 'Avatar'
    end

    has_edge :business_users do |edge|
      edge.get 'BusinessUser'
    end

    has_edge :businesses do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
      edge.post 'Business' do |api|
        api.has_param :child_business_external_id, 'string'
        api.has_param :email, 'string'
        api.has_param :name, 'string'
        api.has_param :primary_page, 'string'
        api.has_param :sales_rep_email, 'string'
        api.has_param :survey_business_type, { enum: -> { Business::SURVEY_BUSINESS_TYPE }}
        api.has_param :survey_num_assets, 'int'
        api.has_param :survey_num_people, 'int'
        api.has_param :timezone_id, 'int'
        api.has_param :vertical, { enum: -> { Business::VERTICAL }}
      end
    end

    has_edge :conversations do |edge|
      edge.get 'UnifiedThread' do |api|
        api.has_param :folder, 'string'
        api.has_param :platform, { enum: -> { UnifiedThread::PLATFORM }}
        api.has_param :tags, { list: 'string' }
        api.has_param :user_id, 'string'
      end
    end

    has_edge :custom_labels do |edge|
      edge.get 'PageUserMessageThreadLabel'
    end

    has_edge :events do |edge|
      edge.get 'Event' do |api|
        api.has_param :include_canceled, 'bool'
        api.has_param :type, { enum: -> { Event::TYPE }}
      end
    end

    has_edge :feed do |edge|
      edge.get 'Post' do |api|
        api.has_param :include_hidden, 'bool'
        api.has_param :q, 'string'
        api.has_param :show_expired, 'bool'
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
        api.has_param :with, 'string'
      end
      edge.post 'Post' do |api|
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
        api.has_param :backdated_time_granularity, { enum: -> { Post::BACKDATED_TIME_GRANULARITY }}
        api.has_param :call_to_action, 'object'
        api.has_param :caption, 'string'
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
        api.has_param :formatting, { enum: -> { Post::FORMATTING }}
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
        api.has_param :place_attachment_setting, { enum: -> { Post::PLACE_ATTACHMENT_SETTING }}
        api.has_param :place_list, 'string'
        api.has_param :place_list_data, { list: 'string' }
        api.has_param :post_surfaces_blacklist, { list: { enum: -> { Post::POST_SURFACES_BLACKLIST }} }
        api.has_param :posting_to_redspace, { enum: -> { Post::POSTING_TO_REDSPACE }}
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
        api.has_param :scheduled_publish_time, 'datetime'
        api.has_param :source, 'string'
        api.has_param :sponsor_id, 'string'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :suggested_place_id, 'object'
        api.has_param :tags, { list: 'int' }
        api.has_param :target_surface, { enum: -> { Post::TARGET_SURFACE }}
        api.has_param :targeting, 'object'
        api.has_param :text_format_metadata, 'string'
        api.has_param :text_format_preset_id, 'string'
        api.has_param :text_only_place, 'string'
        api.has_param :throwback_camera_roll_media, 'string'
        api.has_param :thumbnail, 'file'
        api.has_param :time_since_original_post, 'int'
        api.has_param :title, 'string'
        api.has_param :tracking_info, 'string'
        api.has_param :unpublished_content_type, { enum: -> { Post::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :user_selected_tags, 'bool'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :viewer_coordinates, 'object'
        api.has_param :width, 'int'
      end
    end

    has_edge :friends do |edge|
      edge.get 'User' do |api|
        api.has_param :uid, 'int'
      end
    end

    has_edge :fundraisers do |edge|
      edge.get 'FundraiserPersonToCharity'
      edge.post 'FundraiserPersonToCharity' do |api|
        api.has_param :charity_id, 'string'
        api.has_param :cover_photo, 'file'
        api.has_param :currency, 'string'
        api.has_param :description, 'string'
        api.has_param :end_time, 'int'
        api.has_param :external_event_name, 'string'
        api.has_param :external_event_start_time, 'int'
        api.has_param :external_event_uri, 'string'
        api.has_param :external_fundraiser_uri, 'string'
        api.has_param :external_id, 'string'
        api.has_param :fundraiser_type, { enum: -> { FundraiserPersonToCharity::FUNDRAISER_TYPE }}
        api.has_param :goal_amount, 'int'
        api.has_param :name, 'string'
        api.has_param :page_id, 'string'
      end
    end

    has_edge :game_times do |edge|
      edge.post do |api|
        api.has_param :action, { enum: %w{END HEARTBEAT START }}
      end
    end

    has_edge :groups do |edge|
      edge.get 'Group' do |api|
        api.has_param :admin_only, 'bool'
        api.has_param :parent, 'string'
      end
    end

    has_edge :ids_for_apps do |edge|
      edge.get 'UserIdForApp' do |api|
        api.has_param :app, 'int'
      end
    end

    has_edge :ids_for_business do |edge|
      edge.get 'UserIdForApp' do |api|
        api.has_param :app, 'int'
      end
    end

    has_edge :ids_for_pages do |edge|
      edge.get 'UserIdForPage' do |api|
        api.has_param :page, 'int'
      end
    end

    has_edge :likes do |edge|
      edge.get 'Page' do |api|
        api.has_param :target_id, 'string'
      end
    end

    has_edge :live_videos do |edge|
      edge.get 'LiveVideo' do |api|
        api.has_param :broadcast_status, { list: { enum: -> { LiveVideo::BROADCAST_STATUS }} }
        api.has_param :source, { enum: -> { LiveVideo::SOURCE }}
      end
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

    has_edge :messenger_desktop_performance_traces do |edge|
      edge.post 'User'
    end

    has_edge :music do |edge|
      edge.get 'Page' do |api|
        api.has_param :target_id, 'string'
      end
    end

    has_edge :notifications do |edge|
      edge.post 'User' do |api|
        api.has_param :bot_message_payload_elements, 'string'
        api.has_param :filtering, { list: { enum: -> { User::FILTERING }} }
        api.has_param :href, 'object'
        api.has_param :label, 'string'
        api.has_param :message, 'hash'
        api.has_param :notif_ids, { list: 'string' }
        api.has_param :payload, 'string'
        api.has_param :read, 'bool'
        api.has_param :ref, 'string'
        api.has_param :schedule_interval, 'int'
        api.has_param :seen, 'bool'
        api.has_param :template, 'object'
        api.has_param :type, { enum: -> { User::TYPE }}
      end
    end

    has_edge :payment_transactions do |edge|
      edge.get 'PaymentEnginePayment'
    end

    has_edge :permissions do |edge|
      edge.delete do |api|
        api.has_param :permission, 'string'
      end
      edge.get 'Permission' do |api|
        api.has_param :permission, 'string'
        api.has_param :status, { enum: -> { Permission::STATUS }}
      end
    end

    has_edge :personal_ad_accounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :photos do |edge|
      edge.get 'Photo' do |api|
        api.has_param :type, { enum: -> { Photo::TYPE }}
      end
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

    has_edge :posts do |edge|
      edge.get 'Post' do |api|
        api.has_param :include_hidden, 'bool'
        api.has_param :q, 'string'
        api.has_param :show_expired, 'bool'
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
        api.has_param :with, 'string'
      end
    end

    has_edge :rich_media_documents do |edge|
      edge.get 'Canvas' do |api|
        api.has_param :query, 'string'
      end
    end

    has_edge :staging_resources do |edge|
      edge.post 'User' do |api|
        api.has_param :file, 'file'
      end
    end

    has_edge :videos do |edge|
      edge.get 'AdVideo' do |api|
        api.has_param :type, { enum: -> { AdVideo::TYPE }}
      end
      edge.post 'AdVideo' do |api|
        api.has_param :adaptive_type, 'string'
        api.has_param :animated_effect_id, 'int'
        api.has_param :application_id, 'string'
        api.has_param :asked_fun_fact_prompt_id, 'int'
        api.has_param :audio_story_wave_animation_handle, 'string'
        api.has_param :composer_entry_picker, 'string'
        api.has_param :composer_entry_point, 'string'
        api.has_param :composer_entry_time, 'int'
        api.has_param :composer_session_events_log, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :composer_source_surface, 'string'
        api.has_param :composer_type, 'string'
        api.has_param :container_type, { enum: -> { AdVideo::CONTAINER_TYPE }}
        api.has_param :content_category, { enum: -> { AdVideo::CONTENT_CATEGORY }}
        api.has_param :creative_tools, 'string'
        api.has_param :description, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :embeddable, 'bool'
        api.has_param :end_offset, 'int'
        api.has_param :fbuploader_video_file_chunk, 'string'
        api.has_param :file_size, 'int'
        api.has_param :file_url, 'string'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :formatting, { enum: -> { AdVideo::FORMATTING }}
        api.has_param :fov, 'int'
        api.has_param :front_z_rotation, 'double'
        api.has_param :fun_fact_prompt_id, 'int'
        api.has_param :fun_fact_toastee_id, 'int'
        api.has_param :guide, { list: { list: 'int' } }
        api.has_param :guide_enabled, 'bool'
        api.has_param :has_nickname, 'bool'
        api.has_param :holiday_card, 'string'
        api.has_param :initial_heading, 'int'
        api.has_param :initial_pitch, 'int'
        api.has_param :instant_game_entry_point_data, 'string'
        api.has_param :is_boost_intended, 'bool'
        api.has_param :is_explicit_share, 'bool'
        api.has_param :is_group_linking_post, 'bool'
        api.has_param :is_voice_clip, 'bool'
        api.has_param :location_source_id, 'string'
        api.has_param :manual_privacy, 'bool'
        api.has_param :no_story, 'bool'
        api.has_param :offer_like_post_id, 'int'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :original_fov, 'int'
        api.has_param :original_projection_type, { enum: -> { AdVideo::ORIGINAL_PROJECTION_TYPE }}
        api.has_param :privacy, 'string'
        api.has_param :publish_event_id, 'int'
        api.has_param :react_mode_metadata, 'string'
        api.has_param :referenced_sticker_id, 'string'
        api.has_param :replace_video_id, 'string'
        api.has_param :slideshow_spec, 'hash'
        api.has_param :source, 'string'
        api.has_param :source_instagram_media_id, 'string'
        api.has_param :spherical, 'bool'
        api.has_param :sponsor_id, 'string'
        api.has_param :start_offset, 'int'
        api.has_param :swap_mode, { enum: -> { AdVideo::SWAP_MODE }}
        api.has_param :text_format_metadata, 'string'
        api.has_param :throwback_camera_roll_media, 'string'
        api.has_param :thumb, 'file'
        api.has_param :time_since_original_post, 'int'
        api.has_param :title, 'string'
        api.has_param :transcode_setting_properties, 'string'
        api.has_param :unpublished_content_type, { enum: -> { AdVideo::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :upload_phase, { enum: -> { AdVideo::UPLOAD_PHASE }}
        api.has_param :upload_session_id, 'string'
        api.has_param :upload_setting_properties, 'string'
        api.has_param :video_file_chunk, 'string'
        api.has_param :video_id_original, 'string'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :waterfall_id, 'string'
      end
    end

  end
end
