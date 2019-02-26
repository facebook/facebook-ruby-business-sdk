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
      "commerce",
      "destinations",
      "flights",
      "home_listings",
      "hotels",
      "vehicles",
    ]

    PERMITTED_ROLES = [
      "ADMIN",
      "ADVERTISER",
    ]

    PERMITTED_TASKS = [
      "ADMIN",
      "ADVERTISER",
    ]

    STANDARD = [
      "google",
    ]

    ITEM_TYPE = [
      "AUTO",
      "AUTOMOTIVE_MODEL",
      "AUTO_MARKET",
      "DESTINATION",
      "FLIGHT",
      "GEO_BASED_ITEM",
      "HOME_LISTING",
      "HOME_SERVICE_PROVIDER",
      "HOME_SERVICE_REVIEW",
      "HOTEL",
      "HOTEL_ROOM",
      "MEDIA_TITLE",
      "OTHER_TEST_DYNAMIC_ITEM",
      "PRODUCT_GROUP",
      "PRODUCT_ITEM",
      "STORE_PRODUCT_ITEM",
      "TEST_DYNAMIC_ITEM",
      "VEHICLE",
      "VEHICLE_OFFER",
    ]

    ROLE = [
      "ADMIN",
      "ADVERTISER",
    ]


    field :business, 'Business'
    field :cpas_parent_catalog_settings, 'CpasParentCatalogSettings'
    field :da_display_settings, 'ProductCatalogImageSettings'
    field :default_image_url, 'string'
    field :fallback_image_url, { list: 'string' }
    field :feed_count, 'int'
    field :flight_catalog_settings, 'FlightCatalogSettings'
    field :id, 'string'
    field :name, 'string'
    field :product_count, 'int'
    field :qualified_product_count, 'int'
    field :vertical, 'string'
    field :destination_catalog_settings, 'hash'

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
      edge.post 'ProductCatalog' do |api|
        api.has_param :business, 'string'
        api.has_param :permitted_roles, { list: { enum: -> { ProductCatalog::PERMITTED_ROLES }} }
        api.has_param :permitted_tasks, { list: { enum: -> { ProductCatalog::PERMITTED_TASKS }} }
      end
    end

    has_edge :automotive_models do |edge|
      edge.get 'AutomotiveModel' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :batch do |edge|
      edge.post 'ProductCatalog' do |api|
        api.has_param :requests, { list: 'hash' }
        api.has_param :allow_upsert, 'bool'
      end
    end

    has_edge :bundle_folders do |edge|
      edge.get 'DynamicItemDisplayBundleFolder'
      edge.post 'DynamicItemDisplayBundleFolder' do |api|
        api.has_param :bundles, { list: 'string' }
        api.has_param :name, 'string'
      end
    end

    has_edge :bundles do |edge|
      edge.get 'DynamicItemDisplayBundle'
      edge.post 'DynamicItemDisplayBundle' do |api|
        api.has_param :additional_urls, 'hash'
        api.has_param :description, 'string'
        api.has_param :name, 'string'
        api.has_param :product_set, 'string'
        api.has_param :text_tokens, 'hash'
        api.has_param :url, 'string'
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

    has_edge :da_event_samples do |edge|
      edge.get 'ProductDaEventSamplesBatch' do |api|
        api.has_param :source_id, 'string'
        api.has_param :event, { enum: -> { ProductDaEventSamplesBatch::EVENT }}
        api.has_param :aggregation_type, { enum: -> { ProductDaEventSamplesBatch::AGGREGATION_TYPE }}
      end
    end

    has_edge :destinations do |edge|
      edge.get 'Destination' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
      edge.post 'Destination' do |api|
        api.has_param :destination_id, 'string'
        api.has_param :images, { list: 'object' }
        api.has_param :types, 'string'
        api.has_param :url, 'string'
        api.has_param :name, 'string'
        api.has_param :address, 'object'
        api.has_param :currency, 'string'
        api.has_param :price, 'int'
        api.has_param :description, 'string'
      end
    end

    has_edge :event_stats do |edge|
      edge.get 'ProductEventStat' do |api|
        api.has_param :breakdowns, { list: { enum: -> { ProductEventStat::BREAKDOWNS }} }
      end
    end

    has_edge :external_event_sources do |edge|
      edge.delete do |api|
        api.has_param :external_event_sources, { list: 'string' }
      end
      edge.get 'ExternalEventSource'
      edge.post 'ProductCatalog' do |api|
        api.has_param :external_event_sources, { list: 'string' }
      end
    end

    has_edge :flights do |edge|
      edge.get 'Flight' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
      edge.post 'Flight' do |api|
        api.has_param :images, { list: 'object' }
        api.has_param :origin_airport, 'string'
        api.has_param :destination_airport, 'string'
        api.has_param :description, 'string'
        api.has_param :url, 'string'
        api.has_param :currency, 'string'
        api.has_param :price, 'int'
      end
    end

    has_edge :home_listings do |edge|
      edge.get 'HomeListing' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
      edge.post 'HomeListing' do |api|
        api.has_param :home_listing_id, 'string'
        api.has_param :address, 'object'
        api.has_param :availability, 'string'
        api.has_param :images, { list: 'object' }
        api.has_param :name, 'string'
        api.has_param :currency, 'string'
        api.has_param :price, 'double'
        api.has_param :url, 'string'
        api.has_param :year_built, 'int'
        api.has_param :description, 'string'
        api.has_param :listing_type, 'string'
        api.has_param :num_baths, 'double'
        api.has_param :num_beds, 'double'
        api.has_param :num_units, 'double'
        api.has_param :property_type, 'string'
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
        api.has_param :url, 'string'
        api.has_param :username, 'string'
        api.has_param :update_only, 'bool'
      end
    end

    has_edge :hotels do |edge|
      edge.get 'Hotel' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
      edge.post 'Hotel' do |api|
        api.has_param :hotel_id, 'string'
        api.has_param :address, 'object'
        api.has_param :brand, 'string'
        api.has_param :description, 'string'
        api.has_param :name, 'string'
        api.has_param :url, 'string'
        api.has_param :images, { list: 'object' }
        api.has_param :currency, 'string'
        api.has_param :base_price, 'int'
        api.has_param :applinks, 'object'
        api.has_param :phone, 'string'
        api.has_param :star_rating, 'double'
        api.has_param :guest_ratings, { list: 'object' }
      end
    end

    has_edge :items_batch do |edge|
      edge.post 'ProductCatalog' do |api|
        api.has_param :requests, 'hash'
        api.has_param :item_type, { enum: -> { ProductCatalog::ITEM_TYPE }}
        api.has_param :allow_upsert, 'bool'
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
        api.has_param :url, 'string'
        api.has_param :username, 'string'
        api.has_param :update_only, 'bool'
      end
    end

    has_edge :product_feeds do |edge|
      edge.get 'ProductFeed'
      edge.post 'ProductFeed' do |api|
        api.has_param :default_currency, 'string'
        api.has_param :delimiter, { enum: -> { ProductFeed::DELIMITER }}
        api.has_param :encoding, { enum: -> { ProductFeed::ENCODING }}
        api.has_param :name, 'string'
        api.has_param :quoted_fields_mode, { enum: -> { ProductFeed::QUOTED_FIELDS_MODE }}
        api.has_param :schedule, 'string'
        api.has_param :update_schedule, 'string'
        api.has_param :country, 'string'
        api.has_param :deletion_enabled, 'bool'
        api.has_param :feed_type, { enum: -> { ProductFeed::FEED_TYPE }}
        api.has_param :file_name, 'string'
        api.has_param :rules, { list: 'string' }
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
        api.has_param :parent_id, 'string'
        api.has_param :ancestor_id, 'string'
        api.has_param :has_children, 'bool'
        api.has_param :retailer_id, 'string'
      end
      edge.post 'ProductSet' do |api|
        api.has_param :filter, 'object'
        api.has_param :name, 'string'
      end
    end

    has_edge :product_sets_batch do |edge|
      edge.get 'ProductCatalogProductSetsBatch' do |api|
        api.has_param :handle, 'string'
      end
      edge.post 'ProductCatalog' do |api|
        api.has_param :file, 'file'
        api.has_param :password, 'string'
        api.has_param :standard, { enum: -> { ProductCatalog::STANDARD }}
        api.has_param :url, 'string'
        api.has_param :username, 'string'
        api.has_param :update_only, 'bool'
      end
    end

    has_edge :products do |edge|
      edge.get 'ProductItem' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :return_only_approved_products, 'bool'
        api.has_param :filter, 'object'
      end
      edge.post 'ProductItem' do |api|
        api.has_param :retailer_id, 'string'
        api.has_param :retailer_product_group_id, 'string'
        api.has_param :availability, { enum: -> { ProductItem::AVAILABILITY }}
        api.has_param :currency, 'string'
        api.has_param :condition, { enum: -> { ProductItem::CONDITION }}
        api.has_param :description, 'string'
        api.has_param :image_url, 'string'
        api.has_param :name, 'string'
        api.has_param :price, 'int'
        api.has_param :product_type, 'string'
        api.has_param :url, 'string'
        api.has_param :visibility, { enum: -> { ProductItem::VISIBILITY }}
        api.has_param :additional_image_urls, { list: 'string' }
        api.has_param :additional_variant_attributes, 'hash'
        api.has_param :brand, 'string'
        api.has_param :category, 'string'
        api.has_param :checkout_url, 'string'
        api.has_param :color, 'string'
        api.has_param :custom_data, 'hash'
        api.has_param :custom_label_0, 'string'
        api.has_param :custom_label_1, 'string'
        api.has_param :custom_label_2, 'string'
        api.has_param :custom_label_3, 'string'
        api.has_param :custom_label_4, 'string'
        api.has_param :expiration_date, 'string'
        api.has_param :gender, { enum: -> { ProductItem::GENDER }}
        api.has_param :gtin, 'string'
        api.has_param :inventory, 'int'
        api.has_param :manufacturer_part_number, 'string'
        api.has_param :mobile_link, 'string'
        api.has_param :material, 'string'
        api.has_param :offer_price_amount, 'int'
        api.has_param :offer_price_end_date, 'datetime'
        api.has_param :offer_price_start_date, 'datetime'
        api.has_param :ordering_index, 'int'
        api.has_param :pattern, 'string'
        api.has_param :sale_price, 'int'
        api.has_param :sale_price_end_date, 'datetime'
        api.has_param :sale_price_start_date, 'datetime'
        api.has_param :short_description, 'string'
        api.has_param :size, 'string'
        api.has_param :start_date, 'string'
        api.has_param :ios_url, 'string'
        api.has_param :ios_app_store_id, 'int'
        api.has_param :ios_app_name, 'string'
        api.has_param :iphone_url, 'string'
        api.has_param :iphone_app_store_id, 'int'
        api.has_param :iphone_app_name, 'string'
        api.has_param :ipad_url, 'string'
        api.has_param :ipad_app_store_id, 'int'
        api.has_param :ipad_app_name, 'string'
        api.has_param :android_url, 'string'
        api.has_param :android_package, 'string'
        api.has_param :android_class, 'string'
        api.has_param :android_app_name, 'string'
        api.has_param :windows_phone_url, 'string'
        api.has_param :windows_phone_app_id, 'string'
        api.has_param :windows_phone_app_name, 'string'
      end
    end

    has_edge :userpermissions do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
        api.has_param :email, 'string'
        api.has_param :business, 'string'
      end
      edge.get 'ProductCatalogUserPermissions' do |api|
        api.has_param :business, 'string'
        api.has_param :user, 'int'
      end
      edge.post 'ProductCatalog' do |api|
        api.has_param :user, 'int'
        api.has_param :email, 'string'
        api.has_param :role, { enum: -> { ProductCatalog::ROLE }}
        api.has_param :business, 'string'
      end
    end

    has_edge :vehicles do |edge|
      edge.get 'Vehicle' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
      edge.post 'Vehicle' do |api|
        api.has_param :applinks, 'object'
        api.has_param :body_style, { enum: -> { Vehicle::BODY_STYLE }}
        api.has_param :description, 'string'
        api.has_param :exterior_color, 'string'
        api.has_param :make, 'string'
        api.has_param :mileage, 'hash'
        api.has_param :model, 'string'
        api.has_param :state_of_vehicle, { enum: -> { Vehicle::STATE_OF_VEHICLE }}
        api.has_param :vin, 'string'
        api.has_param :url, 'string'
        api.has_param :vehicle_id, 'string'
        api.has_param :year, 'int'
        api.has_param :images, { list: 'object' }
        api.has_param :address, 'hash'
        api.has_param :currency, 'string'
        api.has_param :price, 'int'
        api.has_param :title, 'string'
        api.has_param :transmission, { enum: -> { Vehicle::TRANSMISSION }}
        api.has_param :drivetrain, { enum: -> { Vehicle::DRIVETRAIN }}
        api.has_param :fuel_type, { enum: -> { Vehicle::FUEL_TYPE }}
        api.has_param :trim, 'string'
        api.has_param :interior_color, 'string'
        api.has_param :condition, { enum: -> { Vehicle::CONDITION }}
        api.has_param :date_first_on_lot, 'string'
        api.has_param :availability, { enum: -> { Vehicle::AVAILABILITY }}
        api.has_param :dealer_id, 'string'
        api.has_param :dealer_name, 'string'
        api.has_param :dealer_phone, 'string'
        api.has_param :vehicle_type, { enum: -> { Vehicle::VEHICLE_TYPE }}
      end
    end

    has_edge :videos do |edge|
      edge.post 'AdVideo' do |api|
        api.has_param :title, 'string'
        api.has_param :source, 'string'
        api.has_param :unpublished_content_type, { enum: -> { AdVideo::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :time_since_original_post, 'int'
        api.has_param :file_url, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :waterfall_id, 'string'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :thumb, 'file'
        api.has_param :spherical, 'bool'
        api.has_param :original_projection_type, { enum: -> { AdVideo::ORIGINAL_PROJECTION_TYPE }}
        api.has_param :initial_heading, 'int'
        api.has_param :initial_pitch, 'int'
        api.has_param :fov, 'int'
        api.has_param :original_fov, 'int'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :front_z_rotation, 'double'
        api.has_param :guide_enabled, 'bool'
        api.has_param :guide, { list: { list: 'int' } }
        api.has_param :audio_story_wave_animation_handle, 'string'
        api.has_param :manual_privacy, 'bool'
        api.has_param :is_explicit_share, 'bool'
        api.has_param :adaptive_type, 'string'
        api.has_param :animated_effect_id, 'int'
        api.has_param :asked_fun_fact_prompt_id, 'int'
        api.has_param :composer_entry_picker, 'string'
        api.has_param :composer_entry_point, 'string'
        api.has_param :composer_entry_time, 'int'
        api.has_param :composer_session_events_log, 'string'
        api.has_param :composer_source_surface, 'string'
        api.has_param :composer_type, 'string'
        api.has_param :formatting, { enum: -> { AdVideo::FORMATTING }}
        api.has_param :fun_fact_prompt_id, 'int'
        api.has_param :fun_fact_toastee_id, 'int'
        api.has_param :is_group_linking_post, 'bool'
        api.has_param :has_nickname, 'bool'
        api.has_param :holiday_card, 'string'
        api.has_param :instant_game_entry_point_data, 'string'
        api.has_param :is_boost_intended, 'bool'
        api.has_param :location_source_id, 'string'
        api.has_param :description, 'string'
        api.has_param :offer_like_post_id, 'int'
        api.has_param :publish_event_id, 'int'
        api.has_param :react_mode_metadata, 'string'
        api.has_param :sales_promo_id, 'int'
        api.has_param :text_format_metadata, 'string'
        api.has_param :throwback_camera_roll_media, 'string'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :application_id, 'string'
        api.has_param :upload_phase, { enum: -> { AdVideo::UPLOAD_PHASE }}
        api.has_param :file_size, 'int'
        api.has_param :start_offset, 'int'
        api.has_param :end_offset, 'int'
        api.has_param :video_file_chunk, 'string'
        api.has_param :fbuploader_video_file_chunk, 'string'
        api.has_param :upload_session_id, 'string'
        api.has_param :is_voice_clip, 'bool'
        api.has_param :attribution_app_id, 'string'
        api.has_param :content_category, { enum: -> { AdVideo::CONTENT_CATEGORY }}
        api.has_param :embeddable, 'bool'
        api.has_param :slideshow_spec, 'hash'
        api.has_param :upload_setting_properties, 'string'
        api.has_param :transcode_setting_properties, 'string'
        api.has_param :container_type, { enum: -> { AdVideo::CONTAINER_TYPE }}
        api.has_param :referenced_sticker_id, 'string'
        api.has_param :replace_video_id, 'string'
        api.has_param :swap_mode, { enum: -> { AdVideo::SWAP_MODE }}
      end
    end

  end
end
