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

  class MessageDeliveryEstimate < AdObject
    OPTIMIZATION_GOAL = [
      "ADVERTISER_SILOED_VALUE",
      "AD_RECALL_LIFT",
      "APP_INSTALLS",
      "APP_INSTALLS_AND_OFFSITE_CONVERSIONS",
      "CONVERSATIONS",
      "DERIVED_EVENTS",
      "ENGAGED_USERS",
      "EVENT_RESPONSES",
      "IMPRESSIONS",
      "IN_APP_VALUE",
      "LANDING_PAGE_VIEWS",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "MEANINGFUL_CALL_ATTEMPT",
      "MESSAGING_APPOINTMENT_CONVERSION",
      "MESSAGING_PURCHASE_CONVERSION",
      "NONE",
      "OFFSITE_CONVERSIONS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PROFILE_AND_PAGE_ENGAGEMENT",
      "PROFILE_VISIT",
      "QUALITY_CALL",
      "QUALITY_LEAD",
      "REACH",
      "REMINDERS_SET",
      "SUBSCRIBERS",
      "THRUPLAY",
      "VALUE",
      "VISIT_INSTAGRAM_PROFILE",
    ]

    PACING_TYPE = [
      "DAY_PARTING",
      "DISABLED",
      "NO_PACING",
      "PROBABILISTIC_PACING",
      "PROBABILISTIC_PACING_V2",
      "STANDARD",
    ]


    field :estimate_cost, 'double'
    field :estimate_cost_lower_bound, 'double'
    field :estimate_cost_upper_bound, 'double'
    field :estimate_coverage_lower_bound, 'int'
    field :estimate_coverage_upper_bound, 'int'
    field :estimate_delivery, 'int'
    field :estimate_delivery_lower_bound, 'int'
    field :estimate_delivery_upper_bound, 'int'
    field :estimate_status, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
