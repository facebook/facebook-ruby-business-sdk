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

  class AsyncSession < AdObject

    field :app, 'Application'
    field :complete_time, 'datetime'
    field :error_code, 'int'
    field :exception, 'string'
    field :id, 'string'
    field :method, 'string'
    field :name, 'string'
    field :page, 'Page'
    field :percent_completed, 'int'
    field :platform_version, 'string'
    field :result, 'string'
    field :start_time, 'datetime'
    field :status, 'string'
    field :uri, 'string'
    field :user, 'User'
    has_no_post
    has_no_delete

  end
end
