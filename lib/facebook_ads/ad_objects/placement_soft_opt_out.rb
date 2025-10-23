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

  class PlacementSoftOptOut < AdObject

    field :audience_network_positions, { list: 'string' }
    field :facebook_positions, { list: 'string' }
    field :instagram_positions, { list: 'string' }
    field :messenger_positions, { list: 'string' }
    field :oculus_positions, { list: 'string' }
    field :threads_positions, { list: 'string' }
    field :whatsapp_positions, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
