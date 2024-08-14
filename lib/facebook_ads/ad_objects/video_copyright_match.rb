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

  class VideoCopyrightMatch < AdObject
    ACTION = [
      "BLOCK",
      "CLAIM_AD_EARNINGS",
      "MANUAL_REVIEW",
      "MONITOR",
      "REQUEST_TAKEDOWN",
    ]

    ACTION_REASON = [
      "ARTICLE_17_PREFLAGGING",
      "ARTIST_OBJECTION",
      "OBJECTIONABLE_CONTENT",
      "PREMIUM_MUSIC_VIDEO",
      "PRERELEASE_CONTENT",
      "PRODUCT_PARAMETERS",
      "RESTRICTED_CONTENT",
      "UNAUTHORIZED_COMMERCIAL_USE",
    ]

    MATCH_CONTENT_TYPE = [
      "AUDIO_ONLY",
      "VIDEO_AND_AUDIO",
      "VIDEO_ONLY",
    ]


    field :created_date, 'datetime'
    field :id, 'string'
    field :last_modified_user, 'User'
    field :match_data, { list: 'object' }
    field :match_status, 'string'
    field :notes, 'string'
    field :permalink, 'string'
    has_no_post
    has_no_delete

  end
end
