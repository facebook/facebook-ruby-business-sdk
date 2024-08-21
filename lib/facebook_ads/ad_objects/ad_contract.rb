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

  class AdContract < AdObject

    field :account_id, 'string'
    field :account_mgr_fbid, 'string'
    field :account_mgr_name, 'string'
    field :adops_person_name, 'string'
    field :advertiser_address_fbid, 'string'
    field :advertiser_fbid, 'string'
    field :advertiser_name, 'string'
    field :agency_discount, 'double'
    field :agency_name, 'string'
    field :bill_to_address_fbid, 'string'
    field :bill_to_fbid, 'string'
    field :campaign_name, 'string'
    field :created_by, 'string'
    field :created_date, 'int'
    field :customer_io, 'string'
    field :io_number, 'int'
    field :io_terms, 'string'
    field :io_type, 'string'
    field :last_updated_by, 'string'
    field :last_updated_date, 'int'
    field :max_end_date, 'int'
    field :mdc_fbid, 'string'
    field :media_plan_number, 'string'
    field :min_start_date, 'int'
    field :msa_contract, 'string'
    field :payment_terms, 'string'
    field :rev_hold_flag, 'bool'
    field :rev_hold_released_by, 'int'
    field :rev_hold_released_on, 'int'
    field :salesrep_fbid, 'string'
    field :salesrep_name, 'string'
    field :sold_to_address_fbid, 'string'
    field :sold_to_fbid, 'string'
    field :status, 'string'
    field :subvertical, 'string'
    field :thirdparty_billed, 'int'
    field :thirdparty_uid, 'string'
    field :thirdparty_url, 'string'
    field :vat_country, 'string'
    field :version, 'int'
    field :vertical, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
