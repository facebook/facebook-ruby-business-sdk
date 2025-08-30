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

  class AdLimitsEnforcementData < AdObject

    field :ad_limit_on_page, 'int'
    field :ad_limit_on_scope, 'int'
    field :ad_volume_on_page, 'int'
    field :ad_volume_on_scope, 'int'
    field :is_admin, 'bool'
    field :page_name, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
