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

  class ReachFrequencyEstimatesPlacementBreakdown < AdObject

    field :android, { list: 'double' }
    field :audience_network, { list: 'double' }
    field :desktop, { list: 'double' }
    field :facebook_search, { list: 'double' }
    field :fb_reels, { list: 'double' }
    field :fb_reels_overlay, { list: 'double' }
    field :ig_android, { list: 'double' }
    field :ig_ios, { list: 'double' }
    field :ig_other, { list: 'double' }
    field :ig_reels, { list: 'double' }
    field :ig_story, { list: 'double' }
    field :instant_articles, { list: 'double' }
    field :instream_videos, { list: 'double' }
    field :ios, { list: 'double' }
    field :msite, { list: 'double' }
    field :suggested_videos, { list: 'double' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
