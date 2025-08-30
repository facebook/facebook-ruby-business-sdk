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

  class AdsImageCrops < AdObject

    field :_100x100, { list: { list: 'string' } }
    field :_100x72, { list: { list: 'string' } }
    field :_191x100, { list: { list: 'string' } }
    field :_400x150, { list: { list: 'string' } }
    field :_400x500, { list: { list: 'string' } }
    field :_600x360, { list: { list: 'string' } }
    field :_90x160, { list: { list: 'string' } }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
