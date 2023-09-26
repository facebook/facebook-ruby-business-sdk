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

  class DynamicVideoMetadata < AdObject

    field :id, 'string'
    field :tags, { list: 'string' }
    field :url, 'string'
    field :video, 'AdVideo'
    has_no_post
    has_no_delete

  end
end
