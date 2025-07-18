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

  class BusinessUser < AdObject
    INVITED_USER_TYPE = [
      "FB",
      "MWA",
    ]

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

    TASKS = [
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


    field :business, 'Business'
    field :business_role_request, 'BusinessRoleRequest'
    field :email, 'string'
    field :finance_permission, 'string'
    field :first_name, 'string'
    field :id, 'string'
    field :ip_permission, 'string'
    field :last_name, 'string'
    field :marked_for_removal, 'bool'
    field :name, 'string'
    field :pending_email, 'string'
    field :role, 'string'
    field :tasks, { list: 'string' }
    field :title, 'string'
    field :two_fac_status, 'string'
    field :invited_user_type, { list: { enum: -> { INVITED_USER_TYPE }} }

    has_edge :assigned_ad_accounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :assigned_business_asset_groups do |edge|
      edge.get 'BusinessAssetGroup' do |api|
        api.has_param :contained_asset_id, 'string'
      end
    end

    has_edge :assigned_pages do |edge|
      edge.get 'Page' do |api|
        api.has_param :pages, { list: 'int' }
      end
    end

    has_edge :assigned_product_catalogs do |edge|
      edge.get 'ProductCatalog'
    end

    has_edge :assigned_whatsapp_business_accounts do |edge|
      edge.get 'WhatsAppBusinessAccount'
    end

  end
end
