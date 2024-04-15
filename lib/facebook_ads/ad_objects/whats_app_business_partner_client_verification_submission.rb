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

  class WhatsAppBusinessPartnerClientVerificationSubmission < AdObject
    REJECTION_REASONS = [
      "ADDRESS_NOT_MATCHING",
      "LEGAL_NAME_NOT_MATCHING",
      "NONE",
      "WEBSITE_NOT_MATCHING",
    ]

    VERIFICATION_STATUS = [
      "APPROVED",
      "FAILED",
      "PENDING",
    ]


    field :client_business_id, 'string'
    field :id, 'string'
    field :rejection_reasons, { list: { enum: -> { REJECTION_REASONS }} }
    field :submitted_info, 'object'
    field :submitted_time, 'datetime'
    field :update_time, 'datetime'
    field :verification_status, { enum: -> { VERIFICATION_STATUS }}
    has_no_get
    has_no_post
    has_no_delete

  end
end
