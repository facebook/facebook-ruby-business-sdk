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
  # This class is auto-genereated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class LeadgenForm < AdObject

    field :allow_organic_lead, 'bool'
    field :context_card, 'object'
    field :continued_flow_request_method, 'string'
    field :created_time, 'datetime'
    field :creator, 'User'
    field :creator_id, 'int'
    field :cusomized_tcpa_content, 'string'
    field :expired_leads_count, 'int'
    field :follow_up_action_text, 'string'
    field :follow_up_action_url, 'string'
    field :id, 'string'
    field :is_continued_flow, 'bool'
    field :leadgen_export_csv_url, 'string'
    field :leads_count, 'int'
    field :legal_content, 'object'
    field :locale, 'string'
    field :messenger_welcome_message, 'string'
    field :name, 'string'
    field :organic_leads_count, 'int'
    field :page, 'object'
    field :page_id, 'string'
    field :privacy_policy_url, 'string'
    field :qualifiers, { list: 'LeadGenQualifier' }
    field :questions, { list: 'LeadGenQuestion' }
    field :status, 'string'
    field :tcpa_compliance, 'bool'
    has_no_post

    has_edge :leads do |edge|
      edge.get 'Lead'
    end

    has_edge :test_leads do |edge|
      edge.post 'LeadgenForm' do |api|
        api.has_param :custom_disclaimer_responses, { list: 'object' }
        api.has_param :field_data, { list: 'object' }
      end
    end

  end
end
