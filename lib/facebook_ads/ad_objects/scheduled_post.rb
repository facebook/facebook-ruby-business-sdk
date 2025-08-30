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

  class ScheduledPost < AdObject

    field :admin_creator, 'User'
    field :creation_time, 'datetime'
    field :feed_audience_description, 'string'
    field :feed_targeting, 'Targeting'
    field :id, 'string'
    field :is_post_in_good_state, 'bool'
    field :message, 'string'
    field :modified_time, 'datetime'
    field :og_action_summary, 'string'
    field :permalink_url, 'string'
    field :place, 'Place'
    field :privacy_description, 'string'
    field :scheduled_failure_notice, 'string'
    field :scheduled_publish_time, 'datetime'
    field :story_token, 'string'
    field :thumbnail, 'string'
    field :video_id, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
