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

  class OfflineConversionDataSetUpload < AdObject
    ORDER = [
      "ASCENDING",
      "DESCENDING",
    ]

    SORT_BY = [
      "API_CALLS",
      "CREATION_TIME",
      "EVENT_TIME_MAX",
      "EVENT_TIME_MIN",
      "FIRST_UPLOAD_TIME",
      "IS_EXCLUDED_FOR_LIFT",
      "LAST_UPLOAD_TIME",
    ]


    field :api_calls, 'int'
    field :creation_time, 'int'
    field :duplicate_entries, 'int'
    field :event_stats, 'string'
    field :event_time_max, 'int'
    field :event_time_min, 'int'
    field :first_upload_time, 'int'
    field :id, 'string'
    field :is_excluded_for_lift, 'bool'
    field :last_upload_time, 'int'
    field :match_rate_approx, 'int'
    field :matched_entries, 'int'
    field :upload_tag, 'string'
    field :valid_entries, 'int'
    has_no_post
    has_no_delete

    has_edge :progress do |edge|
      edge.get
    end

    has_edge :pull_sessions do |edge|
      edge.get
    end

  end
end
