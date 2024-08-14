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

  class PrivateLiftStudyInstance < AdObject
    OPERATION = [
      "AGGREGATE",
      "CANCEL",
      "COMPUTE",
      "ID_MATCH",
      "NEXT",
      "NONE",
    ]


    field :breakdown_key, 'string'
    field :created_time, 'datetime'
    field :feature_list, { list: 'string' }
    field :id, 'string'
    field :issuer_certificate, 'string'
    field :latest_status_update_time, 'datetime'
    field :run_id, 'string'
    field :server_hostnames, { list: 'string' }
    field :server_ips, { list: 'string' }
    field :status, 'string'
    field :tier, 'string'
    has_no_delete

  end
end
