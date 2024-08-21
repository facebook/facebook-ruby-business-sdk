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

  class SplitTestConfig < AdObject

    field :budget, 'int'
    field :early_winner_declaration_enabled, 'bool'
    field :end_time, 'datetime'
    field :splits, { list: 'int' }
    field :start_time, 'datetime'
    field :test_variable, 'string'
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
