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

  class VideoCopyrightRule < AdObject
    SOURCE = [
      "MATCH_SETTINGS_DIALOG",
      "RULES_SELECTOR",
      "RULES_TAB",
    ]


    field :condition_groups, { list: 'VideoCopyrightConditionGroup' }
    field :copyrights, { list: 'string' }
    field :created_date, 'datetime'
    field :creator, 'User'
    field :id, 'string'
    field :is_in_migration, 'bool'
    field :name, 'string'
    has_no_post
    has_no_delete

  end
end
