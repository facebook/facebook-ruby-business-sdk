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

  class SystemUser < AdObject
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


    field :created_by, 'User'
    field :created_time, 'datetime'
    field :finance_permission, 'string'
    field :id, 'string'
    field :ip_permission, 'string'
    field :name, 'string'
    field :role, { enum: -> { ROLE }}
    field :system_user_id, 'int'
    has_no_post
    has_no_delete

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

  end
end
