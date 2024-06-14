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

  class AdKeywordStats < AdObject

    field :actions, { list: 'AdsActionStats' }
    field :clicks, 'int'
    field :cost_per_total_action, 'double'
    field :cost_per_unique_click, 'double'
    field :cpc, 'double'
    field :cpm, 'double'
    field :cpp, 'double'
    field :ctr, 'double'
    field :frequency, 'double'
    field :id, 'string'
    field :impressions, 'int'
    field :name, 'string'
    field :reach, 'int'
    field :spend, 'double'
    field :total_actions, 'int'
    field :total_unique_actions, 'int'
    field :unique_actions, { list: 'AdsActionStats' }
    field :unique_clicks, 'int'
    field :unique_ctr, 'double'
    field :unique_impressions, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
