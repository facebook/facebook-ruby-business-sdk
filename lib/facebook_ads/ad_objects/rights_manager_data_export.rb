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

  class RightsManagerDataExport < AdObject

    field :download_uri, 'string'
    field :export_scope, 'string'
    field :id, 'string'
    field :name, 'string'
    field :record_type, 'string'
    field :time_range_end, 'datetime'
    field :time_range_start, 'datetime'
    has_no_post
    has_no_delete

  end
end
