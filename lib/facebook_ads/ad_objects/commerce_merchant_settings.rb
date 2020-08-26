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
    CTA = [
      "CONTACT_MERCHANT",
      "OFFSITE_LINK",
    ]

    MERCHANT_STATUS = [
      "ENABLED",
      "EXTERNALLY_DISABLED",
    ]


    field :braintree_merchant_id, 'string'
    field :checkout_message, 'string'
    field :contact_email, 'string'
    field :cta, 'string'
    field :disable_checkout_urls, 'bool'
    field :display_name, 'string'
    field :facebook_channel, 'object'
    field :has_discount_code, 'bool'
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
    has_no_delete

    has_edge :facebook_channel do |edge|
      edge.post 'CommerceMerchantSettings' do |api|
        api.has_param :pages, { list: 'string' }
      end
    end

    has_edge :instagram_channel do |edge|
      edge.delete
      edge.post 'CommerceMerchantSettings' do |api|
        api.has_param :instagram_business_accounts, { list: 'string' }
        api.has_param :instagram_users, { list: 'string' }
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
