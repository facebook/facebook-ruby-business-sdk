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

  class AdStudyCell < AdObject
    CREATION_TEMPLATE = [
      "AUTOMATIC_PLACEMENTS",
      "BRAND_AWARENESS",
      "FACEBOOK",
      "FACEBOOK_AUDIENCE_NETWORK",
      "FACEBOOK_INSTAGRAM",
      "FACEBOOK_NEWS_FEED",
      "FACEBOOK_NEWS_FEED_IN_STREAM_VIDEO",
      "HIGH_FREQUENCY",
      "INSTAGRAM",
      "IN_STREAM_VIDEO",
      "LOW_FREQUENCY",
      "MEDIUM_FREQUENCY",
      "MOBILE_OPTIMIZED_VIDEO",
      "PAGE_POST_ENGAGEMENT",
      "REACH",
      "TV_COMMERCIAL",
      "TV_FACEBOOK",
      "VIDEO_VIEW_OPTIMIZATION",
    ]


    field :ad_entities_count, 'int'
    field :control_percentage, 'double'
    field :id, 'string'
    field :name, 'string'
    field :treatment_percentage, 'double'
    has_no_delete

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :adsets do |edge|
      edge.get 'AdSet'
    end

    has_edge :campaigns do |edge|
      edge.get 'Campaign'
    end

  end
end
