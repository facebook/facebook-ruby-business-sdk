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

  class AdVolume < AdObject

    field :ad_volume_break_down, { list: 'object' }
    field :ads_running_or_in_review_count, 'int'
    field :future_limit_activation_date, 'string'
    field :future_limit_on_ads_running_or_in_review, 'int'
    field :individual_accounts_ad_volume, 'int'
    field :is_gpa_page, 'bool'
    field :limit_on_ads_running_or_in_review, 'int'
    field :owning_business_ad_volume, 'int'
    field :partner_business_ad_volume, 'int'
    field :user_role, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
