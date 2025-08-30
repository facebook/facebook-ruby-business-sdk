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

  class MessengerAdsPartialAutomatedStepList < AdObject

    field :fblead_form, 'LeadgenForm'
    field :first_step_id, 'string'
    field :id, 'string'
    field :page, 'Page'
    field :privacy_url, 'string'
    field :reminder_text, 'string'
    field :stop_question_message, 'string'
    has_no_post
    has_no_delete

    has_edge :steps do |edge|
      edge.get
    end

  end
end
