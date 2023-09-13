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

  class ExtendedCreditInvoiceGroup < AdObject

    field :auto_enroll, 'bool'
    field :bill_to_address, 'CrmAddress'
    field :customer_po_number, 'string'
    field :email, 'object'
    field :emails, { list: 'string' }
    field :id, 'string'
    field :liable_address, 'CrmAddress'
    field :name, 'string'
    field :sold_to_address, 'CrmAddress'

    has_edge :ad_accounts do |edge|
      edge.delete do |api|
        api.has_param :ad_account_id, 'string'
      end
      edge.get 'AdAccount'
      edge.post 'AdAccount' do |api|
        api.has_param :ad_account_id, 'string'
      end
    end

  end
end
