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

  class InsightsResult < AdObject
    DATE_PRESET = [
      "data_maximum",
      "last_14d",
      "last_28d",
      "last_30d",
      "last_3d",
      "last_7d",
      "last_90d",
      "last_month",
      "last_quarter",
      "last_week_mon_sun",
      "last_week_sun_sat",
      "last_year",
      "maximum",
      "this_month",
      "this_quarter",
      "this_week_mon_today",
      "this_week_sun_today",
      "this_year",
      "today",
      "yesterday",
    ]

    PERIOD = [
      "day",
      "days_28",
      "lifetime",
      "month",
      "total_over_range",
      "week",
    ]


    field :description, 'string'
    field :description_from_api_doc, 'string'
    field :id, 'string'
    field :name, 'string'
    field :period, 'string'
    field :title, 'string'
    field :values, { list: 'object' }
    has_no_get
    has_no_post
    has_no_delete

  end
end
