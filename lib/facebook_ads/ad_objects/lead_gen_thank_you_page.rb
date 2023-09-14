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

  class LeadGenThankYouPage < AdObject

    field :body, 'string'
    field :business_phone_number, 'string'
    field :button_text, 'string'
    field :button_type, 'string'
    field :country_code, 'string'
    field :enable_messenger, 'bool'
    field :id, 'string'
    field :lead_gen_use_case, 'string'
    field :status, 'string'
    field :title, 'string'
    field :website_url, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
