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

  class CpasCollaborationRequest < AdObject
    REQUESTER_AGENCY_OR_BRAND = [
      "AGENCY",
      "BRAND",
      "MERCHANT",
    ]


    field :brands, { list: 'string' }
    field :contact_email, 'string'
    field :contact_first_name, 'string'
    field :contact_last_name, 'string'
    field :id, 'string'
    field :phone_number, 'string'
    field :receiver_business, 'Business'
    field :requester_agency_or_brand, 'string'
    field :sender_client_business, 'Business'
    field :status, 'string'
    has_no_post
    has_no_delete

  end
end
