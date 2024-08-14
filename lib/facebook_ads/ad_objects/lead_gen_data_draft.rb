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

  class LeadGenDataDraft < AdObject

    field :block_display_for_non_targeted_viewer, 'bool'
    field :created_time, 'datetime'
    field :disqualified_end_component, 'object'
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
    field :tracking_parameters, { list: 'hash' }
    has_no_post
    has_no_delete

  end
end
