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

  class LiveVideoInputStream < AdObject

    field :dash_ingest_url, 'string'
    field :dash_preview_url, 'string'
    field :id, 'string'
    field :is_master, 'bool'
    field :secure_stream_url, 'string'
    field :stream_health, 'object'
    field :stream_id, 'string'
    field :stream_url, 'string'
    has_no_post
    has_no_delete

  end
end
