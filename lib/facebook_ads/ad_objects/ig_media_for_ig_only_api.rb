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

  class IgMediaForIgOnlyApi < AdObject

    field :caption, 'string'
    field :id, 'string'
    field :is_shared_to_feed, 'bool'
    field :like_count, 'int'
    field :media_product_type, 'string'
    field :media_type, 'string'
    field :media_url, 'string'
    field :owner, 'User'
    field :permalink, 'string'
    field :shortcode, 'string'
    field :thumbnail_url, 'string'
    field :timestamp, 'datetime'
    field :username, 'string'
    has_no_post
    has_no_delete

    has_edge :children do |edge|
      edge.get
    end

  end
end
