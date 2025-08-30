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

  class AdSavedReport < AdObject

    field :app_owner, 'Application'
    field :breakdowns, { list: 'string' }
    field :builtin_column_set, 'string'
    field :creation_source, 'string'
    field :date_interval, 'object'
    field :date_preset, 'string'
    field :format_version, 'int'
    field :id, 'string'
    field :insights_section, 'object'
    field :is_shared_unread, 'bool'
    field :level, 'string'
    field :name, 'string'
    field :normalized_filter, { list: 'string' }
    field :sort, { list: 'object' }
    field :user_attribution_windows, { list: 'string' }
    field :user_columns, { list: 'string' }
    field :user_filter, { list: 'string' }
    field :user_owner, 'User'
    has_no_post
    has_no_delete

  end
end
