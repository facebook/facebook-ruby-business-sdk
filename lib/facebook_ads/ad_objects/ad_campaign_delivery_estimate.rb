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

  class AdCampaignDeliveryEstimate < AdObject
    OPTIMIZATION_GOAL = [
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
      "MESSAGING_APPOINTMENT_CONVERSION",
      "MESSAGING_PURCHASE_CONVERSION",
      "NONE",
      "OFFSITE_CONVERSIONS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "QUALITY_CALL",
      "QUALITY_LEAD",
      "REACH",
      "REMINDERS_SET",
      "SUBSCRIBERS",
      "THRUPLAY",
      "VALUE",
      "VISIT_INSTAGRAM_PROFILE",
    ]


    field :daily_outcomes_curve, { list: 'OutcomePredictionPoint' }
    field :estimate_dau, 'int'
    field :estimate_mau_lower_bound, 'int'
    field :estimate_mau_upper_bound, 'int'
    field :estimate_ready, 'bool'
    field :targeting_optimization_types, { list: 'hash' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
