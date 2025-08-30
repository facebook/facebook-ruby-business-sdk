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

  class Placement < AdObject
    DEVICE_PLATFORMS = [
      "desktop",
      "mobile",
    ]

    EFFECTIVE_DEVICE_PLATFORMS = [
      "desktop",
      "mobile",
    ]


    field :audience_network_positions, { list: 'string' }
    field :device_platforms, { list: { enum: -> { DEVICE_PLATFORMS }} }
    field :effective_audience_network_positions, { list: 'string' }
    field :effective_device_platforms, { list: { enum: -> { EFFECTIVE_DEVICE_PLATFORMS }} }
    field :effective_facebook_positions, { list: 'string' }
    field :effective_instagram_positions, { list: 'string' }
    field :effective_messenger_positions, { list: 'string' }
    field :effective_oculus_positions, { list: 'string' }
    field :effective_publisher_platforms, { list: 'string' }
    field :effective_threads_positions, { list: 'string' }
    field :effective_whatsapp_positions, { list: 'string' }
    field :facebook_positions, { list: 'string' }
    field :instagram_positions, { list: 'string' }
    field :messenger_positions, { list: 'string' }
    field :oculus_positions, { list: 'string' }
    field :publisher_platforms, { list: 'string' }
    field :threads_positions, { list: 'string' }
    field :whatsapp_positions, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
