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

  class AdAccountDefaultObjective < AdObject
    DEFAULT_OBJECTIVE_FOR_USER = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "OFFER_CLAIMS",
      "OUTCOME_APP_PROMOTION",
      "OUTCOME_AWARENESS",
      "OUTCOME_ENGAGEMENT",
      "OUTCOME_LEADS",
      "OUTCOME_SALES",
      "OUTCOME_TRAFFIC",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "REACH",
      "STORE_VISITS",
      "VIDEO_VIEWS",
      "WEBSITE_CONVERSIONS",
    ]

    OBJECTIVE_FOR_LEVEL = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "OFFER_CLAIMS",
      "OUTCOME_APP_PROMOTION",
      "OUTCOME_AWARENESS",
      "OUTCOME_ENGAGEMENT",
      "OUTCOME_LEADS",
      "OUTCOME_SALES",
      "OUTCOME_TRAFFIC",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "REACH",
      "STORE_VISITS",
      "VIDEO_VIEWS",
      "WEBSITE_CONVERSIONS",
    ]


    field :default_objective_for_user, { enum: -> { DEFAULT_OBJECTIVE_FOR_USER }}
    field :objective_for_level, { enum: -> { OBJECTIVE_FOR_LEVEL }}
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
