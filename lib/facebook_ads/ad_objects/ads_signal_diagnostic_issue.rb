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

  class AdsSignalDiagnosticIssue < AdObject

    field :data_source_id, 'AdsPixel'
    field :data_source_type, 'string'
    field :diagnostic_type, 'string'
    field :event_name, 'string'
    field :traffic_anomaly_drop_percentage, 'double'
    field :traffic_anomaly_drop_timestamp, 'datetime'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
