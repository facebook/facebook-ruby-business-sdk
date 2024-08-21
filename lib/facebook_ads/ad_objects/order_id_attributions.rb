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

  class OrderIdAttributions < AdObject

    field :app_id, 'string'
    field :attribution_type, 'string'
    field :attributions, { list: 'object' }
    field :conversion_device, 'string'
    field :dataset_id, 'string'
    field :holdout_status, { list: 'object' }
    field :order_id, 'string'
    field :order_timestamp, 'datetime'
    field :pixel_id, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
