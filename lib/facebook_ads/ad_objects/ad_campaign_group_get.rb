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

  class AdCampaignGroupGet < AdObject
    SPECIAL_AD_CATEGORIES = [
      "CREDIT",
      "EDUCATION",
      "ELECTIONS_POLITICS",
      "EMPLOYMENT",
      "FINANCIAL_PRODUCTS_SERVICES",
      "HOUSING",
      "ISSUES_ELECTIONS_POLITICS",
      "NONE",
      "ONLINE_GAMBLING_AND_GAMING",
      "SOCIAL_ISSUES",
    ]


    field :account_id, 'string'
    field :advantage_state_info, 'object'
    field :bid_strategy, 'string'
    field :budget_remaining, 'string'
    field :buying_type, 'string'
    field :configured_status, 'string'
    field :created_time, 'string'
    field :daily_budget, 'string'
    field :effective_status, 'string'
    field :id, 'string'
    field :lifetime_budget, 'string'
    field :name, 'string'
    field :objective, 'string'
    field :promoted_object, 'object'
    field :special_ad_categories, { list: { enum: -> { SPECIAL_AD_CATEGORIES }} }
    field :spend_cap, 'string'
    field :start_time, 'string'
    field :status, 'string'
    field :stop_time, 'string'
    field :updated_time, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
