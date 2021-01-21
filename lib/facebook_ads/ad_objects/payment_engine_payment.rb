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

  class PaymentEnginePayment < AdObject
    REASON = [
      "BANNED_USER",
      "DENIED_REFUND",
      "GRANTED_REPLACEMENT_ITEM",
    ]


    field :actions, { list: 'object' }
    field :application, 'Application'
    field :country, 'string'
    field :created_time, 'datetime'
    field :disputes, { list: 'object' }
    field :fraud_status, 'string'
    field :fulfillment_status, 'string'
    field :id, 'string'
    field :is_from_ad, 'bool'
    field :is_from_page_post, 'bool'
    field :items, { list: 'object' }
    field :payout_foreign_exchange_rate, 'double'
    field :phone_support_eligible, 'bool'
    field :refundable_amount, 'CurrencyAmount'
    field :request_id, 'string'
    field :tax, 'string'
    field :tax_country, 'string'
    field :test, 'int'
    field :user, 'User'
    has_no_post
    has_no_delete

    has_edge :dispute do |edge|
      edge.post 'PaymentEnginePayment' do |api|
        api.has_param :reason, { enum: -> { PaymentEnginePayment::REASON }}
      end
    end

    has_edge :refunds do |edge|
      edge.post 'PaymentEnginePayment' do |api|
        api.has_param :amount, 'double'
        api.has_param :currency, 'string'
        api.has_param :reason, { enum: -> { PaymentEnginePayment::REASON }}
      end
    end

  end
end
