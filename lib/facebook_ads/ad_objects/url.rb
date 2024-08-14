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

  class Url < AdObject
    SCOPES = [
      "NEWS_TAB",
      "NEWS_TAB_DEV_ENV",
    ]


    field :engagement, 'object'
    field :id, 'string'
    field :og_object, 'object'
    field :ownership_permissions, 'object'
    field :scopes, 'object'
    has_no_delete

  end
end
