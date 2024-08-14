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

  class SavedAudience < AdObject

    field :account, 'AdAccount'
    field :approximate_count_lower_bound, 'int'
    field :approximate_count_upper_bound, 'int'
    field :delete_time, 'int'
    field :description, 'string'
    field :id, 'string'
    field :name, 'string'
    field :operation_status, 'CustomAudienceStatus'
    field :owner_business, 'Business'
    field :page_deletion_marked_delete_time, 'int'
    field :permission_for_actions, 'AudiencePermissionForActions'
    field :run_status, 'string'
    field :sentence_lines, { list: 'string' }
    field :targeting, 'Targeting'
    field :time_created, 'datetime'
    field :time_updated, 'datetime'
    has_no_post
    has_no_delete

  end
end
