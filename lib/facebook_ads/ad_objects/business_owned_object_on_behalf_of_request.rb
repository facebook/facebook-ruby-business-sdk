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

  class BusinessOwnedObjectOnBehalfOfRequest < AdObject
    STATUS = [
      "APPROVE",
      "DECLINE",
      "EXPIRED",
      "IN_PROGRESS",
      "PENDING",
      "PENDING_EMAIL_VERIFICATION",
      "PENDING_INTEGRITY_REVIEW",
    ]


    field :business_owned_object, 'string'
    field :id, 'string'
    field :receiving_business, 'Business'
    field :requesting_business, 'Business'
    field :status, 'string'
    has_no_post
    has_no_delete

  end
end
