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

  class PageSavedFilter < AdObject

    field :display_name, 'string'
    field :filters, { list: 'object' }
    field :id, 'string'
    field :page_id, 'string'
    field :section, 'string'
    field :time_created, 'int'
    field :time_updated, 'int'
    has_no_post
    has_no_delete

  end
end
