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
    ROLE = [
      "FINANCE_EDITOR",
      "FINANCE_ANALYST",
      "ADS_RIGHTS_REVIEWER",
      "ADMIN",
      "EMPLOYEE",
      "FB_EMPLOYEE_SALES_REP",
    ]

    PAGE_PERMITTED_ROLES = [
      "MANAGER",
      "CONTENT_CREATOR",
      "MODERATOR",
      "ADVERTISER",
      "INSIGHTS_ANALYST",
    ]

    SURVEY_BUSINESS_TYPE = [
      "AGENCY",
      "ADVERTISER",
      "APP_DEVELOPER",
      "PUBLISHER",
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

    PERMITTED_ROLES = [
      "ADMIN",
      "UPLOADER",
      "ADVERTISER",
    ]


    field :created_by, 'User'
    field :created_time, 'datetime'
    field :id, 'string'
    field :link, 'string'
    field :name, 'string'
    field :payment_account_id, 'string'
    field :primary_page, 'Page'
    field :profile_picture_uri, 'string'
    field :timezone_id, 'int'
    field :two_factor_type, 'string'
    field :updated_by, 'User'
    field :updated_time, 'datetime'
    field :vertical, 'string'
    has_no_post
    has_no_delete

    has_edge :access_token do |edge|
      edge.post do |api|
        api.has_param :app_id, 'object'
        api.has_param :scope, 'object'
      end
    end

    has_edge :ad_studies do |edge|
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
        api.has_param :billing_address_id, 'object'
        api.has_param :currency, 'string'
        api.has_param :end_advertiser, 'object'
        api.has_param :funding_id, 'string'
        api.has_param :invoice, 'bool'
        api.has_param :io, 'bool'
        api.has_param :liable_address_id, 'object'
        api.has_param :media_agency, 'string'
        api.has_param :name, 'string'
        api.has_param :partner, 'string'
        api.has_param :po_number, 'string'
        api.has_param :sold_to_address_id, 'object'
        api.has_param :timezone_id, 'int'
      end
    end

    has_edge :adaccountcreationrequests do |edge|
      edge.get 'AdAccountCreationRequest' do |api|
        api.has_param :status, { list: { enum: -> { AdAccountCreationRequest::STATUS }} }
      end
      edge.post 'AdAccountCreationRequest' do |api|
        api.has_param :ad_accounts_info, { list: 'object' }
        api.has_param :additional_comment, 'string'
        api.has_param :address_in_chinese, 'string'
        api.has_param :address_in_english, 'object'
        api.has_param :advertiser_business_id, 'string'
        api.has_param :business_registration, 'file'
        api.has_param :business_registration_id, 'string'
        api.has_param :chinese_legal_entity_name, 'string'
        api.has_param :contact, 'object'
        api.has_param :english_legal_entity_name, 'string'
        api.has_param :extended_credit_id, 'string'
        api.has_param :is_smb, 'bool'
        api.has_param :is_test, 'bool'
        api.has_param :official_website_url, 'object'
        api.has_param :planning_agency_business_id, 'string'
        api.has_param :promotable_app_ids, { list: 'string' }
        api.has_param :promotable_page_ids, { list: 'string' }
        api.has_param :promotable_page_urls, { list: 'object' }
        api.has_param :promotable_urls, { list: 'object' }
        api.has_param :subvertical, { enum: -> { AdAccountCreationRequest::SUBVERTICAL }}
        api.has_param :vertical, { enum: -> { AdAccountCreationRequest::VERTICAL }}
      end
    end

    has_edge :adaccounts do |edge|
      edge.delete do |api|
        api.has_param :adaccount_id, 'string'
      end
    end

    has_edge :adnetworkanalytics do |edge|
      edge.get 'AdNetworkAnalyticsSyncQueryResult' do |api|
        api.has_param :aggregation_period, { enum: %w{HOUR DAY TOTAL }}
        api.has_param :breakdowns, { list: { enum: %w{AGE APP COUNTRY DELIVERY_METHOD DISPLAY_FORMAT DEAL DEAL_AD DEAL_PAGE GENDER PLACEMENT PLATFORM PROPERTY }} }
        api.has_param :filters, { list: 'hash' }
        api.has_param :metrics, { list: { enum: %w{FB_AD_NETWORK_BIDDING_REQUEST FB_AD_NETWORK_BIDDING_RESPONSE FB_AD_NETWORK_REQUEST FB_AD_NETWORK_FILLED_REQUEST FB_AD_NETWORK_FILL_RATE FB_AD_NETWORK_IMP FB_AD_NETWORK_SHOW_RATE FB_AD_NETWORK_CLICK FB_AD_NETWORK_CTR FB_AD_NETWORK_BIDDING_REVENUE FB_AD_NETWORK_REVENUE FB_AD_NETWORK_CPM FB_AD_NETWORK_VIDEO_GUARANTEE_REVENUE FB_AD_NETWORK_VIDEO_VIEW FB_AD_NETWORK_VIDEO_VIEW_RATE FB_AD_NETWORK_VIDEO_MRC FB_AD_NETWORK_VIDEO_MRC_RATE FB_AD_NETWORK_WIN_RATE FB_AD_NETWORK_DIRECT_TOTAL_REVENUE FB_AD_NETWORK_DIRECT_PUBLISHER_BILL FB_AD_NETWORK_FAST_CLICK_RATE FB_AD_NETWORK_FAST_RETURN_RATE FB_AD_NETWORK_CLICK_VALUE_SCORE FB_AD_NETWORK_FAST_CLICK_NUMERATOR FB_AD_NETWORK_FAST_CLICK_DENOMINATOR FB_AD_NETWORK_FAST_RETURN_NUMERATOR FB_AD_NETWORK_FAST_RETURN_DENOMINATOR FB_AD_NETWORK_CLICK_VALUE_SCORE_NUMERATOR FB_AD_NETWORK_CLICK_VALUE_SCORE_DENOMINATOR }} }
        api.has_param :ordering_column, { enum: %w{TIME VALUE }}
        api.has_param :ordering_type, { enum: %w{ASCENDING DESCENDING }}
        api.has_param :since, 'object'
        api.has_param :until, 'object'
      end
      edge.post do |api|
        api.has_param :aggregation_period, { enum: %w{HOUR DAY TOTAL }}
        api.has_param :breakdowns, { list: { enum: %w{AGE APP COUNTRY DELIVERY_METHOD DISPLAY_FORMAT DEAL DEAL_AD DEAL_PAGE GENDER PLACEMENT PLATFORM PROPERTY }} }
        api.has_param :filters, { list: 'object' }
        api.has_param :metrics, { list: { enum: %w{FB_AD_NETWORK_BIDDING_REQUEST FB_AD_NETWORK_BIDDING_RESPONSE FB_AD_NETWORK_REQUEST FB_AD_NETWORK_FILLED_REQUEST FB_AD_NETWORK_FILL_RATE FB_AD_NETWORK_IMP FB_AD_NETWORK_SHOW_RATE FB_AD_NETWORK_CLICK FB_AD_NETWORK_CTR FB_AD_NETWORK_BIDDING_REVENUE FB_AD_NETWORK_REVENUE FB_AD_NETWORK_CPM FB_AD_NETWORK_VIDEO_GUARANTEE_REVENUE FB_AD_NETWORK_VIDEO_VIEW FB_AD_NETWORK_VIDEO_VIEW_RATE FB_AD_NETWORK_VIDEO_MRC FB_AD_NETWORK_VIDEO_MRC_RATE FB_AD_NETWORK_WIN_RATE FB_AD_NETWORK_DIRECT_TOTAL_REVENUE FB_AD_NETWORK_DIRECT_PUBLISHER_BILL FB_AD_NETWORK_FAST_CLICK_RATE FB_AD_NETWORK_FAST_RETURN_RATE FB_AD_NETWORK_CLICK_VALUE_SCORE FB_AD_NETWORK_FAST_CLICK_NUMERATOR FB_AD_NETWORK_FAST_CLICK_DENOMINATOR FB_AD_NETWORK_FAST_RETURN_NUMERATOR FB_AD_NETWORK_FAST_RETURN_DENOMINATOR FB_AD_NETWORK_CLICK_VALUE_SCORE_NUMERATOR FB_AD_NETWORK_CLICK_VALUE_SCORE_DENOMINATOR }} }
        api.has_param :ordering_column, { enum: %w{TIME VALUE }}
        api.has_param :ordering_type, { enum: %w{ASCENDING DESCENDING }}
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
        api.has_param :id_filter, 'string'
        api.has_param :name_filter, 'string'
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :advertisable_applications do |edge|
      edge.get 'BusinessAdvertisableApplicationsResult' do |api|
        api.has_param :adaccount_id, 'int'
      end
    end

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
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
      edge.post do |api|
        api.has_param :access_type, { enum: %w{OWNER AGENCY }}
        api.has_param :app_id, 'object'
      end
    end

    has_edge :business_activities do |edge|
      edge.get 'BusinessActivityLogEvent' do |api|
        api.has_param :business, 'string'
      end
    end

    has_edge :business_invoices do |edge|
      edge.get 'OracleTransaction' do |api|
        api.has_param :end_date, 'string'
        api.has_param :start_date, 'string'
      end
    end

    has_edge :business_users do |edge|
      edge.get 'BusinessUser'
      edge.post 'Business' do |api|
        api.has_param :email, 'string'
        api.has_param :role, { enum: -> { Business::ROLE }}
      end
    end

    has_edge :businessprojects do |edge|
      edge.get 'BusinessProject'
    end

    has_edge :client_ad_accounts do |edge|
      edge.get 'AdAccount'
      edge.post 'AdAccount' do |api|
        api.has_param :adaccount_id, 'string'
        api.has_param :permitted_roles, { list: { enum: -> { AdAccount::PERMITTED_ROLES }} }
      end
    end

    has_edge :client_apps do |edge|
      edge.get
      edge.post do |api|
        api.has_param :app_id, 'object'
      end
    end

    has_edge :client_businesses do |edge|
      edge.get 'Business'
    end

    has_edge :client_pages do |edge|
      edge.get 'Page'
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

    has_edge :instagram_accounts do |edge|
      edge.get
    end

    has_edge :matched_search_applications do |edge|
      edge.get 'BusinessMatchedSearchApplicationsEdgeData' do |api|
        api.has_param :allow_incomplete_app, 'bool'
        api.has_param :app_store, { enum: -> { BusinessMatchedSearchApplicationsEdgeData::APP_STORE }}
        api.has_param :app_store_country, 'string'
        api.has_param :query_term, 'string'
      end
    end

    has_edge :measurement_reports do |edge|
      edge.get 'MeasurementReport' do |api|
        api.has_param :filters, { list: 'object' }
        api.has_param :report_type, { enum: -> { MeasurementReport::REPORT_TYPE }}
      end
      edge.post 'MeasurementReport' do |api|
        api.has_param :metadata, 'string'
        api.has_param :report_type, { enum: -> { MeasurementReport::REPORT_TYPE }}
      end
    end

    has_edge :offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
      edge.post 'OfflineConversionDataSet' do |api|
        api.has_param :auto_assign_to_new_accounts_only, 'bool'
        api.has_param :description, 'string'
        api.has_param :enable_auto_assign_to_accounts, 'bool'
        api.has_param :name, 'string'
      end
    end

    has_edge :owned_ad_accounts do |edge|
      edge.get 'AdAccount'
      edge.post 'AdAccount' do |api|
        api.has_param :adaccount_id, 'string'
      end
    end

    has_edge :owned_apps do |edge|
      edge.get
      edge.post do |api|
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
        api.has_param :page_permitted_roles, { list: { enum: -> { Business::PAGE_PERMITTED_ROLES }} }
        api.has_param :sales_rep_email, 'string'
        api.has_param :shared_page_id, 'object'
        api.has_param :survey_business_type, { enum: -> { Business::SURVEY_BUSINESS_TYPE }}
        api.has_param :survey_num_assets, 'int'
        api.has_param :survey_num_people, 'int'
        api.has_param :timezone_id, 'int'
        api.has_param :vertical, { enum: -> { Business::VERTICAL }}
      end
    end

    has_edge :owned_domains do |edge|
      edge.post 'OwnedDomain' do |api|
        api.has_param :domain_name, 'string'
      end
    end

    has_edge :owned_instagram_accounts do |edge|
      edge.get
    end

    has_edge :owned_pages do |edge|
      edge.get 'Page'
      edge.post 'Page' do |api|
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
        api.has_param :vertical, { enum: -> { ProductCatalog::VERTICAL }}
      end
    end

    has_edge :pages do |edge|
      edge.delete do |api|
        api.has_param :page_id, 'int'
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

    has_edge :pending_owned_ad_accounts do |edge|
      edge.get 'LegacyBusinessAdAccountRequest'
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
        api.has_param :height, 'int'
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :width, 'int'
      end
    end

    has_edge :received_audience_permissions do |edge|
      edge.get 'AudiencePermission' do |api|
        api.has_param :partner_id, 'string'
      end
    end

    has_edge :shared_audience_permissions do |edge|
      edge.get 'AudiencePermission' do |api|
        api.has_param :partner_id, 'string'
      end
    end

    has_edge :system_users do |edge|
      edge.get 'SystemUser'
    end

    has_edge :systemusers do |edge|
      edge.post 'SystemUser' do |api|
        api.has_param :name, 'string'
        api.has_param :role, { enum: -> { SystemUser::ROLE }}
        api.has_param :system_user_id, 'int'
      end
    end

    has_edge :user_invitations do |edge|
      edge.delete do |api|
        api.has_param :email, 'string'
      end
      edge.get 'BusinessRoleRequest' do |api|
        api.has_param :email, 'string'
        api.has_param :status, { enum: -> { BusinessRoleRequest::STATUS }}
      end
    end

    has_edge :userpermissions do |edge|
      edge.delete do |api|
        api.has_param :email, 'string'
        api.has_param :user, 'int'
      end
      edge.post do |api|
        api.has_param :email, 'string'
        api.has_param :role, { enum: %w{FINANCE_EDITOR FINANCE_ANALYST ADS_RIGHTS_REVIEWER ADMIN EMPLOYEE FB_EMPLOYEE_SALES_REP }}
        api.has_param :user, 'int'
      end
    end

  end
end
