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

  class AudioCopyright < AdObject

    field :creation_time, 'datetime'
    field :displayed_matches_count, 'int'
    field :id, 'string'
    field :in_conflict, 'bool'
    field :isrc, 'string'
    field :match_rule, 'VideoCopyrightRule'
    field :ownership_countries, { list: 'string' }
    field :reference_file_status, 'string'
    field :ridge_monitoring_status, 'string'
    field :tags, { list: 'string' }
    field :update_time, 'datetime'
    field :whitelisted_fb_users, { list: 'object' }
    field :whitelisted_ig_users, { list: 'string' }
    has_no_post
    has_no_delete

    has_edge :update_records do |edge|
      edge.get
    end

  end
end
