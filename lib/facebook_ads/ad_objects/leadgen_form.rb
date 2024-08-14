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
      "EL_GR",
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
    field :context_card, 'LeadGenContextCard'
    field :created_time, 'datetime'
    field :creator, 'User'
    field :expired_leads_count, 'int'
    field :follow_up_action_text, 'string'
    field :follow_up_action_url, 'string'
    field :id, 'string'
    field :is_optimized_for_quality, 'bool'
    field :leads_count, 'int'
    field :legal_content, 'LeadGenLegalContent'
    field :locale, 'string'
    field :name, 'string'
    field :organic_leads_count, 'int'
    field :page, 'Page'
    field :page_id, 'string'
    field :privacy_policy_url, 'string'
    field :question_page_custom_headline, 'string'
    field :questions, { list: 'LeadGenQuestion' }
    field :status, 'string'
    field :thank_you_page, 'LeadGenThankYouPage'
    field :tracking_parameters, { list: 'KeyValue' }
    has_no_delete

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
