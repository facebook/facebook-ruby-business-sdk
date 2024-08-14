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

  class DirectDebit < AdObject

    field :bank_account_last_4, 'string'
    field :bank_code_last_4, 'string'
    field :bank_name, 'string'
    field :default_receiving_method_products, { list: 'string' }
    field :display_string, 'string'
    field :id, 'string'
    field :last_four_digits, 'string'
    field :onboarding_url, 'string'
    field :owner_name, 'string'
    field :status, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
