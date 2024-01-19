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

  class HasLeadAccess < AdObject

    field :app_has_leads_permission, 'bool'
    field :can_access_lead, 'bool'
    field :enabled_lead_access_manager, 'bool'
    field :failure_reason, 'string'
    field :failure_resolution, 'string'
    field :is_page_admin, 'bool'
    field :page_id, 'string'
    field :user_has_leads_permission, 'bool'
    field :user_id, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
