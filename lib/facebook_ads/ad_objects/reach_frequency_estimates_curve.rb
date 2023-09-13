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

  class ReachFrequencyEstimatesCurve < AdObject

    field :budget, { list: 'int' }
    field :conversion, { list: 'int' }
    field :impression, { list: 'int' }
    field :interpolated_reach, 'double'
    field :num_points, 'int'
    field :raw_impression, { list: 'int' }
    field :raw_reach, { list: 'int' }
    field :reach, { list: 'int' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
