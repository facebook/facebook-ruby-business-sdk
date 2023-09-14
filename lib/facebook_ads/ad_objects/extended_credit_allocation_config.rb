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

  class ExtendedCreditAllocationConfig < AdObject
    LIABILITY_TYPE = [
      "",
      "MSA",
      "Normal",
      "Sequential",
    ]

    PARTITION_TYPE = [
      "AUTH",
      "FIXED",
      "FIXED_WITHOUT_PARTITION",
    ]

    SEND_BILL_TO = [
      "",
      "Advertiser",
      "Agency",
    ]


    field :currency_amount, 'CurrencyAmount'
    field :id, 'string'
    field :liability_type, 'string'
    field :owning_business, 'Business'
    field :owning_credential, 'ExtendedCredit'
    field :partition_type, 'string'
    field :receiving_business, 'Business'
    field :receiving_credential, 'ExtendedCredit'
    field :request_status, 'string'
    field :send_bill_to, 'string'

  end
end
