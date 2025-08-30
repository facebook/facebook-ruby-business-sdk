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

  class ExtendedCreditApplication < AdObject

    field :billing_country, 'string'
    field :city, 'string'
    field :cnpj, 'string'
    field :country, 'string'
    field :display_currency, 'string'
    field :duns_number, 'string'
    field :id, 'string'
    field :invoice_email_address, 'string'
    field :is_umi, 'bool'
    field :legal_entity_name, 'string'
    field :original_online_limit, 'CurrencyAmount'
    field :phone_number, 'string'
    field :postal_code, 'string'
    field :product_types, { list: 'string' }
    field :proposed_credit_limit, 'CurrencyAmount'
    field :registration_number, 'string'
    field :run_id, 'string'
    field :state, 'string'
    field :status, 'string'
    field :street1, 'string'
    field :street2, 'string'
    field :submitter, 'User'
    field :tax_exempt_status, 'string'
    field :tax_id, 'string'
    field :terms, 'string'
    has_no_post
    has_no_delete

  end
end
