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

  class ConversionHealthKpi < AdObject

    field :health_indicator, 'string'
    field :impacted_browsers_match_rate, 'double'
    field :impacted_browsers_match_rate_mom_trend, 'double'
    field :impacted_browsers_traffic_share, 'double'
    field :impacted_browsers_traffic_share_mom_trend, 'double'
    field :match_rate, 'double'
    field :match_rate_mom_trend, 'double'
    field :match_rate_vertical_benchmark, 'double'
    field :match_rate_vs_benchmark_mom_trend, 'double'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
