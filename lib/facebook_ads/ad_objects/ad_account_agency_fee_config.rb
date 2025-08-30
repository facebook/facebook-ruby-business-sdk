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

  class AdAccountAgencyFeeConfig < AdObject
    STATUS = [
      "ACTIVE",
      "ARCHIVED",
      "DRAFT",
      "UNKNOWN",
    ]


    field :can_add_agency_fee_to_invoice, 'bool'
    field :default_agency_fee_pct, 'double'
    field :id, 'string'
    field :is_agency_fee_disabled, 'bool'
    field :status, { enum: -> { STATUS }}
    has_no_post
    has_no_delete

  end
end
