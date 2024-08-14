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

  class ThirdPartyPartnerPanelRequest < AdObject
    STATUS = [
      "CREATED",
      "FAILURE",
      "IN_PROGRESS",
      "SCHEDULED",
      "SUCCESS",
    ]

    STUDY_TYPE = [
      "BRAND_LIFT",
      "PANEL_SALES_ATTRIBUTION",
      "REACH",
    ]


    field :adentities_ids, { list: 'string' }
    field :country, 'string'
    field :created_time, 'datetime'
    field :description, 'string'
    field :id, 'string'
    field :modified_time, 'datetime'
    field :owner_instance_id, 'string'
    field :owner_panel_id, 'string'
    field :owner_panel_name, 'string'
    field :status, { enum: -> { STATUS }}
    field :study_end_time, 'datetime'
    field :study_start_time, 'datetime'
    field :study_type, { enum: -> { STUDY_TYPE }}
    has_no_post
    has_no_delete

  end
end
