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

  class LeadgenForm < AdObject
    STATUS = [
      "ACTIVE",
      "ARCHIVED",
      "DELETED",
      "DRAFT",
    ]

    LOCALE = [
      "AR_AR",
      "CS_CZ",
      "DA_DK",
      "DE_DE",
      "EN_GB",
      "EN_US",
      "ES_ES",
      "ES_LA",
      "FI_FI",
      "FR_FR",
      "HE_IL",
      "HI_IN",
      "HU_HU",
      "ID_ID",
      "IT_IT",
      "JA_JP",
      "KO_KR",
      "NB_NO",
      "NL_NL",
      "PL_PL",
      "PT_BR",
      "PT_PT",
      "RO_RO",
      "RU_RU",
      "SV_SE",
      "TH_TH",
      "TR_TR",
      "VI_VN",
      "ZH_CN",
      "ZH_HK",
      "ZH_TW",
    ]


    field :allow_organic_lead, 'bool'
    field :block_display_for_non_targeted_viewer, 'bool'
    field :context_card, 'object'
    field :created_time, 'datetime'
    field :creator, 'User'
    field :creator_id, 'int'
    field :cusomized_tcpa_content, 'string'
    field :expired_leads_count, 'int'
    field :extra_details, { list: 'string' }
    field :follow_up_action_text, 'string'
    field :follow_up_action_url, 'string'
    field :id, 'string'
    field :is_optimized_for_quality, 'bool'
    field :leadgen_export_csv_url, 'string'
    field :leads_count, 'int'
    field :legal_content, 'object'
    field :locale, 'string'
    field :messenger_welcome_message, 'string'
    field :name, 'string'
    field :organic_leads_count, 'int'
    field :page, 'Page'
    field :page_id, 'string'
    field :privacy_policy_url, 'string'
    field :qualifiers, { list: 'object' }
    field :question_page_custom_headline, 'string'
    field :questions, { list: 'LeadGenQuestion' }
    field :status, 'string'
    field :tcpa_compliance, 'bool'
    field :thank_you_page, 'object'
    field :tracking_parameters, 'hash'

    has_edge :leads do |edge|
      edge.get 'Lead'
    end

    has_edge :test_leads do |edge|
      edge.get 'Lead'
      edge.post 'Lead' do |api|
        api.has_param :custom_disclaimer_responses, { list: 'object' }
        api.has_param :field_data, { list: 'object' }
      end
    end

  end
end
