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

  class CpasMerchantConfig < AdObject

    field :accepted_tos, 'bool'
    field :beta_features, { list: 'string' }
    field :business_outcomes_status, { list: 'hash' }
    field :id, 'string'
    field :is_test_merchant, 'bool'
    field :outcomes_compliance_status, { list: 'hash' }
    field :qualified_to_onboard, 'bool'
    has_no_post
    has_no_delete

  end
end
