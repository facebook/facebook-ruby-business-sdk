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

  class CopyrightOwnershipTransfer < AdObject

    field :assets, { list: 'object' }
    field :id, 'string'
    field :receiving_rights_holder, 'Profile'
    field :sending_rights_holder, 'Profile'
    field :status, 'string'
    field :transfer_territories, { list: 'string' }
    field :transfer_time, 'datetime'
    has_no_post
    has_no_delete

  end
end
