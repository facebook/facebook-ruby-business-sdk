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

  class MusicWorkCopyright < AdObject

    field :available_ui_actions, { list: 'string' }
    field :claim_status, 'string'
    field :creation_time, 'datetime'
    field :displayed_fb_matches_count, 'int'
    field :displayed_ig_matches_count, 'int'
    field :displayed_matches_count, 'int'
    field :has_rev_share_eligible_isrcs, 'bool'
    field :id, 'string'
    field :is_linking_required_to_monetize_for_manual_claim, 'bool'
    field :match_rule, 'VideoCopyrightRule'
    field :status, 'string'
    field :tags, { list: 'string' }
    field :update_time, 'datetime'
    has_no_post
    has_no_delete

  end
end
