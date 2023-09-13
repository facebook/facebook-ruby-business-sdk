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

  class LeadGenQuestion < AdObject

    field :conditional_questions_choices, { list: 'LeadGenConditionalQuestionsGroupChoices' }
    field :conditional_questions_group_id, 'string'
    field :dependent_conditional_questions, { list: 'LeadGenConditionalQuestionsGroupQuestions' }
    field :id, 'string'
    field :inline_context, 'string'
    field :key, 'string'
    field :label, 'string'
    field :options, { list: 'LeadGenQuestionOption' }
    field :type, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
