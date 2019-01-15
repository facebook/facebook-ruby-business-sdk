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
      "none",
      "admin_required",
      "all_required",
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
      "MARKETING",
      "ORGANIZATIONS_AND_ASSOCIATIONS",
      "PROFESSIONAL_SERVICES",
      "RETAIL",
      "TECHNOLOGY",
      "TELECOM",
      "TRAVEL",
      "NON_PROFIT",
      "RESTAURANT",
      "HEALTH",
      "LUXURY",
      "OTHER",
    ]

    AGGREGATION_PERIOD = [
      "HOUR",
      "DAY",
      "TOTAL",
    ]

    BREAKDOWNS = [
      "AGE",
      "APP",
      "COUNTRY",
      "DELIVERY_METHOD",
      "DISPLAY_FORMAT",
      "DEAL",
      "DEAL_AD",
      "DEAL_PAGE",
      "GENDER",
      "PLACEMENT",
      "PLATFORM",
      "PROPERTY",
      "CLICKED_VIEW_TAG",
      "FAIL_REASON",
    ]

    METRICS = [
      "FB_AD_NETWORK_BIDDING_REQUEST",
      "FB_AD_NETWORK_BIDDING_RESPONSE",
      "FB_AD_NETWORK_BIDDING_BID_RATE",
      "FB_AD_NETWORK_BIDDING_WIN_RATE",
      "FB_AD_NETWORK_REQUEST",
      "FB_AD_NETWORK_FILLED_REQUEST",
      "FB_AD_NETWORK_FILL_RATE",
      "FB_AD_NETWORK_IMP",
      "FB_AD_NETWORK_SHOW_RATE",
      "FB_AD_NETWORK_CLICK",
      "FB_AD_NETWORK_CTR",
      "FB_AD_NETWORK_BIDDING_REVENUE",
      "FB_AD_NETWORK_REVENUE",
      "FB_AD_NETWORK_CPM",
      "FB_AD_NETWORK_VIDEO_GUARANTEE_REVENUE",
      "FB_AD_NETWORK_VIDEO_VIEW",
      "FB_AD_NETWORK_VIDEO_VIEW_RATE",
      "FB_AD_NETWORK_VIDEO_MRC",
      "FB_AD_NETWORK_VIDEO_MRC_RATE",
      "FB_AD_NETWORK_WIN_RATE",
      "FB_AD_NETWORK_DIRECT_TOTAL_REVENUE",
      "FB_AD_NETWORK_DIRECT_PUBLISHER_BILL",
      "FB_AD_NETWORK_FAST_CLICK_RATE",
      "FB_AD_NETWORK_FAST_RETURN_RATE",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE",
      "FB_AD_NETWORK_FAST_CLICK_NUMERATOR",
      "FB_AD_NETWORK_FAST_CLICK_DENOMINATOR",
      "FB_AD_NETWORK_FAST_RETURN_NUMERATOR",
      "FB_AD_NETWORK_FAST_RETURN_DENOMINATOR",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE_NUMERATOR",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE_DENOMINATOR",
      "FB_AD_NETWORK_NO_FILL",
      "FB_AD_NETWORK_NO_BID",
    ]

    ORDERING_COLUMN = [
      "TIME",
      "VALUE",
      "METRIC",
    ]

    ORDERING_TYPE = [
      "ASCENDING",
      "DESCENDING",
    ]

    ACCESS_TYPE = [
      "OWNER",
      "AGENCY",
    ]

    PERMITTED_TASKS = [
      "MANAGE",
      "ADVERTISE",
      "ANALYZE",
    ]

    SURVEY_BUSINESS_TYPE = [
      "AGENCY",
      "ADVERTISER",
      "APP_DEVELOPER",
      "PUBLISHER",
    ]

    PAGE_PERMITTED_ROLES = [
      "MANAGER",
      "CONTENT_CREATOR",
      "MODERATOR",
      "ADVERTISER",
      "INSIGHTS_ANALYST",
    ]

    PERMITTED_ROLES = [
      "MANAGER",
      "CONTENT_CREATOR",
      "MODERATOR",
      "ADVERTISER",
      "INSIGHTS_ANALYST",
    ]

    ROLE = [
      "FINANCE_EDITOR",
      "FINANCE_ANALYST",
      "ADS_RIGHTS_REVIEWER",
      "ADMIN",
      "EMPLOYEE",
      "FB_EMPLOYEE_SALES_REP",
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
        api.has_param :app_id, 'object'
        api.has_param :scope, 'object'
      end
    end

    has_edge :ad_studies do |edge|
      edge.get 'AdStudy'
      edge.post 'AdStudy' do |api|
        api.has_param :cells, { list: 'object' }
        api.has_param :objectives, { list: 'object' }
        api.has_param :end_time, 'int'
        api.has_param :description, 'string'
        api.has_param :name, 'string'
        api.has_param :start_time, 'int'
        api.has_param :viewers, { list: 'int' }
        api.has_param :cooldown_start_time, 'int'
        api.has_param :observation_end_time, 'int'
        api.has_param :confidence_level, 'double'
        api.has_param :client_business, 'string'
        api.has_param :type, { enum: -> { AdStudy::TYPE }}
      end
    end

    has_edge :adaccount do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :name, 'string'
        api.has_param :currency, 'string'
        api.has_param :timezone_id, 'int'
        api.has_param :end_advertiser, 'object'
        api.has_param :funding_id, 'string'
        api.has_param :media_agency, 'string'
        api.has_param :partner, 'string'
        api.has_param :invoice, 'bool'
        api.has_param :po_number, 'string'
        api.has_param :invoicing_emails, { list: 'string' }
        api.has_param :io, 'bool'
        api.has_param :billing_address_id, 'object'
        api.has_param :sold_to_address_id, 'object'
        api.has_param :liable_address_id, 'object'
        api.has_param :invoice_group_id, 'object'
      end
    end

    has_edge :adaccountcreationrequests do |edge|
      edge.get 'AdAccountCreationRequest' do |api|
        api.has_param :status, { list: { enum: -> { AdAccountCreationRequest::STATUS }} }
      end
      edge.post 'AdAccountCreationRequest' do |api|
        api.has_param :extended_credit_id, 'object'
        api.has_param :ad_accounts_info, { list: 'object' }
        api.has_param :business_registration, 'file'
        api.has_param :planning_agency_business_id, 'string'
        api.has_param :english_legal_entity_name, 'string'
        api.has_param :legal_entity_name_in_local_language, 'string'
        api.has_param :chinese_legal_entity_name, 'string'
        api.has_param :address_in_chinese, 'string'
        api.has_param :address_in_local_language, 'string'
        api.has_param :address_in_english, 'object'
        api.has_param :official_website_url, 'object'
        api.has_param :business_registration_id, 'string'
        api.has_param :vertical, { enum: -> { AdAccountCreationRequest::VERTICAL }}
        api.has_param :subvertical, { enum: -> { AdAccountCreationRequest::SUBVERTICAL }}
        api.has_param :promotable_page_urls, { list: 'object' }
        api.has_param :promotable_page_ids, { list: 'string' }
        api.has_param :promotable_app_ids, { list: 'string' }
        api.has_param :promotable_urls, { list: 'object' }
        api.has_param :contact, 'object'
        api.has_param :additional_comment, 'string'
        api.has_param :is_smb, 'bool'
        api.has_param :is_test, 'bool'
        api.has_param :advertiser_business_id, 'string'
      end
    end

    has_edge :adaccounts do |edge|
      edge.delete do |api|
        api.has_param :adaccount_id, 'string'
      end
    end

    has_edge :adnetworkanalytics do |edge|
      edge.get 'AdNetworkAnalyticsSyncQueryResult' do |api|
        api.has_param :aggregation_period, { enum: -> { Business::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { Business::BREAKDOWNS }} }
        api.has_param :filters, { list: 'hash' }
        api.has_param :limit, 'int'
        api.has_param :metrics, { list: { enum: -> { Business::METRICS }} }
        api.has_param :ordering_column, { enum: -> { Business::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { Business::ORDERING_TYPE }}
        api.has_param :since, 'object'
        api.has_param :until, 'object'
      end
      edge.post 'Business' do |api|
        api.has_param :aggregation_period, { enum: -> { Business::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { Business::BREAKDOWNS }} }
        api.has_param :metrics, { list: { enum: -> { Business::METRICS }} }
        api.has_param :filters, { list: 'object' }
        api.has_param :limit, 'int'
        api.has_param :ordering_column, { enum: -> { Business::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { Business::ORDERING_TYPE }}
        api.has_param :since, 'object'
        api.has_param :until, 'object'
      end
    end

    has_edge :adnetworkanalytics_results do |edge|
      edge.get 'AdNetworkAnalyticsAsyncQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :adspixels do |edge|
      edge.get 'AdsPixel' do |api|
        api.has_param :name_filter, 'string'
        api.has_param :id_filter, 'string'
        api.has_param :sort_by, { enum: -> { AdsPixel::SORT_BY }}
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :advertisable_applications do |edge|
      edge.get 'BusinessAdvertisableApplicationsResult' do |api|
        api.has_param :adaccount_id, 'int'
        api.has_param :offset, 'int'
      end
    end

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
    end

    has_edge :agency_pages do |edge|
      edge.get 'Page' do |api|
        api.has_param :agency_id, 'string'
      end
    end

    has_edge :apps do |edge|
      edge.delete do |api|
        api.has_param :app_id, 'int'
      end
      edge.post 'Business' do |api|
        api.has_param :app_id, 'object'
        api.has_param :access_type, { enum: -> { Business::ACCESS_TYPE }}
      end
    end

    has_edge :block_list_drafts do |edge|
      edge.post 'Business' do |api|
        api.has_param :publisher_urls_file, 'file'
      end
    end

    has_edge :business_invoices do |edge|
      edge.get 'OracleTransaction' do |api|
        api.has_param :start_date, 'string'
        api.has_param :end_date, 'string'
      end
    end

    has_edge :business_users do |edge|
      edge.get 'BusinessUser'
      edge.post 'BusinessUser' do |api|
        api.has_param :email, 'string'
        api.has_param :role, { enum: -> { BusinessUser::ROLE }}
      end
    end

    has_edge :businessprojects do |edge|
      edge.get 'BusinessProject'
      edge.post 'BusinessProject' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :businesssettinglogs do |edge|
      edge.get 'BusinessSettingLogsData'
    end

    has_edge :catalog_segment_producer_tos do |edge|
      edge.get 'BusinessProductCatalogTos' do |api|
        api.has_param :catalog_segment_id, 'string'
      end
      edge.post 'Business' do |api|
        api.has_param :catalog_segment_id, 'string'
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

    has_edge :customconversions do |edge|
      edge.get 'CustomConversion'
      edge.post 'CustomConversion' do |api|
        api.has_param :name, 'string'
        api.has_param :description, 'string'
        api.has_param :event_source_id, 'string'
        api.has_param :rule, 'string'
        api.has_param :default_conversion_value, 'double'
        api.has_param :custom_event_type, { enum: -> { CustomConversion::CUSTOM_EVENT_TYPE }}
        api.has_param :advanced_rule, 'string'
      end
    end

    has_edge :deal_shows_pages do |edge|
      edge.get 'Page'
    end

    has_edge :direct_deals do |edge|
      edge.get 'DirectDeal' do |api|
        api.has_param :status, { enum: -> { DirectDeal::STATUS }}
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
      edge.get 'ExtendedCredit'
    end

    has_edge :grp_plans do |edge|
      edge.get 'ReachFrequencyPrediction' do |api|
        api.has_param :status, { enum: -> { ReachFrequencyPrediction::STATUS }}
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

    has_edge :managed_businesses do |edge|
      edge.post 'Business' do |api|
        api.has_param :name, 'string'
        api.has_param :vertical, { enum: -> { Business::VERTICAL }}
        api.has_param :timezone_id, 'int'
        api.has_param :survey_business_type, { enum: -> { Business::SURVEY_BUSINESS_TYPE }}
        api.has_param :survey_num_people, 'int'
        api.has_param :survey_num_assets, 'int'
        api.has_param :sales_rep_email, 'string'
        api.has_param :existing_client_business_id, 'object'
      end
    end

    has_edge :matched_search_applications do |edge|
      edge.get 'BusinessMatchedSearchApplicationsEdgeData' do |api|
        api.has_param :app_store, { enum: -> { BusinessMatchedSearchApplicationsEdgeData::APP_STORE }}
        api.has_param :app_store_country, 'string'
        api.has_param :query_term, 'string'
        api.has_param :allow_incomplete_app, 'bool'
      end
    end

    has_edge :measurement_reports do |edge|
      edge.get 'MeasurementReport' do |api|
        api.has_param :report_type, { enum: -> { MeasurementReport::REPORT_TYPE }}
        api.has_param :filters, { list: 'object' }
      end
      edge.post 'MeasurementReport' do |api|
        api.has_param :report_type, { enum: -> { MeasurementReport::REPORT_TYPE }}
        api.has_param :metadata, 'string'
      end
    end

    has_edge :offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
      edge.post 'OfflineConversionDataSet' do |api|
        api.has_param :name, 'string'
        api.has_param :description, 'string'
        api.has_param :data_origin, { enum: -> { OfflineConversionDataSet::DATA_ORIGIN }}
        api.has_param :enable_auto_assign_to_accounts, 'bool'
        api.has_param :is_mta_use, 'bool'
        api.has_param :auto_assign_to_new_accounts_only, 'bool'
      end
    end

    has_edge :offline_terms_of_service do |edge|
      edge.get 'OfflineTermsOfService'
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
        api.has_param :client_id, 'object'
      end
      edge.get 'Business' do |api|
        api.has_param :client_user_id, 'object'
      end
      edge.post 'Business' do |api|
        api.has_param :name, 'string'
        api.has_param :vertical, { enum: -> { Business::VERTICAL }}
        api.has_param :timezone_id, 'int'
        api.has_param :survey_business_type, { enum: -> { Business::SURVEY_BUSINESS_TYPE }}
        api.has_param :survey_num_people, 'int'
        api.has_param :survey_num_assets, 'int'
        api.has_param :sales_rep_email, 'string'
        api.has_param :shared_page_id, 'object'
        api.has_param :page_permitted_roles, { list: { enum: -> { Business::PAGE_PERMITTED_ROLES }} }
      end
    end

    has_edge :owned_custom_conversions do |edge|
      edge.get 'CustomConversion'
    end

    has_edge :owned_domains do |edge|
      edge.get 'OwnedDomain'
      edge.post 'OwnedDomain' do |api|
        api.has_param :domain_name, 'string'
      end
    end

    has_edge :owned_instagram_accounts do |edge|
      edge.get 'InstagramUser'
    end

    has_edge :owned_pages do |edge|
      edge.get 'Page'
      edge.post 'Business' do |api|
        api.has_param :page_id, 'int'
        api.has_param :ig_password, 'string'
      end
    end

    has_edge :owned_pixels do |edge|
      edge.get 'AdsPixel'
    end

    has_edge :owned_product_catalogs do |edge|
      edge.get 'ProductCatalog'
      edge.post 'ProductCatalog' do |api|
        api.has_param :name, 'string'
        api.has_param :vertical, { enum: -> { ProductCatalog::VERTICAL }}
        api.has_param :flight_catalog_settings, 'hash'
        api.has_param :destination_catalog_settings, 'hash'
        api.has_param :da_display_settings, 'object'
      end
    end

    has_edge :pages do |edge|
      edge.delete do |api|
        api.has_param :page_id, 'int'
      end
      edge.post 'Business' do |api|
        api.has_param :page_id, 'int'
        api.has_param :access_type, { enum: -> { Business::ACCESS_TYPE }}
        api.has_param :permitted_roles, { list: { enum: -> { Business::PERMITTED_ROLES }} }
      end
    end

    has_edge :partner_integrations do |edge|
      edge.get 'PartnerIntegrationLinked'
      edge.post 'PartnerIntegrationLinked' do |api|
        api.has_param :external_id, 'string'
        api.has_param :gtm_account_id, 'string'
        api.has_param :gtm_container_id, 'string'
        api.has_param :name, 'string'
        api.has_param :partner, { enum: -> { PartnerIntegrationLinked::PARTNER }}
      end
    end

    has_edge :partneradaccount do |edge|
      edge.post do |api|
        api.has_param :name, 'string'
        api.has_param :currency, 'string'
        api.has_param :timezone_id, 'int'
        api.has_param :end_advertiser, 'object'
        api.has_param :funding_id, 'string'
        api.has_param :media_agency, 'string'
        api.has_param :partner, 'string'
        api.has_param :invoice, 'bool'
        api.has_param :po_number, 'string'
        api.has_param :invoicing_emails, { list: 'string' }
        api.has_param :io, 'bool'
        api.has_param :billing_address_id, 'object'
        api.has_param :sold_to_address_id, 'object'
        api.has_param :liable_address_id, 'object'
        api.has_param :invoice_group_id, 'object'
      end
    end

    has_edge :partners do |edge|
      edge.get 'Business'
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

    has_edge :pending_offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
    end

    has_edge :pending_owned_ad_accounts do |edge|
      edge.get 'LegacyBusinessAdAccountRequest'
    end

    has_edge :pending_owned_pages do |edge|
      edge.get 'BusinessPageRequest'
    end

    has_edge :pending_shared_pixels do |edge|
      edge.get 'AdsPixel'
    end

    has_edge :pending_users do |edge|
      edge.get 'BusinessRoleRequest' do |api|
        api.has_param :email, 'string'
      end
    end

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :width, 'int'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :redirect, 'bool'
      end
    end

    has_edge :product_catalogs do |edge|
      edge.post 'ProductCatalog' do |api|
        api.has_param :name, 'string'
        api.has_param :vertical, { enum: -> { ProductCatalog::VERTICAL }}
        api.has_param :flight_catalog_settings, 'hash'
        api.has_param :destination_catalog_settings, 'hash'
        api.has_param :da_display_settings, 'object'
      end
    end

    has_edge :received_audience_permissions do |edge|
      edge.get 'AudiencePermission' do |api|
        api.has_param :partner_id, 'string'
      end
    end

    has_edge :received_audience_sharing_requests do |edge|
      edge.get 'BusinessAssetSharingAgreement' do |api|
        api.has_param :initiator_id, 'string'
        api.has_param :request_status, { enum: -> { BusinessAssetSharingAgreement::REQUEST_STATUS }}
      end
    end

    has_edge :received_inprogress_onbehalf_requests do |edge|
      edge.get 'BusinessOwnedObjectOnBehalfOfRequest'
    end

    has_edge :received_sharing_agreements do |edge|
      edge.get 'BusinessAgreement' do |api|
        api.has_param :requesting_business_id, 'string'
        api.has_param :request_status, { enum: -> { BusinessAgreement::REQUEST_STATUS }}
      end
    end

    has_edge :sent_inprogress_onbehalf_requests do |edge|
      edge.get 'BusinessOwnedObjectOnBehalfOfRequest'
      edge.post 'BusinessOwnedObjectOnBehalfOfRequest' do |api|
        api.has_param :receiving_business, 'string'
        api.has_param :business_owned_object, 'string'
      end
    end

    has_edge :shared_audience_permissions do |edge|
      edge.get 'AudiencePermission' do |api|
        api.has_param :partner_id, 'string'
      end
    end

    has_edge :spaco_dataset_collections do |edge|
      edge.post do |api|
        api.has_param :spaco_data_collections, { list: 'object' }
      end
    end

    has_edge :system_users do |edge|
      edge.get 'SystemUser'
      edge.post 'SystemUser' do |api|
        api.has_param :role, { enum: -> { SystemUser::ROLE }}
        api.has_param :name, 'string'
        api.has_param :system_user_id, 'int'
      end
    end

    has_edge :upload_event do |edge|
      edge.get 'MeasurementUploadEvent'
      edge.post 'MeasurementUploadEvent' do |api|
        api.has_param :group, { enum: -> { MeasurementUploadEvent::GROUP }}
        api.has_param :upload_end_time, 'object'
        api.has_param :upload_start_time, 'object'
        api.has_param :upload_tag, 'string'
        api.has_param :version, { enum: -> { MeasurementUploadEvent::VERSION }}
      end
    end

    has_edge :user_invitations do |edge|
      edge.delete do |api|
        api.has_param :email, 'string'
      end
      edge.get 'BusinessRoleRequest' do |api|
        api.has_param :status, { enum: -> { BusinessRoleRequest::STATUS }}
        api.has_param :email, 'string'
      end
    end

    has_edge :userpermissions do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
        api.has_param :email, 'string'
      end
      edge.post 'Business' do |api|
        api.has_param :user, 'int'
        api.has_param :email, 'string'
        api.has_param :role, { enum: -> { Business::ROLE }}
      end
    end

    has_edge :vietnamadaccountcreationrequests do |edge|
      edge.post 'AdAccountCreationRequest' do |api|
        api.has_param :address_in_local_language, 'string'
        api.has_param :ad_accounts_currency, 'string'
        api.has_param :credit_card_id, 'object'
        api.has_param :extended_credit_id, 'object'
        api.has_param :legal_entity_name_in_local_language, 'string'
        api.has_param :ad_accounts_info, { list: 'object' }
        api.has_param :business_registration, 'file'
        api.has_param :planning_agency_business_id, 'object'
        api.has_param :english_legal_entity_name, 'string'
        api.has_param :address_in_english, 'object'
        api.has_param :official_website_url, 'object'
        api.has_param :business_registration_id, 'string'
        api.has_param :vertical, { enum: -> { AdAccountCreationRequest::VERTICAL }}
        api.has_param :subvertical, { enum: -> { AdAccountCreationRequest::SUBVERTICAL }}
        api.has_param :promotable_page_urls, { list: 'object' }
        api.has_param :promotable_page_ids, { list: 'int' }
        api.has_param :promotable_app_ids, { list: 'object' }
        api.has_param :promotable_urls, { list: 'object' }
        api.has_param :contact, 'object'
        api.has_param :additional_comment, 'string'
        api.has_param :is_smb, 'bool'
        api.has_param :is_test, 'bool'
        api.has_param :advertiser_business_id, 'object'
      end
    end

  end
end
