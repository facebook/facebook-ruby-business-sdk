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

  class AudioRelease < AdObject

    field :album_title, 'string'
    field :asset_availability_status, { list: 'hash' }
    field :audio_availability_status, 'string'
    field :audio_release_image_uri, 'string'
    field :created_time, 'datetime'
    field :displayed_artist, 'string'
    field :ean, 'string'
    field :genre, 'string'
    field :grid, 'string'
    field :id, 'string'
    field :isrc, 'string'
    field :label_name, 'string'
    field :original_release_date, 'datetime'
    field :parental_warning_type, 'string'
    field :proprietary_id, 'string'
    field :upc, 'string'
    has_no_post
    has_no_delete

  end
end
