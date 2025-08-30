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

  class ResellerGuidance < AdObject

    field :ad_account_first_spend_date, 'string'
    field :ad_account_id, 'string'
    field :adopted_guidance_l7d, { list: 'string' }
    field :advertiser_name, 'string'
    field :attributed_to_reseller_l7d, 'bool'
    field :available_guidance, { list: 'string' }
    field :guidance_adoption_rate_l7d, 'double'
    field :nurtured_by_reseller_l7d, 'bool'
    field :planning_agency_name, 'string'
    field :recommendation_time, 'datetime'
    field :reporting_ds, 'string'
    field :reseller, 'Business'
    field :revenue_l30d, 'double'
    field :ultimate_advertiser_name, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
