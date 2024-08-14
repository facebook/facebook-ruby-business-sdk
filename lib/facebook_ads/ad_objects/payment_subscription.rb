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

  class PaymentSubscription < AdObject

    field :amount, 'string'
    field :app_param_data, 'string'
    field :application, 'Application'
    field :billing_period, 'string'
    field :canceled_reason, 'string'
    field :created_time, 'datetime'
    field :currency, 'string'
    field :id, 'string'
    field :last_payment, 'PaymentEnginePayment'
    field :next_bill_time, 'datetime'
    field :next_period_amount, 'string'
    field :next_period_currency, 'string'
    field :next_period_product, 'string'
    field :payment_status, 'string'
    field :pending_cancel, 'bool'
    field :period_start_time, 'datetime'
    field :product, 'string'
    field :status, 'string'
    field :test, 'int'
    field :trial_amount, 'string'
    field :trial_currency, 'string'
    field :trial_expiry_time, 'datetime'
    field :updated_time, 'datetime'
    field :user, 'User'
    has_no_post
    has_no_delete

  end
end
