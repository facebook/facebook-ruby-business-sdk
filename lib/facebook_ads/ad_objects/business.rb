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

  class Business < AdObject
    TWO_FACTOR_TYPE = [
      "admin_required",
      "all_required",
      "none",
    ]

    VERTICAL = [
      "ADVERTISING",
      "AUTOMOTIVE",
      "CONSUMER_PACKAGED_GOODS",
      "ECOMMERCE",
      "EDUCATION",
      "ENERGY_AND_UTILITIES",
      "ENTERTAINMENT_AND_MEDIA",
      "FINANCIAL_SERVICES",
      "GAMING",
      "GOVERNMENT_AND_POLITICS",
      "HEALTH",
      "LUXURY",
      "MARKETING",
      "NON_PROFIT",
      "ORGANIZATIONS_AND_ASSOCIATIONS",
      "OTHER",
      "PROFESSIONAL_SERVICES",
      "RESTAURANT",
      "RETAIL",
      "TECHNOLOGY",
      "TELECOM",
      "TRAVEL",
    ]

    PERMITTED_TASKS = [
      "ADVERTISE",
      "ANALYZE",
      "CREATIVE",
      "DRAFT",
      "FB_EMPLOYEE_DSO_ADVERTISE",
      "MANAGE",
    ]

    SURVEY_BUSINESS_TYPE = [
      "ADVERTISER",
      "AGENCY",
      "APP_DEVELOPER",
      "PUBLISHER",
    ]

    PAGE_PERMITTED_TASKS = [
      "ADVERTISE",
      "ANALYZE",
      "CASHIER_ROLE",
      "CREATE_CONTENT",
      "MANAGE",
      "MANAGE_JOBS",
      "MANAGE_LEADS",
      "MODERATE",
      "MODERATE_COMMUNITY",
      "PAGES_MESSAGING",
      "PAGES_MESSAGING_SUBSCRIPTIONS",
      "PROFILE_PLUS_ADVERTISE",
      "PROFILE_PLUS_ANALYZE",
      "PROFILE_PLUS_CREATE_CONTENT",
      "PROFILE_PLUS_MANAGE",
      "PROFILE_PLUS_MESSAGING",
      "PROFILE_PLUS_MODERATE",
      "READ_PAGE_MAILBOXES",
      "VIEW_MONETIZATION_INSIGHTS",
    ]


    field :block_offline_analytics, 'bool'
    field :created_by, 'object'
    field :created_time, 'datetime'
    field :extended_updated_time, 'datetime'
    field :id, 'string'
    field :is_hidden, 'bool'
    field :is_instagram_enabled_in_fb_analytics, 'bool'
    field :link, 'string'
    field :name, 'string'
    field :payment_account_id, 'string'
    field :primary_page, 'Page'
    field :profile_picture_uri, 'string'
    field :timezone_id, 'int'
    field :two_factor_type, 'string'
    field :updated_by, 'object'
    field :updated_time, 'datetime'
    field :verification_status, 'string'
    field :vertical, 'string'
    field :vertical_id, 'int'
    has_no_delete

    has_edge :access_token do |edge|
      edge.post 'Business' do |api|
        api.has_param :app_id, 'string'
        api.has_param :scope, { list: 'Permission' }
        api.has_param :system_user_name, 'string'
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

    has_edge :adaccount do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :ad_account_created_from_bm_flag, 'bool'
        api.has_param :currency, 'string'
        api.has_param :end_advertiser, 'object'
        api.has_param :funding_id, 'string'
        api.has_param :invoice, 'bool'
        api.has_param :invoice_group_id, 'string'
        api.has_param :invoicing_emails, { list: 'string' }
        api.has_param :io, 'bool'
        api.has_param :media_agency, 'string'
        api.has_param :name, 'string'
        api.has_param :partner, 'string'
        api.has_param :po_number, 'string'
        api.has_param :timezone_id, 'int'
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
      edge.post 'Business' do |api|
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

    has_edge :adspixels do |edge|
      edge.get 'AdsPixel' do |api|
        api.has_param :id_filter, 'string'
        api.has_param :name_filter, 'string'
        api.has_param :sort_by, { enum: -> { AdsPixel::SORT_BY }}
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
    end

    has_edge :an_placements do |edge|
      edge.get 'AdPlacement'
    end

    has_edge :attempted_sharing_agreements do |edge|
      edge.get 'BusinessCreativeFolderSharingAgreement' do |api|
        api.has_param :request_status, { enum: -> { BusinessCreativeFolderSharingAgreement::REQUEST_STATUS }}
        api.has_param :requesting_business_id, 'string'
      end
    end

    has_edge :block_list_drafts do |edge|
      edge.post 'Business' do |api|
        api.has_param :publisher_urls_file, 'file'
      end
    end

    has_edge :business_asset_groups do |edge|
      edge.get 'BusinessAssetGroup'
    end

    has_edge :business_invoices do |edge|
      edge.get 'OracleTransaction' do |api|
        api.has_param :end_date, 'string'
        api.has_param :invoice_id, 'int'
        api.has_param :issue_end_date, 'string'
        api.has_param :issue_start_date, 'string'
        api.has_param :root_id, 'int'
        api.has_param :start_date, 'string'
        api.has_param :type, { enum: -> { OracleTransaction::TYPE }}
      end
    end

    has_edge :business_units do |edge|
      edge.get 'BusinessUnit'
      edge.post 'BusinessUnit' do |api|
        api.has_param :business_units, { list: 'object' }
      end
    end

    has_edge :business_users do |edge|
      edge.get 'BusinessUser'
      edge.post 'BusinessUser' do |api|
        api.has_param :email, 'string'
        api.has_param :role, { enum: -> { BusinessUser::ROLE }}
      end
    end

    has_edge :claim_custom_conversions do |edge|
      edge.post 'CustomConversion' do |api|
        api.has_param :custom_conversion_id, 'string'
      end
    end

    has_edge :client_ad_accounts do |edge|
      edge.get 'AdAccount'
      edge.post 'Business' do |api|
        api.has_param :adaccount_id, 'string'
        api.has_param :permitted_tasks, { list: { enum: -> { Business::PERMITTED_TASKS }} }
      end
    end

    has_edge :client_apps do |edge|
      edge.get 'Application'
      edge.post 'Business' do |api|
        api.has_param :app_id, 'object'
      end
    end

    has_edge :client_pages do |edge|
      edge.get 'Page'
      edge.post 'Business' do |api|
        api.has_param :page_id, 'int'
        api.has_param :permitted_tasks, { list: { enum: -> { Business::PERMITTED_TASKS }} }
      end
    end

    has_edge :client_pixels do |edge|
      edge.get 'AdsPixel'
    end

    has_edge :client_product_catalogs do |edge|
      edge.get 'ProductCatalog'
    end

    has_edge :clients do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
    end

    has_edge :content_delivery_report do |edge|
      edge.get 'ContentDeliveryReport' do |api|
        api.has_param :end_date, 'datetime'
        api.has_param :page_id, 'int'
        api.has_param :platform, { enum: -> { ContentDeliveryReport::PLATFORM }}
        api.has_param :position, { enum: -> { ContentDeliveryReport::POSITION }}
        api.has_param :start_date, 'datetime'
        api.has_param :summary, 'bool'
      end
    end

    has_edge :creative_asset_tags do |edge|
      edge.get 'CreativeAssetTag'
    end

    has_edge :creative_folders do |edge|
      edge.get 'BusinessCreativeFolder'
      edge.post 'BusinessCreativeFolder' do |api|
        api.has_param :description, 'string'
        api.has_param :name, 'string'
        api.has_param :parent_folder_id, 'string'
      end
    end

    has_edge :creatives do |edge|
      edge.get 'BusinessCreative' do |api|
        api.has_param :creative_folder_id, 'string'
      end
    end

    has_edge :customconversions do |edge|
      edge.post 'CustomConversion' do |api|
        api.has_param :advanced_rule, 'string'
        api.has_param :custom_event_type, { enum: -> { CustomConversion::CUSTOM_EVENT_TYPE }}
        api.has_param :default_conversion_value, 'double'
        api.has_param :description, 'string'
        api.has_param :event_source_id, 'string'
        api.has_param :name, 'string'
        api.has_param :rule, 'string'
      end
    end

    has_edge :event_source_groups do |edge|
      edge.get 'EventSourceGroup'
      edge.post 'EventSourceGroup' do |api|
        api.has_param :event_sources, { list: 'string' }
        api.has_param :name, 'string'
      end
    end

    has_edge :extendedcredits do |edge|
      edge.get 'ExtendedCredit' do |api|
        api.has_param :order_by_is_owned_credential, 'bool'
      end
    end

    has_edge :images do |edge|
      edge.post 'BusinessImage' do |api|
        api.has_param :ad_placements_validation_only, 'bool'
        api.has_param :bytes, 'object'
        api.has_param :creative_folder_id, 'string'
        api.has_param :name, 'string'
        api.has_param :validation_ad_placements, { list: { enum: -> { BusinessImage::VALIDATION_AD_PLACEMENTS }} }
      end
    end

    has_edge :initiated_audience_sharing_requests do |edge|
      edge.get 'BusinessAssetSharingAgreement' do |api|
        api.has_param :recipient_id, 'string'
        api.has_param :request_status, { enum: -> { BusinessAssetSharingAgreement::REQUEST_STATUS }}
      end
    end

    has_edge :instagram_accounts do |edge|
      edge.delete do |api|
        api.has_param :instagram_account, 'string'
      end
      edge.get 'InstagramUser'
    end

    has_edge :managed_businesses do |edge|
      edge.delete do |api|
        api.has_param :existing_client_business_id, 'string'
      end
      edge.post 'Business' do |api|
        api.has_param :existing_client_business_id, 'string'
        api.has_param :name, 'string'
        api.has_param :sales_rep_email, 'string'
        api.has_param :survey_business_type, { enum: -> { Business::SURVEY_BUSINESS_TYPE }}
        api.has_param :survey_num_assets, 'int'
        api.has_param :survey_num_people, 'int'
        api.has_param :timezone_id, 'int'
        api.has_param :vertical, { enum: -> { Business::VERTICAL }}
      end
    end

    has_edge :move_asset do |edge|
      edge.post 'Business' do |api|
        api.has_param :asset_id, 'string'
        api.has_param :client_id, 'string'
      end
    end

    has_edge :offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
      edge.post 'OfflineConversionDataSet' do |api|
        api.has_param :auto_assign_to_new_accounts_only, 'bool'
        api.has_param :description, 'string'
        api.has_param :enable_auto_assign_to_accounts, 'bool'
        api.has_param :is_mta_use, 'bool'
        api.has_param :name, 'string'
      end
    end

    has_edge :owned_ad_accounts do |edge|
      edge.get 'AdAccount'
      edge.post 'Business' do |api|
        api.has_param :adaccount_id, 'string'
      end
    end

    has_edge :owned_apps do |edge|
      edge.get 'Application'
      edge.post 'Business' do |api|
        api.has_param :app_id, 'object'
      end
    end

    has_edge :owned_businesses do |edge|
      edge.delete do |api|
        api.has_param :client_id, 'string'
      end
      edge.get 'Business' do |api|
        api.has_param :client_user_id, 'int'
      end
      edge.post 'Business' do |api|
        api.has_param :name, 'string'
        api.has_param :page_permitted_tasks, { list: { enum: -> { Business::PAGE_PERMITTED_TASKS }} }
        api.has_param :sales_rep_email, 'string'
        api.has_param :shared_page_id, 'string'
        api.has_param :survey_business_type, { enum: -> { Business::SURVEY_BUSINESS_TYPE }}
        api.has_param :survey_num_assets, 'int'
        api.has_param :survey_num_people, 'int'
        api.has_param :timezone_id, 'int'
        api.has_param :vertical, { enum: -> { Business::VERTICAL }}
      end
    end

    has_edge :owned_instagram_accounts do |edge|
      edge.get 'InstagramUser'
    end

    has_edge :owned_pages do |edge|
      edge.get 'Page'
      edge.post 'Business' do |api|
        api.has_param :code, 'string'
        api.has_param :ig_password, 'string'
        api.has_param :page_id, 'int'
      end
    end

    has_edge :owned_pixels do |edge|
      edge.get 'AdsPixel'
    end

    has_edge :owned_product_catalogs do |edge|
      edge.get 'ProductCatalog'
      edge.post 'ProductCatalog' do |api|
        api.has_param :da_display_settings, 'object'
        api.has_param :destination_catalog_settings, 'hash'
        api.has_param :flight_catalog_settings, 'hash'
        api.has_param :name, 'string'
        api.has_param :store_catalog_settings, 'hash'
        api.has_param :vertical, { enum: -> { ProductCatalog::VERTICAL }}
      end
    end

    has_edge :pages do |edge|
      edge.delete do |api|
        api.has_param :page_id, 'int'
      end
    end

    has_edge :pending_client_ad_accounts do |edge|
      edge.get 'BusinessAdAccountRequest'
    end

    has_edge :pending_client_apps do |edge|
      edge.get 'BusinessApplicationRequest'
    end

    has_edge :pending_client_pages do |edge|
      edge.get 'BusinessPageRequest'
    end

    has_edge :pending_owned_ad_accounts do |edge|
      edge.get 'BusinessAdAccountRequest'
    end

    has_edge :pending_owned_pages do |edge|
      edge.get 'BusinessPageRequest'
    end

    has_edge :pending_shared_creative_folders do |edge|
      edge.get 'BusinessCreativeFolder'
    end

    has_edge :pending_users do |edge|
      edge.get 'BusinessRoleRequest' do |api|
        api.has_param :email, 'string'
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

    has_edge :pixel_tos do |edge|
      edge.post
    end

    has_edge :received_audience_sharing_requests do |edge|
      edge.get 'BusinessAssetSharingAgreement' do |api|
        api.has_param :initiator_id, 'string'
        api.has_param :request_status, { enum: -> { BusinessAssetSharingAgreement::REQUEST_STATUS }}
      end
    end

    has_edge :system_users do |edge|
      edge.get 'SystemUser'
      edge.post 'SystemUser' do |api|
        api.has_param :name, 'string'
        api.has_param :role, { enum: -> { SystemUser::ROLE }}
        api.has_param :system_user_id, 'int'
      end
    end

    has_edge :third_party_measurement_report_dataset do |edge|
      edge.get 'ThirdPartyMeasurementReportDataset'
    end

    has_edge :upload_event do |edge|
      edge.post 'MeasurementUploadEvent' do |api|
        api.has_param :aggregation_level, { enum: -> { MeasurementUploadEvent::AGGREGATION_LEVEL }}
        api.has_param :conversion_end_date, 'string'
        api.has_param :conversion_start_date, 'string'
        api.has_param :event_status, { enum: -> { MeasurementUploadEvent::EVENT_STATUS }}
        api.has_param :lookback_window, { enum: -> { MeasurementUploadEvent::LOOKBACK_WINDOW }}
        api.has_param :match_universe, { enum: -> { MeasurementUploadEvent::MATCH_UNIVERSE }}
        api.has_param :timezone, { enum: -> { MeasurementUploadEvent::TIMEZONE }}
        api.has_param :upload_tag, 'string'
      end
    end

    has_edge :videos do |edge|
      edge.post 'AdVideo' do |api|
        api.has_param :ad_placements_validation_only, 'bool'
        api.has_param :adaptive_type, 'string'
        api.has_param :animated_effect_id, 'int'
        api.has_param :application_id, 'string'
        api.has_param :asked_fun_fact_prompt_id, 'int'
        api.has_param :attribution_app_id, 'string'
        api.has_param :audio_story_wave_animation_handle, 'string'
        api.has_param :chunk_session_id, 'string'
        api.has_param :composer_entry_picker, 'string'
        api.has_param :composer_entry_point, 'string'
        api.has_param :composer_entry_time, 'int'
        api.has_param :composer_session_events_log, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :composer_source_surface, 'string'
        api.has_param :composer_type, 'string'
        api.has_param :container_type, { enum: -> { AdVideo::CONTAINER_TYPE }}
        api.has_param :content_category, { enum: -> { AdVideo::CONTENT_CATEGORY }}
        api.has_param :creative_folder_id, 'string'
        api.has_param :description, 'string'
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
        api.has_param :is_group_linking_post, 'bool'
        api.has_param :is_voice_clip, 'bool'
        api.has_param :location_source_id, 'string'
        api.has_param :offer_like_post_id, 'int'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :original_fov, 'int'
        api.has_param :original_projection_type, { enum: -> { AdVideo::ORIGINAL_PROJECTION_TYPE }}
        api.has_param :publish_event_id, 'int'
        api.has_param :react_mode_metadata, 'string'
        api.has_param :referenced_sticker_id, 'string'
        api.has_param :replace_video_id, 'string'
        api.has_param :sales_promo_id, 'int'
        api.has_param :slideshow_spec, 'hash'
        api.has_param :source, 'string'
        api.has_param :spherical, 'bool'
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
        api.has_param :validation_ad_placements, { list: { enum: -> { AdVideo::VALIDATION_AD_PLACEMENTS }} }
        api.has_param :video_file_chunk, 'string'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :waterfall_id, 'string'
      end
    end

  end
end
