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

  class PhotoMetadata < AdObject

    field :camera_make, 'string'
    field :camera_model, 'string'
    field :datetime_modified, 'datetime'
    field :datetime_taken, 'datetime'
    field :exposure, 'string'
    field :focal_length, 'string'
    field :fstop, 'string'
    field :iso_speed, 'int'
    field :offline_id, 'string'
    field :orientation, 'string'
    field :original_height, 'string'
    field :original_width, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
