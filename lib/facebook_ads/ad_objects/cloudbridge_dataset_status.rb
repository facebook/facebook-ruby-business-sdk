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

  class CloudbridgeDatasetStatus < AdObject

    field :app_redacted_event, { list: 'string' }
    field :app_sensitive_params, { list: 'map<string, list<string>>' }
    field :app_unverified_event, { list: 'string' }
    field :has_app_associated, 'bool'
    field :is_app_prohibited, 'bool'
    field :is_dataset, 'bool'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
