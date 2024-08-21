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

  class OfflineConversionDataSetActivities < AdObject

    field :actor_id, 'int'
    field :actor_name, 'string'
    field :adaccount_id, 'int'
    field :adaccount_name, 'string'
    field :event_time, 'datetime'
    field :event_type, 'string'
    field :extra_data, 'string'
    field :object_id, 'int'
    field :object_name, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
