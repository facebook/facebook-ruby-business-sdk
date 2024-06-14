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

  class WearableDevicePublicKey < AdObject

    field :base64_encoded_public_key, 'string'
    field :creation_time_on_device, 'datetime'
    field :device_uuid, 'string'
    field :id, 'string'
    field :key_type, 'string'
    field :owner_id, 'string'
    field :product_use_case, 'string'
    field :version, 'string'
    has_no_post
    has_no_delete

  end
end
