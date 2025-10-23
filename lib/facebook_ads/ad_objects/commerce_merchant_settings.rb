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

  class CommerceMerchantSettings < AdObject

    field :checkout_config, 'string'
    field :checkout_message, 'string'
    field :contact_email, 'string'
    field :cta, 'string'
    field :display_name, 'string'
    field :facebook_channel, 'object'
    field :id, 'string'
    field :instagram_channel, 'object'
    field :korea_ftc_listing, 'string'
    field :merchant_page, 'Profile'
    field :merchant_status, 'string'
    field :offsite_iab_checkout_enabled_countries, { list: 'string' }
    field :payment_provider, 'string'
    field :privacy_policy_localized, 'string'
    field :return_policy_localized, 'string'
    field :shops_ads_setup, 'object'
    field :terms, 'string'
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
      edge.post do |api|
        api.has_param :handling_time, 'hash'
        api.has_param :is_default, 'bool'
        api.has_param :is_default_shipping_profile, 'bool'
        api.has_param :name, 'string'
        api.has_param :reference_id, 'string'
        api.has_param :shipping_destinations, { list: 'hash' }
      end
    end

    has_edge :shops do |edge|
      edge.get 'Shop'
    end

    has_edge :tax_settings do |edge|
      edge.get
    end

  end
end
