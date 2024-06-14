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

  class DynamicArMetadata < AdObject

    field :anchor_point, { list: 'double' }
    field :container_effect_enum, 'int'
    field :effect_icon_url, 'string'
    field :effect_id, 'string'
    field :id, 'string'
    field :platforms, { list: 'string' }
    field :scale_factor, { list: 'double' }
    field :shadow_texture_url, 'string'
    field :source_url, 'string'
    field :state, 'string'
    field :tags, { list: 'string' }
    field :variant_picker_url, 'string'
    has_no_post
    has_no_delete

  end
end
