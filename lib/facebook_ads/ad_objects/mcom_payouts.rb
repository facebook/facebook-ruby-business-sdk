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

  class McomPayouts < AdObject

    field :number_of_orders, 'int'
    field :order_ids, { list: 'string' }
    field :payout_amount, 'object'
    field :payout_provider_reference_id, 'string'
    field :payout_status, 'string'
    field :payout_time, 'int'
    field :provider, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
