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

  class LeadGenFormPreviewDetails < AdObject

    field :call_to_action_title, 'string'
    field :contact_information_text, 'string'
    field :creatives_overview_default_text, 'string'
    field :data_privacy_policy_setting_description, 'string'
    field :default_appointment_scheduling_inline_context, 'string'
    field :default_disqualified_end_component, 'object'
    field :default_thank_you_page, 'object'
    field :disqualified_thank_you_card_transparency_info_text, 'string'
    field :edit_text, 'string'
    field :email_inline_context_text, 'string'
    field :email_messenger_push_opt_in_disclaimer, 'string'
    field :email_messenger_push_opt_in_transparency_text, 'string'
    field :form_clarity_description_content, 'string'
    field :form_clarity_description_title, 'string'
    field :form_clarity_headline, 'string'
    field :gated_content_locked_description, 'string'
    field :gated_content_locked_headline, 'string'
    field :gated_content_unlocked_description, 'string'
    field :gated_content_unlocked_headline, 'string'
    field :how_it_works_section_headers, { list: 'hash' }
    field :next_button_text, 'string'
    field :optional_question_text, 'string'
    field :personal_info_text, 'string'
    field :phone_number_inline_context_text, 'string'
    field :privacy_policy_title_section_title_text, 'string'
    field :privacy_setting_description, 'string'
    field :products_section_headers, { list: 'hash' }
    field :qualified_thank_you_card_transparency_info_text, 'string'
    field :review_your_info_text, 'string'
    field :secure_sharing_text, 'string'
    field :slide_to_submit_text, 'string'
    field :social_proof_section_headers, { list: 'hash' }
    field :submit_button_text, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
