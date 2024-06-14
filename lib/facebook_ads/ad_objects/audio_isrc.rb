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

  class AudioIsrc < AdObject

    field :all_kg_featured_artists, 'string'
    field :all_kg_main_artists, 'string'
    field :artist_profile_picture_url, 'string'
    field :id, 'string'
    field :isrc, 'string'
    field :publishing_rights_data, 'object'
    field :top_searchable_artist_id, 'string'
    field :top_searchable_artist_name, 'string'
    field :top_searchable_artist_profile_pic_url, 'string'
    has_no_post
    has_no_delete

  end
end
