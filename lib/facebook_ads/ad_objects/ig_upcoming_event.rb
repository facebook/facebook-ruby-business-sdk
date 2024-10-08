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

  class IgUpcomingEvent < AdObject
    NOTIFICATION_SUBTYPES = [
      "AFTER_EVENT_1DAY",
      "AFTER_EVENT_2DAY",
      "AFTER_EVENT_3DAY",
      "AFTER_EVENT_4DAY",
      "AFTER_EVENT_5DAY",
      "AFTER_EVENT_6DAY",
      "AFTER_EVENT_7DAY",
      "BEFORE_EVENT_15MIN",
      "BEFORE_EVENT_1DAY",
      "BEFORE_EVENT_1HOUR",
      "BEFORE_EVENT_2DAY",
      "EVENT_START",
      "RESCHEDULED",
    ]

    NOTIFICATION_TARGET_TIME = [
      "EVENT_END",
      "EVENT_START",
    ]


    field :end_time, 'datetime'
    field :id, 'string'
    field :notification_subtypes, { list: 'string' }
    field :notification_target_time, 'string'
    field :start_time, 'datetime'
    field :title, 'string'
    has_no_delete

  end
end
