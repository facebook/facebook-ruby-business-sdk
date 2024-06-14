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

  class AdColumnSizes < AdObject

    field :admarket_account, 'AdAccount'
    field :app_id, 'string'
    field :columns, { list: 'hash' }
    field :id, 'string'
    field :owner, 'User'
    field :page, 'string'
    field :report, 'string'
    field :tab, 'string'
    field :view, 'string'
    has_no_post
    has_no_delete

  end
end
