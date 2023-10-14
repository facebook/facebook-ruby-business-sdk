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

  class ProductFeed < AdObject
    DELIMITER = [
      "AUTODETECT",
      "BAR",
      "COMMA",
      "SEMICOLON",
      "TAB",
      "TILDE",
    ]

    INGESTION_SOURCE_TYPE = [
      "primary_feed",
      "supplementary_feed",
    ]

    QUOTED_FIELDS_MODE = [
      "AUTODETECT",
      "OFF",
      "ON",
    ]

    ENCODING = [
      "AUTODETECT",
      "LATIN1",
      "UTF16BE",
      "UTF16LE",
      "UTF32BE",
      "UTF32LE",
      "UTF8",
    ]

    FEED_TYPE = [
      "AUTOMOTIVE_MODEL",
      "DESTINATION",
      "FLIGHT",
      "HOME_LISTING",
      "HOTEL",
      "HOTEL_ROOM",
      "LOCAL_INVENTORY",
      "MEDIA_TITLE",
      "OFFER",
      "PRODUCTS",
      "TRANSACTABLE_ITEMS",
      "VEHICLES",
      "VEHICLE_OFFER",
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

    OVERRIDE_TYPE = [
      "BATCH_API_LANGUAGE_OR_COUNTRY",
      "CATALOG_SEGMENT_CUSTOMIZE_DEFAULT",
      "COUNTRY",
      "LANGUAGE",
      "LANGUAGE_AND_COUNTRY",
      "LOCAL",
      "SMART_PIXEL_LANGUAGE_OR_COUNTRY",
    ]


    field :country, 'string'
    field :created_time, 'datetime'
    field :default_currency, 'string'
    field :deletion_enabled, 'bool'
    field :delimiter, { enum: -> { DELIMITER }}
    field :encoding, 'string'
    field :file_name, 'string'
    field :id, 'string'
    field :ingestion_source_type, { enum: -> { INGESTION_SOURCE_TYPE }}
    field :item_sub_type, 'string'
    field :latest_upload, 'ProductFeedUpload'
    field :migrated_from_feed_id, 'string'
    field :name, 'string'
    field :override_type, 'string'
    field :primary_feeds, { list: 'string' }
    field :product_count, 'int'
    field :quoted_fields_mode, { enum: -> { QUOTED_FIELDS_MODE }}
    field :schedule, 'ProductFeedSchedule'
    field :supplementary_feeds, { list: 'string' }
    field :update_schedule, 'ProductFeedSchedule'
    field :feed_type, { enum: -> { FEED_TYPE }}
    field :override_value, 'string'
    field :primary_feed_ids, { list: 'string' }
    field :rules, { list: 'string' }
    field :selected_override_fields, { list: 'string' }

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

    has_edge :rules do |edge|
      edge.get 'ProductFeedRule'
      edge.post 'ProductFeedRule' do |api|
        api.has_param :attribute, 'string'
        api.has_param :params, 'hash'
        api.has_param :rule_type, { enum: -> { ProductFeedRule::RULE_TYPE }}
      end
    end

    has_edge :supplementary_feed_assocs do |edge|
      edge.post do |api|
        api.has_param :assoc_data, { list: 'hash' }
      end
    end

    has_edge :upload_schedules do |edge|
      edge.get 'ProductFeedSchedule'
      edge.post 'ProductFeed' do |api|
        api.has_param :upload_schedule, 'string'
      end
    end

    has_edge :uploads do |edge|
      edge.get 'ProductFeedUpload'
      edge.post 'ProductFeedUpload' do |api|
        api.has_param :fbe_external_business_id, 'string'
        api.has_param :file, 'file'
        api.has_param :password, 'string'
        api.has_param :update_only, 'bool'
        api.has_param :url, 'string'
        api.has_param :username, 'string'
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
