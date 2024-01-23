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

  class Application < AdObject
    SUPPORTED_PLATFORMS = [
      "AMAZON",
      "ANDROID",
      "CANVAS",
      "GAMEROOM",
      "INSTANT_GAME",
      "IPAD",
      "IPHONE",
      "MOBILE_WEB",
      "OCULUS",
      "SAMSUNG",
      "SUPPLEMENTARY_IMAGES",
      "WEB",
      "WINDOWS",
      "XIAOMI",
    ]

    AN_PLATFORMS = [
      "ANDROID",
      "DESKTOP",
      "GALAXY",
      "INSTANT_ARTICLES",
      "IOS",
      "MOBILE_WEB",
      "OCULUS",
      "UNKNOWN",
      "XIAOMI",
    ]

    PLATFORM = [
      "ANDROID",
      "IOS",
    ]

    REQUEST_TYPE = [
      "APP_INDEXING",
      "BUTTON_SAMPLING",
      "PLUGIN",
    ]

    MUTATION_METHOD = [
      "ADD",
      "DELETE",
      "REPLACE",
    ]

    POST_METHOD = [
      "CODELESS",
      "EYMT",
    ]

    LOGGING_SOURCE = [
      "DETECTION",
      "MESSENGER_BOT",
    ]

    LOGGING_TARGET = [
      "APP",
      "APP_AND_PAGE",
      "PAGE",
    ]


    field :aam_rules, 'string'
    field :an_ad_space_limit, 'int'
    field :an_platforms, { list: 'string' }
    field :android_key_hash, { list: 'string' }
    field :android_sdk_error_categories, { list: 'object' }
    field :app_domains, { list: 'string' }
    field :app_events_config, 'object'
    field :app_events_feature_bitmask, 'int'
    field :app_events_session_timeout, 'int'
    field :app_install_tracked, 'bool'
    field :app_name, 'string'
    field :app_signals_binding_ios, { list: 'object' }
    field :app_type, 'int'
    field :auth_dialog_data_help_url, 'string'
    field :auth_dialog_headline, 'string'
    field :auth_dialog_perms_explanation, 'string'
    field :auth_referral_default_activity_privacy, 'string'
    field :auth_referral_enabled, 'int'
    field :auth_referral_extended_perms, { list: 'string' }
    field :auth_referral_friend_perms, { list: 'string' }
    field :auth_referral_response_type, 'string'
    field :auth_referral_user_perms, { list: 'string' }
    field :auto_event_mapping_android, { list: 'object' }
    field :auto_event_mapping_ios, { list: 'object' }
    field :auto_event_setup_enabled, 'bool'
    field :auto_log_app_events_default, 'bool'
    field :auto_log_app_events_enabled, 'bool'
    field :business, 'Business'
    field :canvas_fluid_height, 'bool'
    field :canvas_fluid_width, 'int'
    field :canvas_url, 'string'
    field :category, 'string'
    field :client_config, 'hash'
    field :company, 'string'
    field :configured_ios_sso, 'bool'
    field :contact_email, 'string'
    field :created_time, 'datetime'
    field :creator_uid, 'string'
    field :daily_active_users, 'string'
    field :daily_active_users_rank, 'int'
    field :deauth_callback_url, 'string'
    field :default_share_mode, 'string'
    field :description, 'string'
    field :financial_id, 'string'
    field :gdpv4_chrome_custom_tabs_enabled, 'bool'
    field :gdpv4_enabled, 'bool'
    field :gdpv4_nux_content, 'string'
    field :gdpv4_nux_enabled, 'bool'
    field :has_messenger_product, 'bool'
    field :hosting_url, 'string'
    field :icon_url, 'string'
    field :id, 'string'
    field :ios_bundle_id, { list: 'string' }
    field :ios_sdk_dialog_flows, 'object'
    field :ios_sdk_error_categories, { list: 'object' }
    field :ios_sfvc_attr, 'bool'
    field :ios_supports_native_proxy_auth_flow, 'bool'
    field :ios_supports_system_auth, 'bool'
    field :ipad_app_store_id, 'string'
    field :iphone_app_store_id, 'string'
    field :latest_sdk_version, 'object'
    field :link, 'string'
    field :logging_token, 'string'
    field :logo_url, 'string'
    field :migrations, 'hash'
    field :mobile_profile_section_url, 'string'
    field :mobile_web_url, 'string'
    field :monthly_active_users, 'string'
    field :monthly_active_users_rank, 'int'
    field :name, 'string'
    field :namespace, 'string'
    field :object_store_urls, 'object'
    field :owner_business, 'Business'
    field :page_tab_default_name, 'string'
    field :page_tab_url, 'string'
    field :photo_url, 'string'
    field :privacy_policy_url, 'string'
    field :profile_section_url, 'string'
    field :property_id, 'string'
    field :protected_mode_rules, 'object'
    field :real_time_mode_devices, { list: 'string' }
    field :restrictions, 'object'
    field :restrictive_data_filter_params, 'string'
    field :restrictive_data_filter_rules, 'string'
    field :sdk_update_message, 'string'
    field :seamless_login, 'int'
    field :secure_canvas_url, 'string'
    field :secure_page_tab_url, 'string'
    field :server_ip_whitelist, 'string'
    field :smart_login_bookmark_icon_url, 'string'
    field :smart_login_menu_icon_url, 'string'
    field :social_discovery, 'int'
    field :subcategory, 'string'
    field :suggested_events_setting, 'string'
    field :supported_platforms, { list: { enum: -> { SUPPORTED_PLATFORMS }} }
    field :supports_apprequests_fast_app_switch, 'object'
    field :supports_attribution, 'bool'
    field :supports_implicit_sdk_logging, 'bool'
    field :suppress_native_ios_gdp, 'bool'
    field :terms_of_service_url, 'string'
    field :url_scheme_suffix, 'string'
    field :user_support_email, 'string'
    field :user_support_url, 'string'
    field :website_url, 'string'
    field :weekly_active_users, 'string'
    has_no_delete

    has_edge :accounts do |edge|
      edge.delete do |api|
        api.has_param :type, { enum: %w{test-users }}
        api.has_param :uid, 'int'
      end
      edge.get do |api|
        api.has_param :type, { enum: %w{test-users }}
      end
      edge.post do |api|
        api.has_param :installed, 'bool'
        api.has_param :minor, 'bool'
        api.has_param :name, 'string'
        api.has_param :owner_access_token, 'string'
        api.has_param :permissions, { list: 'Permission' }
        api.has_param :type, { enum: %w{test-users }}
        api.has_param :uid, 'int'
      end
    end

    has_edge :activities do |edge|
      edge.post do |api|
        api.has_param :advertiser_id, 'string'
        api.has_param :advertiser_tracking_enabled, 'bool'
        api.has_param :anon_id, 'string'
        api.has_param :app_user_id, 'string'
        api.has_param :application_tracking_enabled, 'bool'
        api.has_param :attribution, 'string'
        api.has_param :auto_publish, 'bool'
        api.has_param :bundle_id, 'string'
        api.has_param :bundle_short_version, 'string'
        api.has_param :bundle_version, 'string'
        api.has_param :campaign_ids, 'string'
        api.has_param :click_id, 'string'
        api.has_param :consider_views, 'bool'
        api.has_param :custom_events, { list: 'object' }
        api.has_param :custom_events_file, 'file'
        api.has_param :data_processing_options, { list: 'string' }
        api.has_param :data_processing_options_country, 'int'
        api.has_param :data_processing_options_state, 'int'
        api.has_param :device_token, 'string'
        api.has_param :event, { enum: %w{CUSTOM_APP_EVENTS DEFERRED_APP_LINK MOBILE_APP_INSTALL }}
        api.has_param :extinfo, 'object'
        api.has_param :include_dwell_data, 'bool'
        api.has_param :include_video_data, 'bool'
        api.has_param :install_referrer, 'string'
        api.has_param :install_timestamp, 'int'
        api.has_param :installer_package, 'string'
        api.has_param :limited_data_use, 'bool'
        api.has_param :migration_bundle, 'string'
        api.has_param :page_id, 'int'
        api.has_param :page_scoped_user_id, 'int'
        api.has_param :receipt_data, 'string'
        api.has_param :ud, 'hash'
        api.has_param :url_schemes, { list: 'string' }
        api.has_param :user_id, 'string'
        api.has_param :user_id_type, { enum: %w{INSTANT_GAMES_PLAYER_ID }}
        api.has_param :vendor_id, 'string'
        api.has_param :windows_attribution_id, 'string'
      end
    end

    has_edge :ad_placement_groups do |edge|
      edge.get
    end

    has_edge :adnetwork_placements do |edge|
      edge.get 'AdPlacement' do |api|
        api.has_param :request_id, 'string'
      end
    end

    has_edge :adnetworkanalytics do |edge|
      edge.get 'AdNetworkAnalyticsSyncQueryResult' do |api|
        api.has_param :aggregation_period, { enum: -> { AdNetworkAnalyticsSyncQueryResult::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { AdNetworkAnalyticsSyncQueryResult::BREAKDOWNS }} }
        api.has_param :filters, { list: 'hash' }
        api.has_param :limit, 'int'
        api.has_param :metrics, { list: { enum: -> { AdNetworkAnalyticsSyncQueryResult::METRICS }} }
        api.has_param :ordering_column, { enum: -> { AdNetworkAnalyticsSyncQueryResult::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { AdNetworkAnalyticsSyncQueryResult::ORDERING_TYPE }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
      edge.post 'Application' do |api|
        api.has_param :aggregation_period, { enum: -> { AdNetworkAnalyticsSyncQueryResult::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { AdNetworkAnalyticsSyncQueryResult::BREAKDOWNS }} }
        api.has_param :filters, { list: 'object' }
        api.has_param :limit, 'int'
        api.has_param :metrics, { list: { enum: -> { AdNetworkAnalyticsSyncQueryResult::METRICS }} }
        api.has_param :ordering_column, { enum: -> { AdNetworkAnalyticsSyncQueryResult::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { AdNetworkAnalyticsSyncQueryResult::ORDERING_TYPE }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :adnetworkanalytics_results do |edge|
      edge.get 'AdNetworkAnalyticsAsyncQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :aem_attribution do |edge|
      edge.get do |api|
        api.has_param :advertiser_ids, { list: 'string' }
        api.has_param :fb_content_data, 'string'
      end
    end

    has_edge :aem_conversion_configs do |edge|
      edge.get do |api|
        api.has_param :advertiser_ids, { list: 'string' }
      end
    end

    has_edge :aem_conversion_filter do |edge|
      edge.get do |api|
        api.has_param :catalog_id, 'string'
        api.has_param :fb_content_ids, 'string'
      end
    end

    has_edge :aem_conversions do |edge|
      edge.post do |api|
        api.has_param :aem_conversions, { list: 'hash' }
      end
    end

    has_edge :aem_skan_readiness do |edge|
      edge.post do |api|
        api.has_param :app_id, 'int'
        api.has_param :is_aem_ready, 'bool'
        api.has_param :is_app_aem_install_ready, 'bool'
        api.has_param :is_app_aem_ready, 'bool'
        api.has_param :is_skan_ready, 'bool'
        api.has_param :message, 'string'
      end
    end

    has_edge :agencies do |edge|
      edge.get 'Business'
    end

    has_edge :aggregate_revenue do |edge|
      edge.post do |api|
        api.has_param :ecpms, { list: 'string' }
        api.has_param :query_ids, { list: 'string' }
        api.has_param :request_id, 'string'
        api.has_param :sync_api, 'bool'
      end
    end

    has_edge :android_dialog_configs do |edge|
      edge.get
    end

    has_edge :app_capi_settings do |edge|
      edge.get
    end

    has_edge :app_event_types do |edge|
      edge.get
    end

    has_edge :app_indexing do |edge|
      edge.post 'Application' do |api|
        api.has_param :app_version, 'string'
        api.has_param :device_session_id, 'string'
        api.has_param :extra_info, 'string'
        api.has_param :platform, { enum: -> { Application::PLATFORM }}
        api.has_param :request_type, { enum: -> { Application::REQUEST_TYPE }}
        api.has_param :tree, 'hash'
      end
    end

    has_edge :app_indexing_session do |edge|
      edge.post 'Application' do |api|
        api.has_param :device_session_id, 'string'
        api.has_param :extinfo, 'string'
      end
    end

    has_edge :app_installed_groups do |edge|
      edge.get 'Group' do |api|
        api.has_param :group_id, 'string'
      end
    end

    has_edge :app_push_device_token do |edge|
      edge.post 'Application' do |api|
        api.has_param :device_id, 'string'
        api.has_param :device_token, 'string'
        api.has_param :platform, { enum: -> { Application::PLATFORM }}
      end
    end

    has_edge :appassets do |edge|
      edge.get
    end

    has_edge :assets do |edge|
      edge.post 'Application' do |api|
        api.has_param :asset, 'file'
        api.has_param :comment, 'string'
        api.has_param :type, 'string'
      end
    end

    has_edge :authorized_adaccounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
    end

    has_edge :button_auto_detection_device_selection do |edge|
      edge.get do |api|
        api.has_param :device_id, 'string'
      end
    end

    has_edge :cloudbridge_settings do |edge|
      edge.get
    end

    has_edge :codeless_event_mappings do |edge|
      edge.post 'Application' do |api|
        api.has_param :mappings, { list: 'hash' }
        api.has_param :mutation_method, { enum: -> { Application::MUTATION_METHOD }}
        api.has_param :platform, { enum: -> { Application::PLATFORM }}
        api.has_param :post_method, { enum: -> { Application::POST_METHOD }}
      end
    end

    has_edge :da_checks do |edge|
      edge.get 'DaCheck' do |api|
        api.has_param :checks, { list: 'string' }
        api.has_param :connection_method, { enum: -> { DaCheck::CONNECTION_METHOD }}
      end
    end

    has_edge :events do |edge|
      edge.get 'Event' do |api|
        api.has_param :include_canceled, 'bool'
        api.has_param :type, { enum: -> { Event::TYPE }}
      end
    end

    has_edge :iap_purchases do |edge|
      edge.get do |api|
        api.has_param :order_id, 'string'
      end
    end

    has_edge :insights_push_schedule do |edge|
      edge.get
    end

    has_edge :ios_dialog_configs do |edge|
      edge.get
    end

    has_edge :linked_dataset do |edge|
      edge.get
    end

    has_edge :mmp_auditing do |edge|
      edge.post do |api|
        api.has_param :advertiser_id, 'string'
        api.has_param :attribution, 'string'
        api.has_param :attribution_model, 'string'
        api.has_param :auditing_token, 'string'
        api.has_param :click_attr_window, 'int'
        api.has_param :custom_events, { list: 'object' }
        api.has_param :decline_reason, 'string'
        api.has_param :engagement_type, 'string'
        api.has_param :event, 'string'
        api.has_param :event_reported_time, 'int'
        api.has_param :fb_ad_id, 'int'
        api.has_param :fb_click_time, 'int'
        api.has_param :fb_view_time, 'int'
        api.has_param :is_fb, 'bool'
        api.has_param :used_install_referrer, 'bool'
        api.has_param :view_attr_window, 'int'
      end
    end

    has_edge :mobile_sdk_gk do |edge|
      edge.get do |api|
        api.has_param :device_id, 'string'
        api.has_param :extinfo, 'object'
        api.has_param :os_version, 'string'
        api.has_param :platform, { enum: %w{ANDROID IOS }}
        api.has_param :sdk_version, 'string'
      end
    end

    has_edge :monetized_digital_store_objects do |edge|
      edge.get
      edge.post do |api|
        api.has_param :content_id, 'string'
        api.has_param :store, 'string'
      end
    end

    has_edge :object_types do |edge|
      edge.get 'NullNode'
    end

    has_edge :objects do |edge|
      edge.get 'NullNode'
    end

    has_edge :occludespopups do |edge|
      edge.post do |api|
        api.has_param :flash, 'bool'
        api.has_param :unity, 'bool'
      end
    end

    has_edge :page_activities do |edge|
      edge.post 'Application' do |api|
        api.has_param :advertiser_tracking_enabled, 'bool'
        api.has_param :application_tracking_enabled, 'bool'
        api.has_param :custom_events, { list: 'object' }
        api.has_param :logging_source, { enum: -> { Application::LOGGING_SOURCE }}
        api.has_param :logging_target, { enum: -> { Application::LOGGING_TARGET }}
        api.has_param :page_id, 'int'
        api.has_param :page_scoped_user_id, 'int'
      end
    end

    has_edge :payment_currencies do |edge|
      edge.post 'Application' do |api|
        api.has_param :currency_url, 'string'
      end
    end

    has_edge :permissions do |edge|
      edge.get do |api|
        api.has_param :android_key_hash, 'string'
        api.has_param :ios_bundle_id, 'string'
        api.has_param :permission, { list: 'Permission' }
        api.has_param :proxied_app_id, 'int'
        api.has_param :status, { list: { enum: %w{live unapproved }} }
      end
    end

    has_edge :products do |edge|
      edge.get do |api|
        api.has_param :product_ids, { list: 'string' }
      end
    end

    has_edge :purchases do |edge|
      edge.get
    end

    has_edge :roles do |edge|
      edge.get
    end

    has_edge :server_domain_infos do |edge|
      edge.get
    end

    has_edge :subscribed_domains do |edge|
      edge.get
      edge.post 'Application' do |api|
        api.has_param :subscribe, { list: 'string' }
        api.has_param :unsubscribe, { list: 'string' }
      end
    end

    has_edge :subscribed_domains_phishing do |edge|
      edge.get
      edge.post 'Application' do |api|
        api.has_param :subscribe, { list: 'string' }
        api.has_param :unsubscribe, { list: 'string' }
      end
    end

    has_edge :subscriptions do |edge|
      edge.delete do |api|
        api.has_param :fields, { list: 'string' }
        api.has_param :object, 'string'
      end
      edge.post do |api|
        api.has_param :callback_url, 'string'
        api.has_param :fields, { list: 'string' }
        api.has_param :include_values, 'bool'
        api.has_param :object, 'string'
        api.has_param :verify_token, 'string'
      end
    end

    has_edge :uploads do |edge|
      edge.post do |api|
        api.has_param :file_length, 'int'
        api.has_param :file_name, 'object'
        api.has_param :file_type, 'object'
        api.has_param :session_type, { enum: %w{attachment }}
      end
    end

  end
end
