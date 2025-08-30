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

  class ReachFrequencyCurveUpperConfidenceRange < AdObject

    field :impression_upper, { list: 'int' }
    field :num_points, 'int'
    field :reach, { list: 'int' }
    field :reach_upper, { list: 'int' }
    field :uniq_video_views_2s_upper, { list: 'int' }
    field :video_views_2s_upper, { list: 'int' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
