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

  class CommerceMerchantSettings < AdObject

    field :braintree_merchant_id, 'string'
    field :checkout_message, 'string'
    field :contact_email, 'string'
    field :cta, 'string'
    field :disable_checkout_urls, 'bool'
    field :display_name, 'string'
    field :external_merchant_id, 'string'
    field :facebook_channel, 'object'
    field :feature_eligibility, 'object'
    field :has_discount_code, 'bool'
    field :has_onsite_intent, 'bool'
    field :id, 'string'
    field :instagram_channel, 'object'
    field :merchant_alert_email, 'string'
    field :merchant_page, 'Profile'
    field :merchant_status, 'string'
    field :onsite_commerce_merchant, 'object'
    field :payment_provider, 'string'
    field :privacy_url_by_locale, 'hash'
    field :review_rejection_messages, { list: 'string' }
    field :review_rejection_reasons, { list: 'string' }
    field :review_status, 'string'
    field :supported_card_types, { list: 'string' }
    field :terms, 'string'
    field :terms_url_by_locale, 'hash'
    field :whatsapp_channel, 'object'
    has_no_post
    has_no_delete

    has_edge :acknowledge_orders do |edge|
      edge.post 'CommerceMerchantSettings' do |api|
        api.has_param :idempotency_key, 'string'
        api.has_param :orders, { list: 'hash' }
      end
    end

    has_edge :commerce_orders do |edge|
      edge.get 'CommerceOrder' do |api|
        api.has_param :filters, { list: { enum: -> { CommerceOrder::FILTERS }} }
        api.has_param :state, { list: { enum: -> { CommerceOrder::STATE }} }
        api.has_param :updated_after, 'datetime'
        api.has_param :updated_before, 'datetime'
      end
    end

    has_edge :commerce_payouts do |edge|
      edge.get 'CommercePayout' do |api|
        api.has_param :end_time, 'datetime'
        api.has_param :start_time, 'datetime'
      end
    end

    has_edge :commerce_transactions do |edge|
      edge.get 'CommerceOrderTransactionDetail' do |api|
        api.has_param :end_time, 'datetime'
        api.has_param :payout_reference_id, 'string'
        api.has_param :start_time, 'datetime'
      end
    end

    has_edge :order_management_apps do |edge|
      edge.get 'Application'
      edge.post 'CommerceMerchantSettings'
    end

    has_edge :product_catalogs do |edge|
      edge.get 'ProductCatalog'
    end

    has_edge :returns do |edge|
      edge.get do |api|
        api.has_param :end_time_created, 'datetime'
        api.has_param :merchant_return_id, 'string'
        api.has_param :start_time_created, 'datetime'
        api.has_param :statuses, { list: { enum: %w{APPROVED DISAPPROVED MERCHANT_MARKED_COMPLETED REFUNDED REQUESTED }} }
      end
    end

    has_edge :setup_status do |edge|
      edge.get 'CommerceMerchantSettingsSetupStatus'
    end

    has_edge :shipping_profiles do |edge|
      edge.get do |api|
        api.has_param :reference_id, 'string'
      end
      edge.post do |api|
        api.has_param :handling_time, 'hash'
        api.has_param :is_default_shipping_profile, 'bool'
        api.has_param :name, 'string'
        api.has_param :reference_id, 'string'
        api.has_param :shipping_destinations, { list: 'hash' }
      end
    end

    has_edge :tax_settings do |edge|
      edge.get
    end

    has_edge :whatsapp_channel do |edge|
      edge.post do |api|
        api.has_param :op, { enum: %w{ADD REMOVE }}
        api.has_param :whatsapp_business_accounts, { list: 'string' }
      end
    end

  end
end
