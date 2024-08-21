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

  class EventTour < AdObject

    field :description, 'string'
    field :dominant_color, 'string'
    field :end_time, 'string'
    field :id, 'string'
    field :is_past, 'bool'
    field :last_event_timestamp, 'int'
    field :name, 'string'
    field :num_events, 'int'
    field :photo, 'Photo'
    field :scheduled_publish_timestamp, 'int'
    field :start_time, 'string'
    field :ticketing_uri, 'string'
    field :video, 'AdVideo'
    has_no_post
    has_no_delete

  end
end
