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

  class AdCampaignStats < AdObject

    field :account_id, 'string'
    field :actions, 'object'
    field :adgroup_id, 'string'
    field :campaign_id, 'string'
    field :campaign_ids, { list: 'string' }
    field :clicks, 'int'
    field :end_time, 'object'
    field :id, 'string'
    field :impressions, 'string'
    field :inline_actions, 'hash'
    field :io_number, 'int'
    field :is_completed, 'bool'
    field :line_number, 'int'
    field :newsfeed_position, 'object'
    field :social_clicks, 'int'
    field :social_impressions, 'string'
    field :social_spent, 'int'
    field :social_unique_clicks, 'int'
    field :social_unique_impressions, 'string'
    field :spent, 'int'
    field :start_time, 'object'
    field :topline_id, 'string'
    field :unique_clicks, 'int'
    field :unique_impressions, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
