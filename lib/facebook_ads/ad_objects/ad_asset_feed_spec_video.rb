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

  class AdAssetFeedSpecVideo < AdObject

    field :adlabels, { list: 'AdAssetFeedSpecAssetLabel' }
    field :caption_ids, { list: 'string' }
    field :thumbnail_hash, 'string'
    field :thumbnail_url, 'string'
    field :url_tags, 'string'
    field :video_id, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
