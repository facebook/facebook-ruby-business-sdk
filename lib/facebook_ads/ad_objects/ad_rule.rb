# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
      "AM_AUTO_APPLY_WIDGET",
      "AM_EDITOR_CARD",
      "AM_INFO_CARD",
      "AM_NAME_CELL_DROPDOWN",
      "AM_PERFORMANCE_SUMMARY",
      "AM_RULE_LANDING_PAGE_BANNER",
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
