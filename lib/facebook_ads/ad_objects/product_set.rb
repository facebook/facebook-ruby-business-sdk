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

  class ProductSet < AdObject

    field :auto_creation_url, 'string'
    field :filter, 'string'
    field :id, 'string'
    field :latest_metadata, 'ProductSetMetadata'
    field :live_metadata, 'ProductSetMetadata'
    field :name, 'string'
    field :ordering_info, { list: 'int' }
    field :product_catalog, 'ProductCatalog'
    field :product_count, 'int'
    field :retailer_id, 'string'
    field :metadata, 'hash'
    field :publish_to_shops, { list: 'hash' }

    has_edge :automotive_models do |edge|
      edge.get 'AutomotiveModel' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :destinations do |edge|
      edge.get 'Destination' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :flights do |edge|
      edge.get 'Flight' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :home_listings do |edge|
      edge.get 'HomeListing' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :hotels do |edge|
      edge.get 'Hotel' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :media_titles do |edge|
      edge.get 'MediaTitle' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :products do |edge|
      edge.get 'ProductItem' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :error_priority, { enum: -> { ProductItem::ERROR_PRIORITY }}
        api.has_param :error_type, { enum: -> { ProductItem::ERROR_TYPE }}
        api.has_param :filter, 'object'
      end
    end

    has_edge :vehicle_offers do |edge|
      edge.get 'VehicleOffer' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :vehicles do |edge|
      edge.get 'Vehicle' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

  end
end
