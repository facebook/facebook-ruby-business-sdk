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

  class Vehicle < AdObject
    IMAGE_FETCH_STATUS = [
      "DIRECT_UPLOAD",
      "FETCHED",
      "FETCH_FAILED",
      "NO_STATUS",
      "OUTDATED",
      "PARTIAL_FETCH",
    ]

    VISIBILITY = [
      "PUBLISHED",
      "STAGING",
    ]

    AVAILABILITY = [
      "AVAILABLE",
      "NOT_AVAILABLE",
      "PENDING",
    ]

    BODY_STYLE = [
      "CONVERTIBLE",
      "COUPE",
      "CROSSOVER",
      "ESTATE",
      "GRANDTOURER",
      "HATCHBACK",
      "MINIBUS",
      "MINIVAN",
      "MPV",
      "NONE",
      "OTHER",
      "PICKUP",
      "ROADSTER",
      "SALOON",
      "SEDAN",
      "SMALL_CAR",
      "SPORTSCAR",
      "SUPERCAR",
      "SUPERMINI",
      "SUV",
      "TRUCK",
      "VAN",
      "WAGON",
    ]

    CONDITION = [
      "EXCELLENT",
      "FAIR",
      "GOOD",
      "NONE",
      "OTHER",
      "POOR",
      "VERY_GOOD",
    ]

    DRIVETRAIN = [
      "AWD",
      "FOUR_WD",
      "FWD",
      "NONE",
      "OTHER",
      "RWD",
      "TWO_WD",
    ]

    FUEL_TYPE = [
      "DIESEL",
      "ELECTRIC",
      "FLEX",
      "GASOLINE",
      "HYBRID",
      "NONE",
      "OTHER",
      "PETROL",
      "PLUGIN_HYBRID",
    ]

    STATE_OF_VEHICLE = [
      "CPO",
      "NEW",
      "USED",
    ]

    TRANSMISSION = [
      "AUTOMATIC",
      "MANUAL",
      "NONE",
      "OTHER",
    ]

    VEHICLE_TYPE = [
      "BOAT",
      "CAR_TRUCK",
      "COMMERCIAL",
      "MOTORCYCLE",
      "OTHER",
      "POWERSPORT",
      "RV_CAMPER",
      "TRAILER",
    ]


    field :address, 'object'
    field :applinks, 'CatalogItemAppLinks'
    field :availability, 'string'
    field :body_style, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :condition, 'string'
    field :currency, 'string'
    field :custom_label_0, 'string'
    field :date_first_on_lot, 'string'
    field :dealer_communication_channel, 'string'
    field :dealer_email, 'string'
    field :dealer_id, 'string'
    field :dealer_name, 'string'
    field :dealer_phone, 'string'
    field :dealer_privacy_policy_url, 'string'
    field :description, 'string'
    field :drivetrain, 'string'
    field :exterior_color, 'string'
    field :fb_page_id, 'Page'
    field :features, { list: 'object' }
    field :fuel_type, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :interior_color, 'string'
    field :legal_disclosure_impressum_url, 'string'
    field :make, 'string'
    field :mileage, 'object'
    field :model, 'string'
    field :previous_currency, 'string'
    field :previous_price, 'string'
    field :price, 'string'
    field :sale_currency, 'string'
    field :sale_price, 'string'
    field :sanitized_images, { list: 'string' }
    field :state_of_vehicle, 'string'
    field :title, 'string'
    field :transmission, 'string'
    field :trim, 'string'
    field :unit_price, 'object'
    field :url, 'string'
    field :vehicle_id, 'string'
    field :vehicle_registration_plate, 'string'
    field :vehicle_specifications, { list: 'object' }
    field :vehicle_type, 'string'
    field :vin, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
    field :year, 'int'
    has_no_delete

    has_edge :augmented_realities_metadata do |edge|
      edge.get
    end

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

    has_edge :videos_metadata do |edge|
      edge.get 'DynamicVideoMetadata'
    end

  end
end
