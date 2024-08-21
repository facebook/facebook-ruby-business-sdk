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

  class GeoGatingPolicy < AdObject

    field :after_schedule, 'string'
    field :exclude_country, { list: 'string' }
    field :id, 'string'
    field :include_country, { list: 'string' }
    field :name, 'string'
    field :valid_from, 'datetime'
    field :valid_until, 'datetime'
    has_no_post
    has_no_delete

  end
end
