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

  class AdAccountCreationRequest < AdObject

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
    field :subvertical_v2, 'string'
    field :time_created, 'datetime'
    field :vertical, 'string'
    field :vertical_v2, 'string'
    has_no_post
    has_no_delete

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount'
    end

  end
end
