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

  class FundingSourceDetailsCoupon < AdObject

    field :amount, 'int'
    field :campaign_ids, { list: 'int' }
    field :child_ad_account_id, 'string'
    field :child_bm_id, 'string'
    field :coupon_id, 'string'
    field :coupon_tiering, 'FundingSourceDetailsCouponTiering'
    field :currency, 'string'
    field :display_amount, 'string'
    field :expiration, 'datetime'
    field :original_amount, 'int'
    field :original_display_amount, 'string'
    field :start_date, 'datetime'
    field :vendor_id, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
