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

  class AdRuleHistory < AdObject
    ACTION = [
      "BUDGET_NOT_REDISTRIBUTED",
      "CHANGED_BID",
      "CHANGED_BUDGET",
      "EMAIL",
      "ENABLE_ADVANTAGE_PLUS_CREATIVE",
      "ENABLE_ADVANTAGE_PLUS_PLACEMENTS",
      "ENABLE_AUTOFLOW",
      "ENABLE_SEMANTIC_BASED_AUDIENCE_EXPANSION",
      "ENDPOINT_PINGED",
      "ERROR",
      "FACEBOOK_NOTIFICATION_SENT",
      "MESSAGE_SENT",
      "NOT_CHANGED",
      "PAUSED",
      "UNPAUSED",
    ]


    field :evaluation_spec, 'AdRuleEvaluationSpec'
    field :exception_code, 'int'
    field :exception_message, 'string'
    field :execution_spec, 'AdRuleExecutionSpec'
    field :is_manual, 'bool'
    field :results, { list: 'AdRuleHistoryResult' }
    field :schedule_spec, 'AdRuleScheduleSpec'
    field :timestamp, 'datetime'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
