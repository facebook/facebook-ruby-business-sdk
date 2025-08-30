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

  class AgencyClientDeclaration < AdObject

    field :agency_representing_client, 'int'
    field :client_based_in_france, 'int'
    field :client_city, 'string'
    field :client_country_code, 'string'
    field :client_email_address, 'string'
    field :client_name, 'string'
    field :client_postal_code, 'string'
    field :client_province, 'string'
    field :client_street, 'string'
    field :client_street2, 'string'
    field :has_written_mandate_from_advertiser, 'int'
    field :is_client_paying_invoices, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
