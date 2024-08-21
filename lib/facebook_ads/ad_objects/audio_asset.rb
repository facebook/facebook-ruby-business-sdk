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

  class AudioAsset < AdObject

    field :all_ddex_featured_artists, 'string'
    field :all_ddex_main_artists, 'string'
    field :audio_cluster_id, 'string'
    field :cover_image_source, 'string'
    field :display_artist, 'string'
    field :download_hd_url, 'string'
    field :download_sd_url, 'string'
    field :duration_in_ms, 'int'
    field :freeform_genre, 'string'
    field :grid, 'string'
    field :id, 'string'
    field :is_test, 'bool'
    field :original_release_date, 'datetime'
    field :owner, 'Page'
    field :parental_warning_type, 'string'
    field :subtitle, 'string'
    field :title, 'string'
    field :title_with_featured_artists, 'string'
    field :upc, 'string'
    has_no_post
    has_no_delete

  end
end
