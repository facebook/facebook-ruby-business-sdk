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

  class RegionalRegulationIdentities < AdObject

    field :australia_finserv_beneficiary, 'string'
    field :australia_finserv_payer, 'string'
    field :india_finserv_beneficiary, 'string'
    field :india_finserv_payer, 'string'
    field :singapore_universal_beneficiary, 'string'
    field :singapore_universal_payer, 'string'
    field :taiwan_finserv_beneficiary, 'string'
    field :taiwan_finserv_payer, 'string'
    field :taiwan_universal_beneficiary, 'string'
    field :taiwan_universal_payer, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
