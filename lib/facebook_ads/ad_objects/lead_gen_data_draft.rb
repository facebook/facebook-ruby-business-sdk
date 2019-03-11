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

  class LeadGenDataDraft < AdObject
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

    STATUS = [
      "ACTIVE",
      "ARCHIVED",
      "DELETED",
      "DRAFT",
    ]


    field :block_display_for_non_targeted_viewer, 'bool'
    field :context_card, 'object'
    field :created_time, 'datetime'
    field :creator_id, 'string'
    field :follow_up_action_url, 'string'
    field :id, 'string'
    field :is_optimized_for_quality, 'bool'
    field :legal_content, 'object'
    field :locale, 'string'
    field :name, 'string'
    field :page, 'Page'
    field :question_page_custom_headline, 'string'
    field :questions, { list: 'LeadGenDraftQuestion' }
    field :status, 'string'
    field :thank_you_page, 'object'
    field :tracking_parameters, 'hash'
    has_no_delete

  end
end
