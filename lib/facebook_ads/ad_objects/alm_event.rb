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

  class AlmEvent < AdObject

    field :ad_account_ids, { list: 'string' }
    field :campaign_ids, { list: 'string' }
    field :channel, 'string'
    field :event, 'string'
    field :event_time, 'datetime'
    field :guidance, 'string'
    field :guidance_detail, 'string'
    field :id, 'string'
    field :parent_advertiser_ids, { list: 'string' }
    field :reseller_business_id, 'string'
    field :sub_channel, 'string'
    field :user_id, 'string'
    has_no_post
    has_no_delete

  end
end
