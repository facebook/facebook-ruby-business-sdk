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
    REQUEST_ROLE = [
      "RECEIVER",
      "SENDER",
    ]

    SOURCE = [
      "EXTERNAL",
      "INTERNAL",
      "SELF_SERVE",
    ]


    field :ad_account_id, 'string'
    field :ad_account_name, 'string'
    field :brands, { list: 'string' }
    field :catalog_segment, 'ProductCatalog'
    field :contact_email, 'string'
    field :contact_first_name, 'string'
    field :contact_last_name, 'string'
    field :creation_time, 'datetime'
    field :id, 'string'
    field :phone_number, 'string'
    field :receiver_business, 'Business'
    field :requester_agency_or_brand, 'string'
    field :seller_id, 'string'
    field :sender_business, 'Business'
    field :sender_client_business, 'Business'
    field :shop_url, 'string'
    field :source, 'string'
    field :status, 'string'
    has_no_post
    has_no_delete

  end
end
