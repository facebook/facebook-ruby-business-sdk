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
      "CASHIER_ROLE",
      "CREATE_CONTENT",
      "MANAGE",
      "MANAGE_JOBS",
      "MANAGE_LEADS",
      "MESSAGING",
      "MODERATE",
      "MODERATE_COMMUNITY",
      "PAGES_MESSAGING",
      "PAGES_MESSAGING_SUBSCRIPTIONS",
      "PROFILE_PLUS_ADVERTISE",
      "PROFILE_PLUS_ANALYZE",
      "PROFILE_PLUS_CREATE_CONTENT",
      "PROFILE_PLUS_FACEBOOK_ACCESS",
      "PROFILE_PLUS_FULL_CONTROL",
      "PROFILE_PLUS_MANAGE",
      "PROFILE_PLUS_MESSAGING",
      "PROFILE_PLUS_MODERATE",
      "READ_PAGE_MAILBOXES",
      "VIEW_MONETIZATION_INSIGHTS",
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
      "MESSAGING",
      "MODERATE",
      "MODERATE_COMMUNITY",
      "PAGES_MESSAGING",
      "PAGES_MESSAGING_SUBSCRIPTIONS",
      "PROFILE_PLUS_ADVERTISE",
      "PROFILE_PLUS_ANALYZE",
      "PROFILE_PLUS_CREATE_CONTENT",
      "PROFILE_PLUS_FACEBOOK_ACCESS",
      "PROFILE_PLUS_FULL_CONTROL",
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
        api.has_param :fbe_external_business_id, 'string'
        api.has_param :scope, { list: 'Permission' }
        api.has_param :system_user_name, 'string'
      end
    end

    has_edge :ad_accounts do |edge|
      edge.delete do |api|
        api.has_param :adaccount_id, 'string'
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
        api.has_param :is_crm, 'bool'
        api.has_param :name, 'string'
      end
    end

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
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

    has_edge :an_placements do |edge|
      edge.get 'AdPlacement'
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
      edge.get 'OmegaCustomerTrx' do |api|
        api.has_param :end_date, 'string'
        api.has_param :invoice_id, 'string'
        api.has_param :issue_end_date, 'string'
        api.has_param :issue_start_date, 'string'
        api.has_param :root_id, 'int'
        api.has_param :start_date, 'string'
        api.has_param :type, { enum: -> { OmegaCustomerTrx::TYPE }}
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

    has_edge :client_whatsapp_business_accounts do |edge|
      edge.get 'WhatsAppBusinessAccount'
    end

    has_edge :clients do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
    end

    has_edge :collaborative_ads_collaboration_requests do |edge|
      edge.get 'CpasCollaborationRequest' do |api|
        api.has_param :status, 'string'
      end
      edge.post 'CpasCollaborationRequest' do |api|
        api.has_param :brands, { list: 'string' }
        api.has_param :contact_email, 'string'
        api.has_param :contact_first_name, 'string'
        api.has_param :contact_last_name, 'string'
        api.has_param :phone_number, 'string'
        api.has_param :receiver_business, 'string'
        api.has_param :requester_agency_or_brand, { enum: -> { CpasCollaborationRequest::REQUESTER_AGENCY_OR_BRAND }}
        api.has_param :sender_client_business, 'string'
      end
    end

    has_edge :collaborative_ads_suggested_partners do |edge|
      edge.get 'CpasAdvertiserPartnershipRecommendation'
    end

    has_edge :commerce_merchant_settings do |edge|
      edge.get 'CommerceMerchantSettings'
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

    has_edge :create_and_apply_publisher_block_list do |edge|
      edge.post do |api|
        api.has_param :is_auto_blocking_on, 'bool'
        api.has_param :name, 'string'
        api.has_param :publisher_urls, { list: 'string' }
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

    has_edge :extendedcreditapplications do |edge|
      edge.get do |api|
        api.has_param :only_show_pending, 'bool'
      end
    end

    has_edge :extendedcredits do |edge|
      edge.get 'ExtendedCredit' do |api|
        api.has_param :order_by_is_owned_credential, 'bool'
      end
    end

    has_edge :initiated_audience_sharing_requests do |edge|
      edge.get 'BusinessAssetSharingAgreement' do |api|
        api.has_param :recipient_id, 'string'
        api.has_param :request_status, { enum: -> { BusinessAssetSharingAgreement::REQUEST_STATUS }}
      end
    end

    has_edge :initiated_sharing_agreements do |edge|
      edge.get 'BusinessAgreement' do |api|
        api.has_param :receiving_business_id, 'string'
        api.has_param :request_status, { enum: -> { BusinessAgreement::REQUEST_STATUS }}
      end
    end

    has_edge :instagram_accounts do |edge|
      edge.delete do |api|
        api.has_param :instagram_account, 'string'
      end
      edge.get 'InstagramUser'
    end

    has_edge :instagram_business_accounts do |edge|
      edge.get 'IgUser'
    end

    has_edge :managed_businesses do |edge|
      edge.delete do |api|
        api.has_param :existing_client_business_id, 'string'
      end
      edge.post 'Business' do |api|
        api.has_param :child_business_external_id, 'string'
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
        api.has_param :child_business_external_id, 'string'
        api.has_param :client_user_id, 'int'
      end
      edge.post 'Business' do |api|
        api.has_param :child_business_external_id, 'string'
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
        api.has_param :page_id, 'int'
      end
    end

    has_edge :owned_pixels do |edge|
      edge.get 'AdsPixel'
    end

    has_edge :owned_product_catalogs do |edge|
      edge.get 'ProductCatalog'
      edge.post 'ProductCatalog' do |api|
        api.has_param :catalog_segment_filter, 'object'
        api.has_param :catalog_segment_product_set_id, 'string'
        api.has_param :da_display_settings, 'object'
        api.has_param :destination_catalog_settings, 'hash'
        api.has_param :flight_catalog_settings, 'hash'
        api.has_param :name, 'string'
        api.has_param :parent_catalog_id, 'string'
        api.has_param :partner_integration, 'hash'
        api.has_param :store_catalog_settings, 'hash'
        api.has_param :vertical, { enum: -> { ProductCatalog::VERTICAL }}
      end
    end

    has_edge :owned_whatsapp_business_accounts do |edge|
      edge.get 'WhatsAppBusinessAccount'
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

    has_edge :pending_users do |edge|
      edge.get 'BusinessRoleRequest' do |api|
        api.has_param :email, 'string'
      end
    end

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :breaking_change, { enum: -> { ProfilePictureSource::BREAKING_CHANGE }}
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

    has_edge :received_sharing_agreements do |edge|
      edge.get 'BusinessAgreement' do |api|
        api.has_param :request_status, { enum: -> { BusinessAgreement::REQUEST_STATUS }}
        api.has_param :requesting_business_id, 'string'
      end
    end

    has_edge :spaco_dataset_collections do |edge|
      edge.get
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

  end
end
