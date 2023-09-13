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

  class VideoCopyright < AdObject
    CONTENT_CATEGORY = [
      "episode",
      "movie",
      "web",
    ]

    MONITORING_TYPE = [
      "AUDIO_ONLY",
      "VIDEO_AND_AUDIO",
      "VIDEO_ONLY",
    ]


    field :content_category, 'string'
    field :copyright_content_id, 'string'
    field :creator, 'User'
    field :excluded_ownership_segments, { list: 'VideoCopyrightSegment' }
    field :id, 'string'
    field :in_conflict, 'bool'
    field :monitoring_status, 'string'
    field :monitoring_type, 'string'
    field :ownership_countries, 'VideoCopyrightGeoGate'
    field :reference_file, 'CopyrightReferenceContainer'
    field :reference_file_disabled, 'bool'
    field :reference_file_disabled_by_ops, 'bool'
    field :reference_owner_id, 'string'
    field :rule_ids, { list: 'VideoCopyrightRule' }
    field :tags, { list: 'string' }
    field :whitelisted_ids, { list: 'string' }
    has_no_delete

    has_edge :update_records do |edge|
      edge.get
    end

  end
end
