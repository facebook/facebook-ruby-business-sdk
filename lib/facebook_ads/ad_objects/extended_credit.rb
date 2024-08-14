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

  class ExtendedCredit < AdObject

    field :allocated_amount, 'CurrencyAmount'
    field :balance, 'CurrencyAmount'
    field :credit_available, 'CurrencyAmount'
    field :credit_type, 'string'
    field :id, 'string'
    field :is_access_revoked, 'bool'
    field :is_automated_experience, 'bool'
    field :legal_entity_name, 'string'
    field :liable_address, 'CrmAddress'
    field :liable_biz_name, 'string'
    field :max_balance, 'CurrencyAmount'
    field :online_max_balance, 'CurrencyAmount'
    field :owner_business, 'Business'
    field :owner_business_name, 'string'
    field :partition_from, 'string'
    field :receiving_credit_allocation_config, 'ExtendedCreditAllocationConfig'
    field :send_bill_to_address, 'CrmAddress'
    field :send_bill_to_biz_name, 'string'
    field :sold_to_address, 'CrmAddress'
    has_no_post
    has_no_delete

    has_edge :extended_credit_invoice_groups do |edge|
      edge.get 'ExtendedCreditInvoiceGroup'
      edge.post 'ExtendedCreditInvoiceGroup' do |api|
        api.has_param :emails, { list: 'string' }
        api.has_param :name, 'string'
      end
    end

    has_edge :owning_credit_allocation_configs do |edge|
      edge.get 'ExtendedCreditAllocationConfig' do |api|
        api.has_param :receiving_business_id, 'string'
      end
      edge.post 'ExtendedCreditAllocationConfig' do |api|
        api.has_param :amount, 'object'
        api.has_param :liability_type, { enum: -> { ExtendedCreditAllocationConfig::LIABILITY_TYPE }}
        api.has_param :partition_type, { enum: -> { ExtendedCreditAllocationConfig::PARTITION_TYPE }}
        api.has_param :receiving_business_id, 'string'
        api.has_param :send_bill_to, { enum: -> { ExtendedCreditAllocationConfig::SEND_BILL_TO }}
      end
    end

    has_edge :whatsapp_credit_sharing_and_attach do |edge|
      edge.post do |api|
        api.has_param :waba_currency, 'string'
        api.has_param :waba_id, 'string'
      end
    end

  end
end
