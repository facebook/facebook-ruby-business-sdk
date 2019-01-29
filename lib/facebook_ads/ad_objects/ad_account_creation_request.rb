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

  class AdAccountCreationRequest < AdObject
    SUBVERTICAL = [
      "ACCOUNTING_AND_TAXES_AND_LEGAL",
      "AGRICULTURE_AND_FARMING",
      "ECOMMERCE_AGRICULTURE_AND_FARMING",
      "AIR",
      "AIR_FREIGHT_OR_PACKAGE",
      "APPAREL_AND_ACCESSORIES",
      "ARTS",
      "AUCTIONS",
      "AUTO_AGENCY",
      "AUTO_RENTAL",
      "AUTOMOTIVE_MANUFACTURER",
      "B2B",
      "B2B_MANUFACTURING",
      "BEAUTY_AND_PERSONAL_CARE",
      "BEER_AND_WINE_AND_LIQUOR",
      "BOOKSTORES",
      "BUS_AND_TAXI_AND_AUTO_RETAL",
      "BUSINESS_SUPPORT_SERVICES",
      "CABLE_AND_SATELLITE",
      "CAREER",
      "COMPUTING_AND_PERIPHERALS",
      "CONSOLE_DEVELOPER",
      "CONSOLE_DEVICE",
      "CONSTRUCTION_AND_MINING",
      "CONSULTING",
      "CONSUMER_ELECTRONICS",
      "CONSUMER_TECH",
      "CREDIT_AND_FINANCING_AND_MORTAGES",
      "CRUISES_AND_MARINE",
      "CVB_CONVENTION_AND_VISITORS_BUREAU",
      "DAILYDEALS",
      "DATING",
      "DEALERSHIP",
      "DEPARTMENT_STORE",
      "DESKTOP_SOFTWARE",
      "DIGITAL_ADVERTISING_AND_MARKETING_OR_UNTAGGED_AGENCIES",
      "ECATALOG",
      "ED_TECH",
      "EDUCATION_RESOURCES",
      "ELEARNING_AND_MASSIVE_ONLINE_OPEN_COURSES",
      "ENGINEERING_AND_DESIGN",
      "EVENTS",
      "FAMILY_AND_HEALTH",
      "FITNESS",
      "FOOD",
      "FOOTWEAR",
      "FOR_PROFIT_COLLEGES_AND_UNIVERSITIES",
      "GAMBLING",
      "GOVERNMENT",
      "GROCERY_AND_DRUG_AND_CONVENIENCE",
      "HIGHWAYS",
      "HOME_AND_OFFICE",
      "HOME_IMPROVEMENT",
      "HOME_SERVICE",
      "HOTEL_AND_ACCOMODATION",
      "HOUSEHOLD_GOODS",
      "INDUSTRIAL_AND_FARM_VEHICLE",
      "INSURANCE",
      "INVESTMENT_BANK_AND_BROKERAGE",
      "MEDIA",
      "MOBILE_AND_SOCIAL",
      "MOBILE_APPS",
      "MOTORCYCLES",
      "MOVIES",
      "MUSEUMS_AND_PARKS_AND_LIBRARIES",
      "MUSIC_AND_RADIO",
      "NON_PROFIT",
      "NOT_FOR_PROFIT_COLLEGES_AND_UNIVERSITIES",
      "OFFICE",
      "OIL_AND_GAS_AND_CONSUMABLE_FUEL",
      "ONLINE_OR_SOFTWARE",
      "PARTS_AND_SERVICE",
      "PET",
      "PET_RETAIL",
      "PHARMACEUTICAL_OR_HEALTH",
      "PHOTOGRAPHY_AND_FILMING_SERVICES",
      "POLITICAL",
      "PR",
      "PUBLISHING_INTERNET",
      "RAILROADS",
      "RECREATIONAL",
      "REAL_ESTATE",
      "REAL_MONEY_OR_SKILLED_GAMING",
      "RELIGIOUS",
      "RESTAURANT",
      "RETAIL_AND_CREDIT_UNION_AND_COMMERCIAL_BANK",
      "SCHOOL_AND_EARLY_CHILDREN_EDCATION",
      "SEASONAL_POLITICAL_SPENDERS",
      "SMB_AGENTS_AND_PROMOTERS",
      "SMB_ARTISTS_AND_PERFORMERS",
      "SMB_CANVAS",
      "SMB_CATALOG",
      "SMB_CONSUMER_MOBILE_DEVICE",
      "SMB_CROSS_PLATFORM",
      "SMB_ELECTRONICS_AND_APPLIANCES",
      "SMB_ENERGY",
      "SMB_GAME_AND_TOY",
      "SMB_INFORMATION",
      "SMB_NAVIGATION_AND_MEASUREMENT",
      "SMB_OPERATIONS_AND_OTHER",
      "SMB_OTHER",
      "SMB_PERSONAL_CARE",
      "SMB_RELIGIOUS",
      "SMB_RENTALS",
      "SMB_REPAIR_AND_MAINTENANCE",
      "OTHER_WIRELINE_SERVICES",
      "SOFTWARE",
      "SPORTING",
      "SPORTS",
      "STREAMING",
      "TELEVISION",
      "TOBACCO",
      "TOY_AND_HOBBY",
      "TRADE_SCHOOL",
      "TRANSPORTATION_EQUIPMENT",
      "TRAVAL_AGENCY",
      "TRUCK_AND_MOVING",
      "UTILITIES_AND_ENERGY_EQUIPMENT_AND_SERVICES",
      "WATER_AND_SOFT_DRINK_AND_BAVERAGE",
      "WIRELESS_SERVICES",
    ]

    VERTICAL = [
      "ADVERTISING_AND_MARKETING",
      "AUTO_AGENCY",
      "AUTOMOTIVE",
      "CONSUMER_PACKAGED_GOODS",
      "CPG_AND_BEVERAGE",
      "ECOMMERCE",
      "EDUCATION",
      "ENERGY_AND_UTILITIES",
      "ENTERTAINMENT_AND_MEDIA",
      "FINANCIAL_SERVICES",
      "GAMING",
      "GOVERMENT_AND_POLITICS",
      "MOTORCYCLES",
      "ORGANIZATIONS_AND_ASSOCIATIONS",
      "OTHER",
      "PROFESSIONAL_SERVICES",
      "RETAIL",
      "TECHNOLOGY",
      "TELECOM",
      "TRAVEL",
    ]

    STATUS = [
      "PENDING",
      "UNDER_REVIEW",
      "APPROVED",
      "DISAPPROVED",
      "REQUESTED_CHANGE",
      "CANCELLED",
      "AUTO_APPROVED",
      "AUTO_DISAPPROVED",
      "APPEAL_PENDING",
      "APPEAL_UNDER_REVIEW",
      "APPEAL_APPROVED",
      "APPEAL_DISAPPROVED",
    ]


    field :ad_accounts_currency, 'string'
    field :ad_accounts_info, { list: 'object' }
    field :additional_comment, 'string'
    field :address_in_chinese, 'string'
    field :address_in_english, 'object'
    field :address_in_local_language, 'string'
    field :advertiser_business, 'Business'
    field :appeal_reason, 'object'
    field :business, 'Business'
    field :business_registration_id, 'string'
    field :chinese_legal_entity_name, 'string'
    field :contact, 'object'
    field :creator, 'User'
    field :credit_card_id, 'string'
    field :disapproval_reasons, { list: 'object' }
    field :english_legal_entity_name, 'string'
    field :extended_credit_id, 'string'
    field :id, 'string'
    field :is_smb, 'bool'
    field :is_test, 'bool'
    field :is_under_authorization, 'bool'
    field :legal_entity_name_in_local_language, 'string'
    field :oe_request_id, 'string'
    field :official_website_url, 'string'
    field :planning_agency_business, 'Business'
    field :planning_agency_business_id, 'string'
    field :promotable_app_ids, { list: 'string' }
    field :promotable_page_ids, { list: 'string' }
    field :promotable_urls, { list: 'string' }
    field :request_change_reasons, { list: 'object' }
    field :status, 'string'
    field :subvertical, 'string'
    field :time_created, 'datetime'
    field :vertical, 'string'
    field :business_registration, 'file'
    field :promotable_page_urls, { list: 'string' }
    field :advertiser_business_id, 'string'

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :vietnam do |edge|
      edge.post 'AdAccountCreationRequest' do |api|
        api.has_param :ad_accounts_info, { list: 'object' }
        api.has_param :business_registration, 'file'
        api.has_param :planning_agency_business_id, 'string'
        api.has_param :english_legal_entity_name, 'string'
        api.has_param :address_in_english, 'object'
        api.has_param :official_website_url, 'string'
        api.has_param :business_registration_id, 'string'
        api.has_param :vertical, { enum: -> { AdAccountCreationRequest::VERTICAL }}
        api.has_param :subvertical, { enum: -> { AdAccountCreationRequest::SUBVERTICAL }}
        api.has_param :promotable_page_urls, { list: 'string' }
        api.has_param :promotable_page_ids, { list: 'int' }
        api.has_param :promotable_app_ids, { list: 'string' }
        api.has_param :promotable_urls, { list: 'string' }
        api.has_param :contact, 'object'
        api.has_param :additional_comment, 'string'
        api.has_param :advertiser_business_id, 'string'
        api.has_param :address_in_local_language, 'string'
        api.has_param :legal_entity_name_in_local_language, 'string'
      end
    end

  end
end
