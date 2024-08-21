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

  class AdAccountUserPermissions < AdObject

    field :business, 'Business'
    field :business_persona, 'object'
    field :created_by, 'User'
    field :created_time, 'datetime'
    field :email, 'string'
    field :status, 'string'
    field :tasks, { list: 'string' }
    field :updated_by, 'User'
    field :updated_time, 'datetime'
    field :user, 'User'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
