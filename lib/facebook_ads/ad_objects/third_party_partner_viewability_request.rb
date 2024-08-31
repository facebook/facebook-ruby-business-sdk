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

  class ThirdPartyPartnerViewabilityRequest < AdObject
    METRIC = [
      "DISPLAY_EVENT",
      "IMPRESSION",
      "VIDEO_EVENT",
    ]

    PLATFORM = [
      "AUDIENCE_NETWORK",
      "FACEBOOK",
      "INSTAGRAM",
    ]

    STATUS = [
      "CREATED",
      "FAILURE",
      "IN_PROGRESS",
      "SCHEDULED",
      "SUCCESS",
    ]


    field :created_time, 'datetime'
    field :description, 'string'
    field :hour, 'datetime'
    field :id, 'string'
    field :metric, { enum: -> { METRIC }}
    field :modified_time, 'datetime'
    field :owner_instance_id, 'string'
    field :platform, { enum: -> { PLATFORM }}
    field :status, { enum: -> { STATUS }}
    field :total_file_count, 'int'
    has_no_post
    has_no_delete

  end
end
