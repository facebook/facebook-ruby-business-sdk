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

  class InsightsValue < AdObject

    field :campaign_id, 'string'
    field :earning_source, 'string'
    field :end_time, 'datetime'
    field :engagement_source, 'string'
    field :message_type, 'string'
    field :messaging_channel, 'string'
    field :monetization_tool, 'string'
    field :recurring_notifications_entry_point, 'string'
    field :recurring_notifications_frequency, 'string'
    field :recurring_notifications_topic, 'string'
    field :start_time, 'datetime'
    field :value, 'object'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
