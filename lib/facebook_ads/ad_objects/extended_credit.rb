# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
    field :last_payment_time, 'datetime'
    field :legal_entity_name, 'string'
    field :liable_biz_name, 'string'
    field :max_balance, 'CurrencyAmount'
    field :online_max_balance, 'CurrencyAmount'
    field :owner_business, 'Business'
    field :owner_business_name, 'string'
    field :partition_from, 'string'
    field :receiving_credit_allocation_config, 'ExtendedCreditAllocationConfig'
    field :send_bill_to_biz_name, 'string'
    has_no_post
    has_no_delete

    has_edge :extended_credit_emails do |edge|
      edge.get
    end

    has_edge :extended_credit_invoice_groups do |edge|
      edge.get 'ExtendedCreditInvoiceGroup'
      edge.post 'ExtendedCreditInvoiceGroup' do |api|
        api.has_param :name, 'string'
        api.has_param :emails, { list: 'string' }
      end
    end

    has_edge :owning_credit_allocation_configs do |edge|
      edge.get 'ExtendedCreditAllocationConfig' do |api|
        api.has_param :receiving_business_id, 'string'
      end
      edge.post 'ExtendedCreditAllocationConfig' do |api|
        api.has_param :receiving_business_id, 'string'
        api.has_param :amount, 'object'
        api.has_param :liability_type, { enum: -> { ExtendedCreditAllocationConfig::LIABILITY_TYPE }}
        api.has_param :send_bill_to, { enum: -> { ExtendedCreditAllocationConfig::SEND_BILL_TO }}
        api.has_param :partition_type, { enum: -> { ExtendedCreditAllocationConfig::PARTITION_TYPE }}
      end
    end

  end
end
