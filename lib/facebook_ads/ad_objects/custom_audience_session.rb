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

  class CustomAudienceSession < AdObject

    field :end_time, 'string'
    field :num_invalid_entries, 'string'
    field :num_matched, 'string'
    field :num_received, 'string'
    field :progress, 'string'
    field :session_id, 'string'
    field :stage, 'string'
    field :start_time, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
