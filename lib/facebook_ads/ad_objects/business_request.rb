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

  class BusinessRequest < AdObject
    OBJECT_TYPE = [
      "PAGE",
      "AD_ACCOUNT",
      "PRODUCT_CATALOG",
      "APP",
      "PIXEL",
      "SYSTEM_USER",
      "BRAND",
      "USER",
      "PROJECT",
      "INSTAGRAM_ACCOUNT",
      "ATLAS_ADVERTISER",
      "FUNDING_SOURCE",
      "LEGACY_LOGIN",
      "BUSINESS_REQUEST",
      "EXAMPLE_CAT",
      "MONETIZATION_PROPERTY",
      "GRP_PLAN",
      "PERSONA",
      "CREDIT_PARTITION",
      "PAYOUT_ACCOUNT",
      "AD_STUDY",
      "SAVED_AUDIENCE",
      "CUSTOM_AUDIENCE",
      "PLATFORM_CUSTOM_AUDIENCE",
      "EVENT_SOURCE_GROUP",
      "OFFLINE_CONVERSION_DATA_SET",
      "AD_IMAGE",
      "PHOTO",
      "BLOCK_LIST",
      "FINANCE",
      "IP",
      "CREDIT_PARTITION_CONFIG",
      "VIDEO_ASSET",
      "BUSINESS_UNIT",
      "PAGE_FOR_LOCATIONS",
      "AD_ACCOUNT_CREATION_REQUEST",
      "RESELLER_VETTING_OE_REQUEST",
      "REGISTERED_TRADEMARK",
      "CUSTOM_CONVERSION",
      "LEADS_ACCESS",
      "SPACO_DS_DATA_COLLECTION",
      "OWNED_DOMAIN",
      "WHATSAPP_BUSINESS_ACCOUNT",
      "BUSINESS_RESOURCE_GROUP",
      "HOTEL_PRICE_FETCHER_PULL_CONFIG",
      "NEWS_PAGE",
      "PLACE_PAGE_SET",
      "BUSINESS_LOCATIONS_WRAPPER",
    ]


    field :accessor, 'Business'
    field :creation_time, 'datetime'
    field :id, 'string'
    field :object_id, 'string'
    field :object_type, 'string'
    field :permitted_tasks, { list: 'string' }
    field :request_status, 'string'
    field :request_type, 'string'
    field :requestor, 'string'
    has_no_post
    has_no_delete

  end
end
