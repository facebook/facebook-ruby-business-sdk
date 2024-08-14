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

  class AdsPixelStatsResult < AdObject
    AGGREGATION = [
      "browser_type",
      "custom_data_field",
      "device_os",
      "device_type",
      "event",
      "event_detection_method",
      "event_processing_results",
      "event_source",
      "event_total_counts",
      "event_value_count",
      "had_pii",
      "host",
      "match_keys",
      "pixel_fire",
      "url",
      "url_by_rule",
    ]


    field :aggregation, 'string'
    field :data, { list: 'AdsPixelStats' }
    field :start_time, 'datetime'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
