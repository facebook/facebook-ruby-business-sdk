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

  class AdsSegments < AdObject

    field :daily_audience_size, 'int'
    field :daily_impressions, 'int'
    field :description, 'string'
    field :id, 'string'
    field :name, 'string'
    field :path, { list: 'string' }
    field :popularity, 'double'
    field :projected_cpm, 'int'
    field :projected_daily_revenue, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
