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

  class AdRuleExecutionSpec < AdObject
    EXECUTION_TYPE = [
      "ADD_INTEREST_RELAXATION",
      "ADD_QUESTIONNAIRE_INTERESTS",
      "AUDIENCE_CONSOLIDATION",
      "AUDIENCE_CONSOLIDATION_ASK_FIRST",
      "CHANGE_BID",
      "CHANGE_BUDGET",
      "CHANGE_CAMPAIGN_BUDGET",
      "DCO",
      "INCREASE_RADIUS",
      "NOTIFICATION",
      "PAUSE",
      "PING_ENDPOINT",
      "REBALANCE_BUDGET",
      "ROTATE",
      "UNPAUSE",
      "UPDATE_CREATIVE",
      "UPDATE_LAX_BUDGET",
      "UPDATE_LAX_DURATION",
    ]


    field :execution_options, { list: 'AdRuleExecutionOptions' }
    field :execution_type, { enum: -> { EXECUTION_TYPE }}
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
