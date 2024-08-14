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

  class AdRule < AdObject
    STATUS = [
      "DELETED",
      "DISABLED",
      "ENABLED",
      "HAS_ISSUES",
    ]

    UI_CREATION_SOURCE = [
      "AM_ACCOUNT_OVERVIEW_RECOMMENDATIONS",
      "AM_ACTIVITY_HISTORY_TABLE",
      "AM_AD_OBJECT_NAME_CARD",
      "AM_AMFE_L3_RECOMMENDATION",
      "AM_AUTOFLOW_GUIDANCE_CARD",
      "AM_AUTO_APPLY_WIDGET",
      "AM_EDITOR_CARD",
      "AM_INFO_CARD",
      "AM_NAME_CELL_DROPDOWN",
      "AM_OPTIMIZATION_TIP_GUIDANCE_CARD",
      "AM_PERFORMANCE_SUMMARY",
      "AM_RULE_LANDING_PAGE_BANNER",
      "AM_SYD_RESOLUTION_FLOW",
      "AM_SYD_RESOLUTION_FLOW_MODAL",
      "AM_TABLE_DELIVERY_COLUMN_POPOVER",
      "AM_TABLE_TOGGLE_POPOVER",
      "AM_TOOLBAR_CREATE_RULE_DROPDOWN",
      "PE_CAMPAIGN_STRUCTURE_MENU",
      "PE_EDITOR_CARD",
      "PE_INFO_CARD",
      "PE_TOOLBAR_CREATE_RULE_DROPDOWN",
      "RULES_MANAGEMENT_PAGE_ACTION_DROPDOWN",
      "RULES_MANAGEMENT_PAGE_RULE_GROUP",
      "RULES_MANAGEMENT_PAGE_RULE_NAME",
      "RULES_MANAGEMENT_PAGE_TOP_NAV",
      "RULES_VIEW_ACTIVE_RULES_DIALOG",
      "RULE_CREATION_SUCCESS_DIALOG",
      "RULE_SYD_REDIRECT",
      "RULE_TEMPLATES_DIALOG",
    ]


    field :account_id, 'string'
    field :created_by, 'User'
    field :created_time, 'datetime'
    field :evaluation_spec, 'AdRuleEvaluationSpec'
    field :execution_spec, 'AdRuleExecutionSpec'
    field :id, 'string'
    field :name, 'string'
    field :schedule_spec, 'AdRuleScheduleSpec'
    field :status, 'string'
    field :updated_time, 'datetime'
    field :ui_creation_source, { enum: -> { UI_CREATION_SOURCE }}

    has_edge :execute do |edge|
      edge.post
    end

    has_edge :history do |edge|
      edge.get 'AdRuleHistory' do |api|
        api.has_param :action, { enum: -> { AdRuleHistory::ACTION }}
        api.has_param :hide_no_changes, 'bool'
        api.has_param :object_id, 'string'
      end
    end

    has_edge :preview do |edge|
      edge.post 'AdRule'
    end

  end
end
