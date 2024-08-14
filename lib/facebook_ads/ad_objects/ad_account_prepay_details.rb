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

  class AdAccountPrepayDetails < AdObject

    field :default_funding_amount, 'CurrencyAmount'
    field :max_acceptable_amount, 'CurrencyAmount'
    field :min_acceptable_amount, 'CurrencyAmount'
    field :should_collect_business_details, 'bool'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
