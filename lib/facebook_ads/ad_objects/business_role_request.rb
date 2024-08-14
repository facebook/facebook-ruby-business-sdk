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

  class BusinessRoleRequest < AdObject
    ROLE = [
      "ADMIN",
      "ADS_RIGHTS_REVIEWER",
      "DEFAULT",
      "DEVELOPER",
      "EMPLOYEE",
      "FINANCE_ANALYST",
      "FINANCE_EDIT",
      "FINANCE_EDITOR",
      "FINANCE_VIEW",
      "MANAGE",
      "PARTNER_CENTER_ADMIN",
      "PARTNER_CENTER_ANALYST",
      "PARTNER_CENTER_EDUCATION",
      "PARTNER_CENTER_MARKETING",
      "PARTNER_CENTER_OPERATIONS",
    ]


    field :created_by, 'object'
    field :created_time, 'datetime'
    field :email, 'string'
    field :expiration_time, 'datetime'
    field :expiry_time, 'datetime'
    field :finance_role, 'string'
    field :id, 'string'
    field :invite_link, 'string'
    field :ip_role, 'string'
    field :owner, 'Business'
    field :role, 'string'
    field :status, 'string'
    field :updated_by, 'object'
    field :updated_time, 'datetime'

  end
end
