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

  class ShadowIgUserCollaborativeMedia < AdObject

    field :caption, 'string'
    field :comments_count, 'int'
    field :id, 'string'
    field :like_count, 'int'
    field :media_product_type, 'string'
    field :media_type, 'string'
    field :media_url, 'string'
    field :permalink, 'string'
    field :reposts_count, 'int'
    field :saved_count, 'int'
    field :shares_count, 'int'
    field :thumbnail_url, 'string'
    field :timestamp, 'datetime'
    field :total_comments_count, 'int'
    field :total_like_count, 'int'
    field :total_views_count, 'int'
    field :username, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
