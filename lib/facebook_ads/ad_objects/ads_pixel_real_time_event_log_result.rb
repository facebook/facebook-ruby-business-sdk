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

  class AdsPixelRealTimeEventLogResult < AdObject

    field :data_json, 'string'
    field :dedup_data, 'string'
    field :device_type, 'string'
    field :domain_control_rule_rejection, 'string'
    field :event, 'string'
    field :event_detection_method, 'string'
    field :in_iframe, 'bool'
    field :matched_rule_conditions, 'string'
    field :resolved_link, 'string'
    field :source_rule_condition, 'string'
    field :timestamp, 'string'
    field :trace_id, 'string'
    field :url, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
