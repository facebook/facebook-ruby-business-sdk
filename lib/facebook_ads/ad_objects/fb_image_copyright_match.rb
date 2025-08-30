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

  class FbImageCopyrightMatch < AdObject

    field :added_to_dashboard_time, 'datetime'
    field :applied_actions, { list: 'hash' }
    field :audit_log, { list: 'object' }
    field :available_ui_actions, { list: 'string' }
    field :expiration_days, 'int'
    field :generic_match_data, { list: 'object' }
    field :id, 'string'
    field :is_business_page_match, 'bool'
    field :last_modified_time, 'datetime'
    field :match_data, { list: 'object' }
    field :match_status, 'string'
    field :ownership_countries, 'VideoCopyrightGeoGate'
    field :reference_owner, 'Profile'
    field :time_to_appeal, 'int'
    has_no_post
    has_no_delete

  end
end
