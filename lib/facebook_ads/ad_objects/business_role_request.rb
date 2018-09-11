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

  class BusinessRoleRequest < AdObject
    ROLE = [
      "FINANCE_EDITOR",
      "FINANCE_ANALYST",
      "ADS_RIGHTS_REVIEWER",
      "ADMIN",
      "EMPLOYEE",
      "FB_EMPLOYEE_SALES_REP",
    ]

    STATUS = [
      "PENDING",
      "ACCEPTED",
      "DECLINED",
      "EXPIRED",
    ]


    field :created_by, 'object'
    field :created_time, 'datetime'
    field :email, 'string'
    field :expiration_time, 'datetime'
    field :expiry_time, 'datetime'
    field :finance_role, 'string'
    field :id, 'string'
    field :invite_link, 'string'
    field :ip_role, 'string'
    field :owner, 'Business'
    field :role, 'string'
    field :status, 'string'
    field :updated_by, 'object'
    field :updated_time, 'datetime'

    has_edge :assigned_client_assets do |edge|
      edge.get do |api|
        api.has_param :asset_type, { enum: %w{PAGE AD_ACCOUNT PRODUCT_CATALOG APP PIXEL SYSTEM_USER BRAND USER PROJECT INSTAGRAM_ACCOUNT ATLAS_ADVERTISER FUNDING_SOURCE LEGACY_LOGIN BUSINESS_REQUEST EXAMPLE_CAT MONETIZATION_PROPERTY GRP_PLAN PERSONA CREDIT_PARTITION PAYOUT_ACCOUNT AD_STUDY SAVED_AUDIENCE CUSTOM_AUDIENCE PLATFORM_CUSTOM_AUDIENCE EVENT_SOURCE_GROUP OFFLINE_CONVERSION_DATA_SET AD_IMAGE PHOTO BLOCK_LIST FINANCE IP CREDIT_PARTITION_CONFIG VIDEO_ASSET BUSINESS_UNIT PAGE_FOR_LOCATIONS AD_ACCOUNT_CREATION_REQUEST RESELLER_VETTING_OE_REQUEST REGISTERED_TRADEMARK CUSTOM_CONVERSION LEADS_ACCESS SPACO_DS_DATA_COLLECTION OWNED_DOMAIN WHATSAPP_BUSINESS_ACCOUNT BUSINESS_RESOURCE_GROUP HOTEL_PRICE_FETCHER_PULL_CONFIG NEWS_PAGE PLACE_PAGE_SET BUSINESS_LOCATIONS_WRAPPER }}
      end
    end

    has_edge :assigned_owned_assets do |edge|
      edge.get 'BusinessObject' do |api|
        api.has_param :asset_type, { enum: -> { BusinessObject::ASSET_TYPE }}
      end
    end

  end
end
