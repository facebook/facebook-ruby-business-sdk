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

  class AdCampaignGroupStats < AdObject

    field :actions, 'hash'
    field :campaign_group_id, 'string'
    field :clicks, 'int'
    field :end_time, 'datetime'
    field :impressions, 'int'
    field :inline_actions, 'hash'
    field :social_clicks, 'int'
    field :social_impressions, 'int'
    field :social_spent, 'int'
    field :social_unique_clicks, 'int'
    field :social_unique_impressions, 'int'
    field :spent, 'int'
    field :start_time, 'datetime'
    field :unique_clicks, 'int'
    field :unique_impressions, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
