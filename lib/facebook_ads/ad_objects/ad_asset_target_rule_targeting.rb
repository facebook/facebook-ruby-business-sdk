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

  class AdAssetTargetRuleTargeting < AdObject
    DEVICE_PLATFORMS = [
      "desktop",
      "mobile",
    ]


    field :age_max, 'int'
    field :age_min, 'int'
    field :audience_network_positions, { list: 'string' }
    field :device_platforms, { list: { enum: -> { DEVICE_PLATFORMS }} }
    field :facebook_positions, { list: 'string' }
    field :geo_locations, 'TargetingGeoLocation'
    field :instagram_positions, { list: 'string' }
    field :publisher_platforms, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
