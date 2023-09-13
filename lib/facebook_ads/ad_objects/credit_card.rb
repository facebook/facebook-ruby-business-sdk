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

  class CreditCard < AdObject

    field :billing_address, 'object'
    field :card_cobadging, 'string'
    field :card_holder_name, 'string'
    field :card_type, 'string'
    field :credential_id, 'int'
    field :default_receiving_method_products, { list: 'string' }
    field :expiry_month, 'string'
    field :expiry_year, 'string'
    field :id, 'string'
    field :is_cvv_tricky_bin, 'bool'
    field :is_enabled, 'bool'
    field :is_last_used, 'bool'
    field :is_network_tokenized_in_india, 'bool'
    field :is_soft_disabled, 'bool'
    field :is_user_verified, 'bool'
    field :is_zip_verified, 'bool'
    field :last4, 'string'
    field :readable_card_type, 'string'
    field :time_created, 'datetime'
    field :time_created_ts, 'int'
    field :type, 'string'
    has_no_post
    has_no_delete

  end
end
