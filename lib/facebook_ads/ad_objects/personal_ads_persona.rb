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

  class PersonalAdsPersona < AdObject

    field :email, 'string'
    field :first_name, 'string'
    field :id, 'string'
    field :last_name, 'string'
    field :pending_email, 'string'
    has_no_post
    has_no_delete

  end
end
