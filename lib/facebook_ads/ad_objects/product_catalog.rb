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

  class ProductCatalog < AdObject
    VERTICAL = [
      "adoptable_pets",
      "bookable",
      "commerce",
      "destinations",
      "flights",
      "home_listings",
      "hotels",
      "jobs",
      "local_delivery_shipping_profiles",
      "local_service_businesses",
      "offer_items",
      "offline_commerce",
      "ticketed_experiences",
      "transactable_items",
      "vehicles",
    ]

    PERMITTED_ROLES = [
      "ADMIN",
      "ADVERTISER",
    ]

    PERMITTED_TASKS = [
      "ADVERTISE",
      "MANAGE",
      "MANAGE_AR",
    ]

    TASKS = [
      "ADVERTISE",
      "MANAGE",
      "MANAGE_AR",
    ]

    STANDARD = [
      "google",
    ]

    ITEM_SUB_TYPE = [
      "APPLIANCES",
      "BABY_FEEDING",
      "BABY_TRANSPORT",
      "BEAUTY",
      "BEDDING",
      "CAMERAS",
      "CELL_PHONES_AND_SMART_WATCHES",
      "CLEANING_SUPPLIES",
      "CLOTHING",
      "CLOTHING_ACCESSORIES",
      "COMPUTERS_AND_TABLETS",
      "DIAPERING_AND_POTTY_TRAINING",
      "ELECTRONICS_ACCESSORIES",
      "FURNITURE",
      "HEALTH",
      "HOME_GOODS",
      "JEWELRY",
      "NURSERY",
      "PRINTERS_AND_SCANNERS",
      "PROJECTORS",
      "SHOES_AND_FOOTWEAR",
      "SOFTWARE",
      "TOYS",
      "TVS_AND_MONITORS",
      "VIDEO_GAME_CONSOLES_AND_VIDEO_GAMES",
      "WATCHES",
    ]


    field :business, 'Business'
    field :commerce_merchant_settings, 'CommerceMerchantSettings'
    field :da_display_settings, 'ProductCatalogImageSettings'
    field :default_image_url, 'string'
    field :fallback_image_url, { list: 'string' }
    field :feed_count, 'int'
    field :id, 'string'
    field :is_catalog_segment, 'bool'
    field :name, 'string'
    field :product_count, 'int'
    field :store_catalog_settings, 'StoreCatalogSettings'
    field :vertical, 'string'
    field :catalog_segment_filter, 'object'
    field :catalog_segment_product_set_id, 'string'
    field :destination_catalog_settings, 'hash'
    field :flight_catalog_settings, 'hash'
    field :parent_catalog_id, 'string'
    field :partner_integration, 'hash'

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
      edge.post 'ProductCatalog' do |api|
        api.has_param :business, 'string'
        api.has_param :permitted_roles, { list: { enum: -> { ProductCatalog::PERMITTED_ROLES }} }
        api.has_param :permitted_tasks, { list: { enum: -> { ProductCatalog::PERMITTED_TASKS }} }
        api.has_param :utm_settings, 'hash'
      end
    end

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'ProductCatalog' do |api|
        api.has_param :tasks, { list: { enum: -> { ProductCatalog::TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :auto_markets do |edge|
      edge.get
    end

    has_edge :automotive_models do |edge|
      edge.get 'AutomotiveModel' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
      edge.post 'AutomotiveModel' do |api|
        api.has_param :automotive_model_id, 'string'
        api.has_param :body_style, { enum: -> { AutomotiveModel::BODY_STYLE }}
        api.has_param :currency, 'string'
        api.has_param :description, 'string'
        api.has_param :images, { list: 'object' }
        api.has_param :make, 'string'
        api.has_param :model, 'string'
        api.has_param :price, 'int'
        api.has_param :title, 'string'
        api.has_param :url, 'string'
        api.has_param :year, 'int'
      end
    end

    has_edge :autos do |edge|
      edge.get
    end

    has_edge :batch do |edge|
      edge.post 'ProductCatalog' do |api|
        api.has_param :allow_upsert, 'bool'
        api.has_param :fbe_external_business_id, 'string'
        api.has_param :requests, { list: 'hash' }
      end
    end

    has_edge :categories do |edge|
      edge.get 'ProductCatalogCategory' do |api|
        api.has_param :categorization_criteria, { enum: -> { ProductCatalogCategory::CATEGORIZATION_CRITERIA }}
        api.has_param :filter, 'object'
      end
      edge.post 'ProductCatalogCategory' do |api|
        api.has_param :data, { list: 'hash' }
      end
    end

    has_edge :check_batch_request_status do |edge|
      edge.get 'CheckBatchRequestStatus' do |api|
        api.has_param :handle, 'string'
        api.has_param :load_ids_of_invalid_requests, 'bool'
      end
    end

    has_edge :collaborative_ads_share_settings do |edge|
      edge.get 'CollaborativeAdsShareSettings'
    end

    has_edge :destinations do |edge|
      edge.get 'Destination' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :diagnostics do |edge|
      edge.get 'ProductCatalogDiagnosticGroup' do |api|
        api.has_param :affected_channels, { list: { enum: -> { ProductCatalogDiagnosticGroup::AFFECTED_CHANNELS }} }
        api.has_param :affected_features, { list: { enum: -> { ProductCatalogDiagnosticGroup::AFFECTED_FEATURES }} }
        api.has_param :severities, { list: { enum: -> { ProductCatalogDiagnosticGroup::SEVERITIES }} }
        api.has_param :types, { list: { enum: -> { ProductCatalogDiagnosticGroup::TYPES }} }
      end
    end

    has_edge :event_stats do |edge|
      edge.get 'ProductEventStat' do |api|
        api.has_param :breakdowns, { list: { enum: -> { ProductEventStat::BREAKDOWNS }} }
      end
    end

    has_edge :external_event_sources do |edge|
      edge.delete do |api|
        api.has_param :external_event_sources, 'object'
      end
      edge.get 'ExternalEventSource'
      edge.post 'ProductCatalog' do |api|
        api.has_param :external_event_sources, 'object'
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
      edge.post 'HomeListing' do |api|
        api.has_param :address, 'object'
        api.has_param :availability, 'string'
        api.has_param :currency, 'string'
        api.has_param :description, 'string'
        api.has_param :home_listing_id, 'string'
        api.has_param :images, { list: 'object' }
        api.has_param :listing_type, 'string'
        api.has_param :name, 'string'
        api.has_param :num_baths, 'double'
        api.has_param :num_beds, 'double'
        api.has_param :num_units, 'double'
        api.has_param :price, 'double'
        api.has_param :property_type, 'string'
        api.has_param :url, 'string'
        api.has_param :year_built, 'int'
      end
    end

    has_edge :hotel_rooms_batch do |edge|
      edge.get 'ProductCatalogHotelRoomsBatch' do |api|
        api.has_param :handle, 'string'
      end
      edge.post 'ProductCatalog' do |api|
        api.has_param :file, 'file'
        api.has_param :password, 'string'
        api.has_param :standard, { enum: -> { ProductCatalog::STANDARD }}
        api.has_param :update_only, 'bool'
        api.has_param :url, 'string'
        api.has_param :username, 'string'
      end
    end

    has_edge :hotels do |edge|
      edge.get 'Hotel' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
      edge.post 'Hotel' do |api|
        api.has_param :address, 'object'
        api.has_param :applinks, 'object'
        api.has_param :base_price, 'int'
        api.has_param :brand, 'string'
        api.has_param :currency, 'string'
        api.has_param :description, 'string'
        api.has_param :guest_ratings, { list: 'object' }
        api.has_param :hotel_id, 'string'
        api.has_param :images, { list: 'object' }
        api.has_param :name, 'string'
        api.has_param :phone, 'string'
        api.has_param :star_rating, 'double'
        api.has_param :url, 'string'
      end
    end

    has_edge :items_batch do |edge|
      edge.post 'ProductCatalog' do |api|
        api.has_param :allow_upsert, 'bool'
        api.has_param :item_sub_type, { enum: -> { ProductCatalog::ITEM_SUB_TYPE }}
        api.has_param :item_type, 'string'
        api.has_param :requests, 'hash'
      end
    end

    has_edge :localized_items_batch do |edge|
      edge.post 'ProductCatalog' do |api|
        api.has_param :allow_upsert, 'bool'
        api.has_param :item_type, 'string'
        api.has_param :requests, 'hash'
      end
    end

    has_edge :media_titles do |edge|
      edge.get do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :pricing_variables_batch do |edge|
      edge.get 'ProductCatalogPricingVariablesBatch' do |api|
        api.has_param :handle, 'string'
      end
      edge.post 'ProductCatalog' do |api|
        api.has_param :file, 'file'
        api.has_param :password, 'string'
        api.has_param :standard, { enum: -> { ProductCatalog::STANDARD }}
        api.has_param :update_only, 'bool'
        api.has_param :url, 'string'
        api.has_param :username, 'string'
      end
    end

    has_edge :product_feeds do |edge|
      edge.get 'ProductFeed'
      edge.post 'ProductFeed' do |api|
        api.has_param :country, 'string'
        api.has_param :default_currency, 'string'
        api.has_param :deletion_enabled, 'bool'
        api.has_param :delimiter, { enum: -> { ProductFeed::DELIMITER }}
        api.has_param :encoding, { enum: -> { ProductFeed::ENCODING }}
        api.has_param :feed_type, { enum: -> { ProductFeed::FEED_TYPE }}
        api.has_param :file_name, 'string'
        api.has_param :item_sub_type, { enum: -> { ProductFeed::ITEM_SUB_TYPE }}
        api.has_param :migrated_from_feed_id, 'string'
        api.has_param :name, 'string'
        api.has_param :override_type, { enum: -> { ProductFeed::OVERRIDE_TYPE }}
        api.has_param :override_value, 'string'
        api.has_param :quoted_fields_mode, { enum: -> { ProductFeed::QUOTED_FIELDS_MODE }}
        api.has_param :rules, { list: 'string' }
        api.has_param :schedule, 'string'
        api.has_param :selected_override_fields, { list: 'string' }
        api.has_param :update_schedule, 'string'
      end
    end

    has_edge :product_groups do |edge|
      edge.get 'ProductGroup'
      edge.post 'ProductGroup' do |api|
        api.has_param :retailer_id, 'string'
        api.has_param :variants, { list: 'object' }
      end
    end

    has_edge :product_sets do |edge|
      edge.get 'ProductSet' do |api|
        api.has_param :ancestor_id, 'string'
        api.has_param :has_children, 'bool'
        api.has_param :parent_id, 'string'
        api.has_param :retailer_id, 'string'
      end
      edge.post 'ProductSet' do |api|
        api.has_param :filter, 'object'
        api.has_param :metadata, 'hash'
        api.has_param :name, 'string'
        api.has_param :retailer_id, 'string'
      end
    end

    has_edge :product_sets_batch do |edge|
      edge.get 'ProductCatalogProductSetsBatch' do |api|
        api.has_param :handle, 'string'
      end
    end

    has_edge :products do |edge|
      edge.get 'ProductItem' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
        api.has_param :return_only_approved_products, 'bool'
      end
      edge.post 'ProductItem' do |api|
        api.has_param :additional_image_urls, { list: 'string' }
        api.has_param :additional_uploaded_image_ids, { list: 'string' }
        api.has_param :additional_variant_attributes, 'hash'
        api.has_param :android_app_name, 'string'
        api.has_param :android_class, 'string'
        api.has_param :android_package, 'string'
        api.has_param :android_url, 'string'
        api.has_param :availability, { enum: -> { ProductItem::AVAILABILITY }}
        api.has_param :brand, 'string'
        api.has_param :category, 'string'
        api.has_param :category_specific_fields, 'hash'
        api.has_param :checkout_url, 'string'
        api.has_param :color, 'string'
        api.has_param :commerce_tax_category, { enum: -> { ProductItem::COMMERCE_TAX_CATEGORY }}
        api.has_param :condition, { enum: -> { ProductItem::CONDITION }}
        api.has_param :currency, 'string'
        api.has_param :custom_data, 'hash'
        api.has_param :custom_label_0, 'string'
        api.has_param :custom_label_1, 'string'
        api.has_param :custom_label_2, 'string'
        api.has_param :custom_label_3, 'string'
        api.has_param :custom_label_4, 'string'
        api.has_param :description, 'string'
        api.has_param :expiration_date, 'string'
        api.has_param :fb_product_category, 'string'
        api.has_param :gender, { enum: -> { ProductItem::GENDER }}
        api.has_param :gtin, 'string'
        api.has_param :image_url, 'string'
        api.has_param :inventory, 'int'
        api.has_param :ios_app_name, 'string'
        api.has_param :ios_app_store_id, 'int'
        api.has_param :ios_url, 'string'
        api.has_param :ipad_app_name, 'string'
        api.has_param :ipad_app_store_id, 'int'
        api.has_param :ipad_url, 'string'
        api.has_param :iphone_app_name, 'string'
        api.has_param :iphone_app_store_id, 'int'
        api.has_param :iphone_url, 'string'
        api.has_param :launch_date, 'string'
        api.has_param :manufacturer_part_number, 'string'
        api.has_param :marked_for_product_launch, { enum: -> { ProductItem::MARKED_FOR_PRODUCT_LAUNCH }}
        api.has_param :material, 'string'
        api.has_param :mobile_link, 'string'
        api.has_param :name, 'string'
        api.has_param :offer_price_amount, 'int'
        api.has_param :offer_price_end_date, 'datetime'
        api.has_param :offer_price_start_date, 'datetime'
        api.has_param :ordering_index, 'int'
        api.has_param :pattern, 'string'
        api.has_param :price, 'int'
        api.has_param :product_type, 'string'
        api.has_param :quantity_to_sell_on_facebook, 'int'
        api.has_param :retailer_id, 'string'
        api.has_param :retailer_product_group_id, 'string'
        api.has_param :return_policy_days, 'int'
        api.has_param :sale_price, 'int'
        api.has_param :sale_price_end_date, 'datetime'
        api.has_param :sale_price_start_date, 'datetime'
        api.has_param :short_description, 'string'
        api.has_param :size, 'string'
        api.has_param :start_date, 'string'
        api.has_param :url, 'string'
        api.has_param :visibility, { enum: -> { ProductItem::VISIBILITY }}
        api.has_param :windows_phone_app_id, 'string'
        api.has_param :windows_phone_app_name, 'string'
        api.has_param :windows_phone_url, 'string'
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
      edge.post 'Vehicle' do |api|
        api.has_param :address, 'hash'
        api.has_param :applinks, 'object'
        api.has_param :availability, { enum: -> { Vehicle::AVAILABILITY }}
        api.has_param :body_style, { enum: -> { Vehicle::BODY_STYLE }}
        api.has_param :condition, { enum: -> { Vehicle::CONDITION }}
        api.has_param :currency, 'string'
        api.has_param :date_first_on_lot, 'string'
        api.has_param :dealer_id, 'string'
        api.has_param :dealer_name, 'string'
        api.has_param :dealer_phone, 'string'
        api.has_param :description, 'string'
        api.has_param :drivetrain, { enum: -> { Vehicle::DRIVETRAIN }}
        api.has_param :exterior_color, 'string'
        api.has_param :fb_page_id, 'string'
        api.has_param :fuel_type, { enum: -> { Vehicle::FUEL_TYPE }}
        api.has_param :images, { list: 'object' }
        api.has_param :interior_color, 'string'
        api.has_param :make, 'string'
        api.has_param :mileage, 'hash'
        api.has_param :model, 'string'
        api.has_param :price, 'int'
        api.has_param :state_of_vehicle, { enum: -> { Vehicle::STATE_OF_VEHICLE }}
        api.has_param :title, 'string'
        api.has_param :transmission, { enum: -> { Vehicle::TRANSMISSION }}
        api.has_param :trim, 'string'
        api.has_param :url, 'string'
        api.has_param :vehicle_id, 'string'
        api.has_param :vehicle_type, { enum: -> { Vehicle::VEHICLE_TYPE }}
        api.has_param :vin, 'string'
        api.has_param :year, 'int'
      end
    end

  end
end
