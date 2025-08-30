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

  class AdAccountPromotionProgressBar < AdObject

    field :adaccount_permission, 'bool'
    field :coupon_currency, 'string'
    field :coupon_value, 'int'
    field :expiration_time, 'datetime'
    field :progress_completed, 'bool'
    field :promotion_type, 'string'
    field :spend_requirement_in_cent, 'int'
    field :spend_since_enrollment, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
