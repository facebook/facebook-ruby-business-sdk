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

  class PaymentSubscription < AdObject

    field :amount, 'string'
    field :app_param_data, 'string'
    field :application, 'Profile'
    field :billing_period, 'string'
    field :canceled_reason, 'string'
    field :created_time, 'datetime'
    field :currency, 'string'
    field :id, 'string'
    field :last_payment, 'string'
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
    field :user, 'Profile'
    has_no_post
    has_no_delete

  end
end
