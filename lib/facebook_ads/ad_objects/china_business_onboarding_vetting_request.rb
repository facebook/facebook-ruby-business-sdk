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

  class ChinaBusinessOnboardingVettingRequest < AdObject

    field :ad_account_creation_request_status, 'string'
    field :ad_account_limit, 'int'
    field :ad_account_number, 'string'
    field :ad_accounts_info, { list: 'object' }
    field :advertiser_business_id, 'string'
    field :advertiser_business_name, 'string'
    field :business_manager_id, 'string'
    field :business_registration, 'string'
    field :business_registration_id, 'string'
    field :business_verification_status, 'string'
    field :chinese_address, 'string'
    field :chinese_legal_entity_name, 'string'
    field :city, 'string'
    field :contact, 'string'
    field :coupon_code, 'string'
    field :disapprove_reason, 'string'
    field :english_business_name, 'string'
    field :id, 'string'
    field :official_website_url, 'string'
    field :org_ad_account_count, 'int'
    field :payment_type, 'string'
    field :planning_agency_id, 'string'
    field :planning_agency_name, 'string'
    field :promotable_app_ids, { list: 'string' }
    field :promotable_page_ids, { list: 'string' }
    field :promotable_pages, { list: 'object' }
    field :promotable_urls, { list: 'string' }
    field :request_changes_reason, 'string'
    field :reviewed_user, 'string'
    field :spend_limit, 'int'
    field :status, 'string'
    field :subvertical, 'string'
    field :subvertical_v2, 'string'
    field :supporting_document, 'string'
    field :time_changes_requested, 'datetime'
    field :time_created, 'datetime'
    field :time_updated, 'datetime'
    field :time_zone, 'string'
    field :used_reseller_link, 'bool'
    field :user_id, 'string'
    field :user_name, 'string'
    field :vertical, 'string'
    field :vertical_v2, 'string'
    field :viewed_by_reseller, 'bool'
    field :zip_code, 'string'
    has_no_post
    has_no_delete

  end
end
