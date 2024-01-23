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
      "NOT_SET",
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
      "PROFILE_PLUS_MANAGE_LEADS",
      "PROFILE_PLUS_MESSAGING",
      "PROFILE_PLUS_MODERATE",
      "PROFILE_PLUS_MODERATE_DELEGATE_COMMUNITY",
      "PROFILE_PLUS_REVENUE",
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
      "PROFILE_PLUS_MANAGE_LEADS",
      "PROFILE_PLUS_MESSAGING",
      "PROFILE_PLUS_MODERATE",
      "PROFILE_PLUS_MODERATE_DELEGATE_COMMUNITY",
      "PROFILE_PLUS_REVENUE",
      "READ_PAGE_MAILBOXES",
      "VIEW_MONETIZATION_INSIGHTS",
    ]

    SUBVERTICAL_V2 = [
      "ACCOUNTING_AND_TAX",
      "ACTIVITIES_AND_LEISURE",
      "AIR",
      "APPAREL_AND_ACCESSORIES",
      "ARTS_AND_HERITAGE_AND_EDUCATION",
      "AR_OR_VR_GAMING",
      "AUDIO_STREAMING",
      "AUTO",
      "AUTO_INSURANCE",
      "AUTO_RENTAL",
      "BABY",
      "BALLOT_INITIATIVE_OR_REFERENDUM",
      "BEAUTY",
      "BEAUTY_AND_FASHION",
      "BEER_AND_WINE_AND_LIQUOR_AND_MALT_BEVERAGES",
      "BOOKSTORES",
      "BROADCAST_TELEVISION",
      "BUSINESS_CONSULTANTS",
      "BUYING_AGENCY",
      "CABLE_AND_SATELLITE",
      "CABLE_TELEVISION",
      "CALL_CENTER_AND_MESSAGING_SERVICES",
      "CANDIDATE_OR_POLITICIAN",
      "CAREER",
      "CAREER_AND_TECH",
      "CASUAL_DINING",
      "CHRONIC_CONDITIONS_AND_MEDICAL_CAUSES",
      "CIVIC_INFLUENCERS",
      "CLINICAL_TRIALS",
      "COFFEE",
      "COMPUTER_AND_SOFTWARE_AND_HARDWARE",
      "CONSOLE_AND_CROSS_PLATFORM_GAMING",
      "CONSULTING",
      "CONSUMER_ELECTRONICS",
      "COUNSELING_AND_PSYCHOTHERAPY",
      "CREATIVE_AGENCY",
      "CREDIT_AND_FINANCING_AND_MORTAGES",
      "CRUISES_AND_MARINE",
      "CULTURE_AND_LIFESTYLE",
      "DATA_ANALYTICS_AND_DATA_MANAGEMENT",
      "DATING_AND_TECHNOLOGY_APPS",
      "DEPARTMENT_STORE",
      "DESKTOP_SOFTWARE",
      "DIETING_AND_FITNESS_PROGRAMS",
      "DIGITAL_NATIVE_EDUCATION_OR_TRAINING",
      "DRINKING_PLACES",
      "EDUCATION_RESOURCES",
      "ED_TECH",
      "ELEARNING_AND_MASSIVE_ONLINE_OPEN_COURSES",
      "ELECTION_COMMISSION",
      "ELECTRONICS_AND_APPLIANCES",
      "ENGINEERING_AND_DESIGN",
      "ENVIRONMENT_AND_ANIMAL_WELFARE",
      "ESPORTS",
      "EVENTS",
      "FARMING_AND_RANCHING",
      "FILE_STORAGE_AND_CLOUD_AND_DATA_SERVICES",
      "FINANCE",
      "FIN_TECH",
      "FISHING_AND_HUNTING_AND_FORESTRY_AND_LOGGING",
      "FITNESS",
      "FOOD",
      "FOOTWEAR",
      "FOR_PROFIT_COLLEGES_AND_UNIVERSITIES",
      "FULL_SERVICE_AGENCY",
      "GOVERNMENT_CONTROLLED_ENTITY",
      "GOVERNMENT_DEPARTMENT_OR_AGENCY",
      "GOVERNMENT_OFFICIAL",
      "GOVERNMENT_OWNED_MEDIA",
      "GROCERY_AND_DRUG_AND_CONVENIENCE",
      "HEAD_OF_STATE",
      "HEALTH_INSURANCE",
      "HEALTH_SYSTEMS_AND_PRACTITIONERS",
      "HEALTH_TECH",
      "HOME_AND_FURNITURE_AND_OFFICE",
      "HOME_IMPROVEMENT",
      "HOME_INSURANCE",
      "HOME_TECH",
      "HOTEL_AND_ACCOMODATION",
      "HOUSEHOLD_GOODS_DURABLE",
      "HOUSEHOLD_GOODS_NON_DURABLE",
      "HR_AND_FINANCIAL_MANAGEMENT",
      "HUMANITARIAN_OR_DISASTER_RELIEF",
      "INDEPENDENT_EXPENDITURE_GROUP",
      "INSURANCE_TECH",
      "INTERNATIONAL_ORGANIZATON",
      "INVESTMENT_BANK_AND_BROKERAGE",
      "ISSUE_ADVOCACY",
      "LEGAL",
      "LIFE_INSURANCE",
      "LOGISTICS_AND_TRANSPORTATION_AND_FLEET_MANAGEMENT",
      "MANUFACTURING",
      "MEDICAL_DEVICES_AND_SUPPLIES_AND_EQUIPMENT",
      "MEDSPA_AND_ELECTIVE_SURGERIES_AND_ALTERNATIVE_MEDICINE",
      "MINING_AND_QUARRYING",
      "MOBILE_GAMING",
      "MOVIES",
      "MUSEUMS_AND_PARKS_AND_LIBRARIES",
      "MUSIC",
      "NETWORK_SECURITY_PRODUCTS",
      "NEWS_AND_CURRENT_EVENTS",
      "NON_PRESCRIPTION",
      "NOT_FOR_PROFIT_COLLEGES_AND_UNIVERSITIES",
      "OFFICE",
      "OFFICE_OR_BUSINESS_SUPPLIES",
      "OIL_AND_GAS_AND_CONSUMABLE_FUEL",
      "ONLINE_ONLY_PUBLICATIONS",
      "PACKAGE_OR_FREIGHT_DELIVERY",
      "PARTY_INDEPENDENT_EXPENDITURE_GROUP_US",
      "PAYMENT_PROCESSING_AND_GATEWAY_SOLUTIONS",
      "PC_GAMING",
      "PEOPLE",
      "PERSONAL_CARE",
      "PET",
      "PHOTOGRAPHY_AND_FILMING_SERVICES",
      "PIZZA",
      "PLANNING_AGENCY",
      "POLITICAL_PARTY_OR_COMMITTEE",
      "PRESCRIPTION",
      "PROFESSIONAL_ASSOCIATIONS",
      "PROPERTY_AND_CASUALTY",
      "QUICK_SERVICE",
      "RADIO",
      "RAILROADS",
      "REAL_ESTATE",
      "REAL_MONEY_GAMING",
      "RECREATIONAL",
      "RELIGIOUS",
      "RESELLER",
      "RESIDENTIAL_AND_LONG_TERM_CARE_FACILITIES_AND_OUTPATIENT_CARE_CENTERS",
      "RETAIL_AND_CREDIT_UNION_AND_COMMERCIAL_BANK",
      "RIDE_SHARING_OR_TAXI_SERVICES",
      "SAFETY_SERVICES",
      "SCHOLARLY",
      "SCHOOL_AND_EARLY_CHILDREN_EDCATION",
      "SOCIAL_MEDIA",
      "SOFTWARE_AS_A_SERVICE",
      "SPORTING",
      "SPORTING_AND_OUTDOOR",
      "SPORTS",
      "SUPERSTORES",
      "T1_AUTOMOTIVE_MANUFACTURER",
      "T1_MOTORCYCLE",
      "T2_DEALER_ASSOCIATIONS",
      "T3_AUTO_AGENCY",
      "T3_AUTO_RESELLERS",
      "T3_DEALER_GROUPS",
      "T3_FRANCHISE_DEALER",
      "T3_INDEPENDENT_DEALER",
      "T3_PARTS_AND_SERVICES",
      "T3_PORTALS",
      "TELECOMMUNICATIONS_EQUIPMENT_AND_ACCESSORIES",
      "TELEPHONE_SERVICE_PROVIDERS_AND_CARRIERS",
      "TICKETING",
      "TOBACCO",
      "TOURISM_AND_TRAVEL_SERVICES",
      "TOURISM_BOARD",
      "TOY_AND_HOBBY",
      "TRADE_SCHOOL",
      "TRAVEL_AGENCIES_AND_GUIDES_AND_OTAS",
      "UTILITIES_AND_ENERGY_EQUIPMENT_AND_SERVICES",
      "VETERINARY_CLINICS_AND_SERVICES",
      "VIDEO_STREAMING",
      "VIRTUAL_SERVICES",
      "VITAMINS_OR_WELLNESS",
      "WAREHOUSING_AND_STORAGE",
      "WATER_AND_SOFT_DRINK_AND_BAVERAGE",
      "WEBSITE_DESIGNERS_OR_GRAPHIC_DESIGNERS",
      "WHOLESALE",
      "WIRELESS_SERVICES",
    ]

    VERTICAL_V2 = [
      "ADVERTISING_AND_MARKETING",
      "AGRICULTURE",
      "AUTOMOTIVE",
      "BANKING_AND_CREDIT_CARDS",
      "BUSINESS_TO_BUSINESS",
      "CONSUMER_PACKAGED_GOODS",
      "ECOMMERCE",
      "EDUCATION",
      "ENERGY_AND_NATURAL_RESOURCES_AND_UTILITIES",
      "ENTERTAINMENT_AND_MEDIA",
      "GAMING",
      "GOVERNMENT",
      "HEALTHCARE_AND_PHARMACEUTICALS_AND_BIOTECH",
      "INSURANCE",
      "NON_PROFIT",
      "ORGANIZATIONS_AND_ASSOCIATIONS",
      "POLITICS",
      "PROFESSIONAL_SERVICES",
      "PUBLISHING",
      "RESTAURANTS",
      "RETAIL",
      "TECHNOLOGY",
      "TELECOM",
      "TRAVEL",
    ]

    ACTION_SOURCE = [
      "PHYSICAL_STORE",
      "WEBSITE",
    ]


    field :block_offline_analytics, 'bool'
    field :collaborative_ads_managed_partner_business_info, 'ManagedPartnerBusiness'
    field :collaborative_ads_managed_partner_eligibility, 'BusinessManagedPartnerEligibility'
    field :collaborative_ads_partner_premium_options, 'BusinessPartnerPremiumOptions'
    field :created_by, 'object'
    field :created_time, 'datetime'
    field :extended_updated_time, 'datetime'
    field :id, 'string'
    field :is_hidden, 'bool'
    field :link, 'string'
    field :name, 'string'
    field :payment_account_id, 'string'
    field :primary_page, 'Page'
    field :profile_picture_uri, 'string'
    field :timezone_id, 'int'
    field :two_factor_type, 'string'
    field :updated_by, 'object'
    field :updated_time, 'datetime'
    field :user_access_expire_time, 'datetime'
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

    has_edge :add_phone_numbers do |edge|
      edge.post 'Business' do |api|
        api.has_param :phone_number, 'string'
      end
    end

    has_edge :adnetwork_applications do |edge|
      edge.post 'Application' do |api|
        api.has_param :name, 'string'
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

    has_edge :ads_reporting_mmm_reports do |edge|
      edge.get do |api|
        api.has_param :filtering, { list: 'hash' }
      end
    end

    has_edge :ads_reporting_mmm_schedulers do |edge|
      edge.get
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

    has_edge :business_users do |edge|
      edge.get 'BusinessUser'
      edge.post 'BusinessUser' do |api|
        api.has_param :email, 'string'
        api.has_param :role, { enum: -> { BusinessUser::ROLE }}
      end
    end

    has_edge :businessprojects do |edge|
      edge.get
    end

    has_edge :claim_custom_conversions do |edge|
      edge.post 'CustomConversion' do |api|
        api.has_param :custom_conversion_id, 'string'
      end
    end

    has_edge :client_ad_accounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :search_query, 'string'
      end
    end

    has_edge :client_apps do |edge|
      edge.get 'Application'
      edge.post 'Business' do |api|
        api.has_param :app_id, 'object'
      end
    end

    has_edge :client_offsite_signal_container_business_objects do |edge|
      edge.get
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

    has_edge :cpas_business_setup_config do |edge|
      edge.get 'CpasBusinessSetupConfig'
      edge.post 'CpasBusinessSetupConfig' do |api|
        api.has_param :accepted_collab_ads_tos, 'bool'
        api.has_param :ad_accounts, { list: 'string' }
        api.has_param :business_capabilities_status, 'hash'
        api.has_param :capabilities_compliance_status, 'hash'
      end
    end

    has_edge :cpas_merchant_config do |edge|
      edge.get 'CpasMerchantConfig'
    end

    has_edge :creative_folders do |edge|
      edge.post 'BusinessCreativeFolder' do |api|
        api.has_param :description, 'string'
        api.has_param :name, 'string'
        api.has_param :parent_folder_id, 'string'
      end
    end

    has_edge :creditcards do |edge|
      edge.get 'CreditCard'
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

    has_edge :draft_negative_keyword_lists do |edge|
      edge.post do |api|
        api.has_param :negative_keyword_list_file, 'file'
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

    has_edge :images do |edge|
      edge.post 'BusinessImage' do |api|
        api.has_param :ad_placements_validation_only, 'bool'
        api.has_param :bytes, 'string'
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

    has_edge :managed_partner_business_setup do |edge|
      edge.post 'Business' do |api|
        api.has_param :active_ad_account_id, 'string'
        api.has_param :active_page_id, 'int'
        api.has_param :partner_facebook_page_url, 'string'
        api.has_param :partner_registration_countries, { list: 'string' }
        api.has_param :seller_email_address, 'string'
        api.has_param :seller_external_website_url, 'string'
        api.has_param :template, { list: 'hash' }
      end
    end

    has_edge :managed_partner_businesses do |edge|
      edge.delete do |api|
        api.has_param :child_business_external_id, 'string'
        api.has_param :child_business_id, 'string'
      end
      edge.post do |api|
        api.has_param :ad_account_currency, 'string'
        api.has_param :catalog_id, 'string'
        api.has_param :child_business_external_id, 'string'
        api.has_param :credit_limit, 'int'
        api.has_param :line_of_credit_id, 'string'
        api.has_param :name, 'string'
        api.has_param :no_ad_account, 'bool'
        api.has_param :page_name, 'string'
        api.has_param :page_profile_image_url, 'string'
        api.has_param :partition_type, { enum: %w{AUTH FIXED FIXED_WITHOUT_PARTITION }}
        api.has_param :partner_facebook_page_url, 'string'
        api.has_param :partner_registration_countries, { list: 'string' }
        api.has_param :sales_rep_email, 'string'
        api.has_param :seller_external_website_url, 'string'
        api.has_param :seller_targeting_countries, { list: 'string' }
        api.has_param :skip_partner_page_creation, 'bool'
        api.has_param :survey_business_type, { enum: %w{ADVERTISER AGENCY APP_DEVELOPER PUBLISHER }}
        api.has_param :survey_num_assets, 'int'
        api.has_param :survey_num_people, 'int'
        api.has_param :timezone_id, 'int'
        api.has_param :vertical, { enum: %w{ADVERTISING AUTOMOTIVE CONSUMER_PACKAGED_GOODS ECOMMERCE EDUCATION ENERGY_AND_UTILITIES ENTERTAINMENT_AND_MEDIA FINANCIAL_SERVICES GAMING GOVERNMENT_AND_POLITICS HEALTH LUXURY MARKETING NON_PROFIT NOT_SET ORGANIZATIONS_AND_ASSOCIATIONS OTHER PROFESSIONAL_SERVICES RESTAURANT RETAIL TECHNOLOGY TELECOM TRAVEL }}
      end
    end

    has_edge :negative_keyword_lists do |edge|
      edge.get
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

    has_edge :openbridge_configurations do |edge|
      edge.get 'OpenBridgeConfiguration'
      edge.post 'OpenBridgeConfiguration' do |api|
        api.has_param :access_key, 'string'
        api.has_param :active, 'bool'
        api.has_param :endpoint, 'string'
        api.has_param :fallback_domain, 'string'
        api.has_param :fallback_domain_enabled, 'bool'
        api.has_param :host_business_id, 'int'
        api.has_param :host_external_id, 'string'
        api.has_param :pixel_id, 'int'
      end
    end

    has_edge :owned_ad_accounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :search_query, 'string'
      end
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

    has_edge :owned_offsite_signal_container_business_objects do |edge|
      edge.get
    end

    has_edge :owned_pages do |edge|
      edge.get 'Page'
      edge.post 'Business' do |api|
        api.has_param :code, 'string'
        api.has_param :entry_point, 'string'
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

    has_edge :partner_account_linking do |edge|
      edge.get
    end

    has_edge :partner_premium_options do |edge|
      edge.post do |api|
        api.has_param :catalog_segment_id, 'string'
        api.has_param :enable_basket_insight, 'bool'
        api.has_param :enable_extended_audience_retargeting, 'bool'
        api.has_param :partner_business_id, 'string'
        api.has_param :retailer_custom_audience_config, 'hash'
        api.has_param :vendor_id, 'string'
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

    has_edge :pending_shared_offsite_signal_container_business_objects do |edge|
      edge.get
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

    has_edge :preverified_numbers do |edge|
      edge.get 'WhatsAppBusinessPreVerifiedPhoneNumber' do |api|
        api.has_param :code_verification_status, { enum: -> { WhatsAppBusinessPreVerifiedPhoneNumber::CODE_VERIFICATION_STATUS }}
        api.has_param :phone_number, 'string'
      end
    end

    has_edge :received_audience_sharing_requests do |edge|
      edge.get 'BusinessAssetSharingAgreement' do |api|
        api.has_param :initiator_id, 'string'
        api.has_param :request_status, { enum: -> { BusinessAssetSharingAgreement::REQUEST_STATUS }}
      end
    end

    has_edge :setup_managed_partner_adaccounts do |edge|
      edge.post 'Business' do |api|
        api.has_param :credit_line_id, 'string'
        api.has_param :marketplace_business_id, 'string'
        api.has_param :subvertical_v2, { enum: -> { Business::SUBVERTICAL_V2 }}
        api.has_param :vendor_id, 'string'
        api.has_param :vertical_v2, { enum: -> { Business::VERTICAL_V2 }}
      end
    end

    has_edge :share_preverified_numbers do |edge|
      edge.delete do |api|
        api.has_param :partner_business_id, 'string'
        api.has_param :preverified_id, 'string'
      end
      edge.post 'Business' do |api|
        api.has_param :partner_business_id, 'string'
        api.has_param :preverified_id, 'string'
      end
    end

    has_edge :system_user_access_tokens do |edge|
      edge.post 'Business' do |api|
        api.has_param :asset, { list: 'int' }
        api.has_param :fetch_only, 'bool'
        api.has_param :scope, { list: 'Permission' }
        api.has_param :set_token_expires_in_60_days, 'bool'
        api.has_param :system_user_id, 'int'
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
      edge.get
    end

    has_edge :videos do |edge|
      edge.post 'AdVideo' do |api|
        api.has_param :ad_placements_validation_only, 'bool'
        api.has_param :adaptive_type, 'string'
        api.has_param :animated_effect_id, 'int'
        api.has_param :application_id, 'string'
        api.has_param :asked_fun_fact_prompt_id, 'int'
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
        api.has_param :creative_tools, 'string'
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
        api.has_param :slideshow_spec, 'hash'
        api.has_param :source, 'string'
        api.has_param :source_instagram_media_id, 'string'
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
        api.has_param :video_id_original, 'string'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :waterfall_id, 'string'
      end
    end

  end
end
