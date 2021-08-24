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
