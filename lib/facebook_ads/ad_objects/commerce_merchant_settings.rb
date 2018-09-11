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
    field :disable_checkout_urls, 'bool'
    field :has_discount_code, 'bool'
    field :id, 'string'
    field :merchant_alert_email, 'string'
    field :merchant_page, 'Profile'
    field :merchant_status, 'string'
    field :payment_provider, 'string'
    field :privacy_url_by_locale, { list: 'object' }
    field :review_rejection_messages, { list: 'string' }
    field :review_rejection_reasons, { list: 'string' }
    field :review_status, 'string'
    field :supported_card_types, { list: 'string' }
    field :terms, 'string'
    field :terms_url_by_locale, { list: 'object' }
    has_no_post
    has_no_delete

    has_edge :commerce_merchant_applications do |edge|
      edge.get
    end

    has_edge :commerce_offers do |edge|
      edge.get
    end

    has_edge :orders do |edge|
      edge.get do |api|
        api.has_param :offset, 'int'
        api.has_param :limit, 'int'
        api.has_param :start_time_created, 'datetime'
        api.has_param :end_time_created, 'datetime'
        api.has_param :states, { list: 'int' }
      end
    end

    has_edge :product_catalogs do |edge|
      edge.get 'ProductCatalog'
    end

    has_edge :product_item_metrics do |edge|
      edge.get do |api|
        api.has_param :offset, 'int'
        api.has_param :size, 'int'
        api.has_param :start_time_created, 'datetime'
        api.has_param :end_time_created, 'datetime'
      end
    end

    has_edge :setup_status do |edge|
      edge.get 'CommerceMerchantSettingsSetupStatus'
    end

  end
end
