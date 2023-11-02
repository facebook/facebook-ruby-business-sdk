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

  class Shop < AdObject

    field :fb_sales_channel, 'object'
    field :id, 'string'
    field :ig_sales_channel, 'object'
    field :is_onsite_enabled, 'bool'
    field :shop_status, 'string'
    field :workspace, 'object'
    has_no_post
    has_no_delete

  end
end
