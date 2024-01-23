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

  class ProductItem < AdObject
    AGE_GROUP = [
      "adult",
      "all ages",
      "infant",
      "kids",
      "newborn",
      "teen",
      "toddler",
    ]

    AVAILABILITY = [
      "available for order",
      "discontinued",
      "in stock",
      "mark_as_sold",
      "out of stock",
      "pending",
      "preorder",
    ]

    CONDITION = [
      "cpo",
      "new",
      "open_box_new",
      "refurbished",
      "used",
      "used_fair",
      "used_good",
      "used_like_new",
    ]

    GENDER = [
      "female",
      "male",
      "unisex",
    ]

    IMAGE_FETCH_STATUS = [
      "DIRECT_UPLOAD",
      "FETCHED",
      "FETCH_FAILED",
      "NO_STATUS",
      "OUTDATED",
      "PARTIAL_FETCH",
    ]

    REVIEW_STATUS = [
      "",
      "approved",
      "outdated",
      "pending",
      "rejected",
    ]

    SHIPPING_WEIGHT_UNIT = [
      "g",
      "kg",
      "lb",
      "oz",
    ]

    VIDEO_FETCH_STATUS = [
      "DIRECT_UPLOAD",
      "FETCHED",
      "FETCH_FAILED",
      "NO_STATUS",
      "OUTDATED",
      "PARTIAL_FETCH",
    ]

    VISIBILITY = [
      "published",
      "staging",
    ]

    COMMERCE_TAX_CATEGORY = [
      "FB_ANIMAL",
      "FB_ANIMAL_SUPP",
      "FB_APRL",
      "FB_APRL_ACCESSORIES",
      "FB_APRL_ATHL_UNIF",
      "FB_APRL_CASES",
      "FB_APRL_CLOTHING",
      "FB_APRL_COSTUME",
      "FB_APRL_CSTM",
      "FB_APRL_FORMAL",
      "FB_APRL_HANDBAG",
      "FB_APRL_JEWELRY",
      "FB_APRL_SHOE",
      "FB_APRL_SHOE_ACC",
      "FB_APRL_SWIM",
      "FB_APRL_SWIM_CHIL",
      "FB_APRL_SWIM_CVR",
      "FB_ARTS",
      "FB_ARTS_HOBBY",
      "FB_ARTS_PARTY",
      "FB_ARTS_PARTY_GIFT_CARD",
      "FB_ARTS_TICKET",
      "FB_BABY",
      "FB_BABY_BATH",
      "FB_BABY_BLANKET",
      "FB_BABY_DIAPER",
      "FB_BABY_GIFT_SET",
      "FB_BABY_HEALTH",
      "FB_BABY_NURSING",
      "FB_BABY_POTTY_TRN",
      "FB_BABY_SAFE",
      "FB_BABY_TOYS",
      "FB_BABY_TRANSPORT",
      "FB_BABY_TRANSPORT_ACC",
      "FB_BAGS",
      "FB_BAGS_BKPK",
      "FB_BAGS_BOXES",
      "FB_BAGS_BRFCS",
      "FB_BAGS_CSMT_BAG",
      "FB_BAGS_DFFL",
      "FB_BAGS_DIPR",
      "FB_BAGS_FNNY",
      "FB_BAGS_GRMT",
      "FB_BAGS_LUGG",
      "FB_BAGS_LUG_ACC",
      "FB_BAGS_MSGR",
      "FB_BAGS_TOTE",
      "FB_BAGS_TRN_CAS",
      "FB_BLDG",
      "FB_BLDG_ACC",
      "FB_BLDG_CNSMB",
      "FB_BLDG_FENCE",
      "FB_BLDG_FUEL_TNK",
      "FB_BLDG_HT_VNT",
      "FB_BLDG_LOCK",
      "FB_BLDG_MATRL",
      "FB_BLDG_PLMB",
      "FB_BLDG_PUMP",
      "FB_BLDG_PWRS",
      "FB_BLDG_STR_TANK",
      "FB_BLDG_S_ENG",
      "FB_BLDG_TL_ACC",
      "FB_BLDG_TOOL",
      "FB_BUSIND",
      "FB_BUSIND_ADVERTISING",
      "FB_BUSIND_AGRICULTURE",
      "FB_BUSIND_AUTOMATION",
      "FB_BUSIND_HEAVY_MACH",
      "FB_BUSIND_LAB",
      "FB_BUSIND_MEDICAL",
      "FB_BUSIND_RETAIL",
      "FB_BUSIND_SANITARY_CT",
      "FB_BUSIND_SIGN",
      "FB_BUSIND_STORAGE",
      "FB_BUSIND_STORAGE_ACC",
      "FB_BUSIND_WORK_GEAR",
      "FB_CAMERA_ACC",
      "FB_CAMERA_CAMERA",
      "FB_CAMERA_OPTIC",
      "FB_CAMERA_OPTICS",
      "FB_CAMERA_PHOTO",
      "FB_ELEC",
      "FB_ELEC_ACC",
      "FB_ELEC_ARCDADE",
      "FB_ELEC_AUDIO",
      "FB_ELEC_CIRCUIT",
      "FB_ELEC_COMM",
      "FB_ELEC_COMPUTER",
      "FB_ELEC_GPS_ACC",
      "FB_ELEC_GPS_NAV",
      "FB_ELEC_GPS_TRK",
      "FB_ELEC_MARINE",
      "FB_ELEC_NETWORK",
      "FB_ELEC_PART",
      "FB_ELEC_PRINT",
      "FB_ELEC_RADAR",
      "FB_ELEC_SFTWR",
      "FB_ELEC_SPEED_RDR",
      "FB_ELEC_TELEVISION",
      "FB_ELEC_TOLL",
      "FB_ELEC_VIDEO",
      "FB_ELEC_VID_GM_ACC",
      "FB_ELEC_VID_GM_CNSL",
      "FB_FOOD",
      "FB_FURN",
      "FB_FURN_BABY",
      "FB_FURN_BENCH",
      "FB_FURN_CART",
      "FB_FURN_CHAIR",
      "FB_FURN_CHAIR_ACC",
      "FB_FURN_DIVIDE",
      "FB_FURN_DIVIDE_ACC",
      "FB_FURN_ENT_CTR",
      "FB_FURN_FUTN",
      "FB_FURN_FUTN_PAD",
      "FB_FURN_OFFICE",
      "FB_FURN_OFFICE_ACC",
      "FB_FURN_OTTO",
      "FB_FURN_OUTDOOR",
      "FB_FURN_OUTDOOR_ACC",
      "FB_FURN_SETS",
      "FB_FURN_SHELVE_ACC",
      "FB_FURN_SHLF",
      "FB_FURN_SOFA",
      "FB_FURN_SOFA_ACC",
      "FB_FURN_STORAGE",
      "FB_FURN_TABL",
      "FB_FURN_TABL_ACC",
      "FB_GENERIC_TAXABLE",
      "FB_HLTH",
      "FB_HLTH_HLTH",
      "FB_HLTH_JWL_CR",
      "FB_HLTH_LILP_BLM",
      "FB_HLTH_LTN_SPF",
      "FB_HLTH_PRSL_CR",
      "FB_HLTH_SKN_CR",
      "FB_HMGN",
      "FB_HMGN_BATH",
      "FB_HMGN_DCOR",
      "FB_HMGN_EMGY",
      "FB_HMGN_FPLC",
      "FB_HMGN_FPLC_ACC",
      "FB_HMGN_GS_SFT",
      "FB_HMGN_HS_ACC",
      "FB_HMGN_HS_APP",
      "FB_HMGN_HS_SPL",
      "FB_HMGN_KTCN",
      "FB_HMGN_LAWN",
      "FB_HMGN_LGHT",
      "FB_HMGN_LINN",
      "FB_HMGN_LT_ACC",
      "FB_HMGN_OTDR",
      "FB_HMGN_POOL",
      "FB_HMGN_SCTY",
      "FB_HMGN_SMK_ACC",
      "FB_HMGN_UMBR",
      "FB_HMGN_UMBR_ACC",
      "FB_MDIA",
      "FB_MDIA_BOOK",
      "FB_MDIA_DVDS",
      "FB_MDIA_MAG",
      "FB_MDIA_MANL",
      "FB_MDIA_MUSC",
      "FB_MDIA_PRJ_PLN",
      "FB_MDIA_SHT_MUS",
      "FB_OFFC",
      "FB_OFFC_BKAC",
      "FB_OFFC_CRTS",
      "FB_OFFC_DSKP",
      "FB_OFFC_EQIP",
      "FB_OFFC_FLNG",
      "FB_OFFC_GNRL",
      "FB_OFFC_INSTM",
      "FB_OFFC_LP_DSK",
      "FB_OFFC_MATS",
      "FB_OFFC_NM_PLT",
      "FB_OFFC_PPR_HNDL",
      "FB_OFFC_PRSNT_SPL",
      "FB_OFFC_SEALR",
      "FB_OFFC_SHIP_SPL",
      "FB_RLGN",
      "FB_RLGN_CMNY",
      "FB_RLGN_ITEM",
      "FB_RLGN_WEDD",
      "FB_SFTWR",
      "FB_SFWR_CMPTR",
      "FB_SFWR_DGTL_GD",
      "FB_SFWR_GAME",
      "FB_SHIPPING",
      "FB_SPOR",
      "FB_SPORT_ATHL",
      "FB_SPORT_ATHL_CLTH",
      "FB_SPORT_ATHL_SHOE",
      "FB_SPORT_ATHL_SPRT",
      "FB_SPORT_EXRCS",
      "FB_SPORT_INDR_GM",
      "FB_SPORT_OTDR_GM",
      "FB_TOYS",
      "FB_TOYS_EQIP",
      "FB_TOYS_GAME",
      "FB_TOYS_PZZL",
      "FB_TOYS_TMRS",
      "FB_TOYS_TOYS",
      "FB_VEHI",
      "FB_VEHI_PART",
    ]

    ERROR_PRIORITY = [
      "HIGH",
      "LOW",
      "MEDIUM",
    ]

    ERROR_TYPE = [
      "AR_DELETED_DUE_TO_UPDATE",
      "AR_POLICY_VIOLATED",
      "AVAILABLE",
      "BAD_QUALITY_IMAGE",
      "CANNOT_EDIT_SUBSCRIPTION_PRODUCTS",
      "CHECKOUT_DISABLED_BY_USER",
      "COMMERCE_ACCOUNT_NOT_LEGALLY_COMPLIANT",
      "CRAWLED_AVAILABILITY_MISMATCH",
      "DA_DISABLED_BY_USER",
      "DA_POLICY_VIOLATION",
      "DIGITAL_GOODS_NOT_AVAILABLE_FOR_CHECKOUT",
      "DUPLICATE_IMAGES",
      "DUPLICATE_TITLE_AND_DESCRIPTION",
      "EMPTY_AVAILABILITY",
      "EMPTY_CONDITION",
      "EMPTY_DESCRIPTION",
      "EMPTY_PRODUCT_URL",
      "EMPTY_SELLER_DESCRIPTION",
      "EXTERNAL_MERCHANT_ID_MISMATCH",
      "GENERIC_INVALID_FIELD",
      "HIDDEN_UNTIL_PRODUCT_LAUNCH",
      "IMAGE_FETCH_FAILED",
      "IMAGE_FETCH_FAILED_BAD_GATEWAY",
      "IMAGE_FETCH_FAILED_FILE_SIZE_EXCEEDED",
      "IMAGE_FETCH_FAILED_FORBIDDEN",
      "IMAGE_FETCH_FAILED_LINK_BROKEN",
      "IMAGE_FETCH_FAILED_TIMED_OUT",
      "IMAGE_RESOLUTION_LOW",
      "INACTIVE_SHOPIFY_PRODUCT",
      "INVALID_COMMERCE_TAX_CATEGORY",
      "INVALID_IMAGES",
      "INVALID_MONETIZER_RETURN_POLICY",
      "INVALID_PRE_ORDER_PARAMS",
      "INVALID_SHELTER_PAGE_ID",
      "INVALID_SHIPPING_PROFILE_PARAMS",
      "INVALID_SUBSCRIPTION_DISABLE_PARAMS",
      "INVALID_SUBSCRIPTION_ENABLE_PARAMS",
      "INVALID_SUBSCRIPTION_PARAMS",
      "INVENTORY_ZERO_AVAILABILITY_IN_STOCK",
      "IN_ANOTHER_PRODUCT_LAUNCH",
      "ITEM_GROUP_NOT_SPECIFIED",
      "ITEM_NOT_SHIPPABLE_FOR_SCA_SHOP",
      "ITEM_OVERRIDE_EMPTY_AVAILABILITY",
      "ITEM_OVERRIDE_EMPTY_PRICE",
      "ITEM_OVERRIDE_NOT_VISIBLE",
      "ITEM_STALE_OUT_OF_STOCK",
      "MARKETPLACE_DISABLED_BY_USER",
      "MINI_SHOPS_DISABLED_BY_USER",
      "MISSING_CHECKOUT",
      "MISSING_CHECKOUT_CURRENCY",
      "MISSING_COLOR",
      "MISSING_COUNTRY_OVERRIDE_IN_SHIPPING_PROFILE",
      "MISSING_INDIA_COMPLIANCE_FIELDS",
      "MISSING_SHIPPING_PROFILE",
      "MISSING_SIZE",
      "MISSING_TAX_CATEGORY",
      "NEGATIVE_COMMUNITY_FEEDBACK",
      "NOT_ENOUGH_IMAGES",
      "NOT_ENOUGH_UNIQUE_PRODUCTS",
      "PART_OF_PRODUCT_LAUNCH",
      "PRODUCT_EXPIRED",
      "PRODUCT_ITEM_HIDDEN_FROM_ALL_SHOPS",
      "PRODUCT_ITEM_INVALID_PARTNER_TOKENS",
      "PRODUCT_ITEM_NOT_INCLUDED_IN_ANY_SHOP",
      "PRODUCT_ITEM_NOT_VISIBLE",
      "PRODUCT_NOT_APPROVED",
      "PRODUCT_NOT_DOMINANT_CURRENCY",
      "PRODUCT_OUT_OF_STOCK",
      "PRODUCT_URL_EQUALS_DOMAIN",
      "PROPERTY_PRICE_CURRENCY_NOT_SUPPORTED",
      "PROPERTY_PRICE_TOO_HIGH",
      "PROPERTY_PRICE_TOO_LOW",
      "PROPERTY_UNIT_PRICE_CURRENCY_MISMATCH_ITEM_PRICE_CURRENCY",
      "PROPERTY_VALUE_CONTAINS_HTML_TAGS",
      "PROPERTY_VALUE_DESCRIPTION_CONTAINS_OFF_PLATFORM_LINK",
      "PROPERTY_VALUE_FORMAT",
      "PROPERTY_VALUE_MISSING",
      "PROPERTY_VALUE_MISSING_WARNING",
      "PROPERTY_VALUE_NON_POSITIVE",
      "PROPERTY_VALUE_STRING_EXCEEDS_LENGTH",
      "PROPERTY_VALUE_STRING_TOO_SHORT",
      "PROPERTY_VALUE_UPPERCASE",
      "PROPERTY_VALUE_UPPERCASE_WARNING",
      "QUALITY_DUPLICATED_DESCRIPTION",
      "QUALITY_ITEM_LINK_BROKEN",
      "QUALITY_ITEM_LINK_REDIRECTING",
      "RETAILER_ID_NOT_PROVIDED",
      "SHOPIFY_INVALID_RETAILER_ID",
      "SHOPIFY_ITEM_MISSING_SHIPPING_PROFILE",
      "SHOPS_POLICY_VIOLATION",
      "SUBSCRIPTION_INFO_NOT_ENABLED_FOR_FEED",
      "TAX_CATEGORY_NOT_SUPPORTED_IN_UK",
      "UNSUPPORTED_PRODUCT_CATEGORY",
      "VARIANT_ATTRIBUTE_ISSUE",
      "VIDEO_FETCH_FAILED",
      "VIDEO_FETCH_FAILED_BAD_GATEWAY",
      "VIDEO_FETCH_FAILED_FILE_SIZE_EXCEEDED",
      "VIDEO_FETCH_FAILED_FORBIDDEN",
      "VIDEO_FETCH_FAILED_LINK_BROKEN",
      "VIDEO_FETCH_FAILED_TIMED_OUT",
      "VIDEO_NOT_DOWNLOADABLE",
      "WHATSAPP_DISABLED_BY_USER",
      "WHATSAPP_POLICY_VIOLATION",
    ]

    MARKED_FOR_PRODUCT_LAUNCH = [
      "default",
      "marked",
      "not_marked",
    ]

    ORIGIN_COUNTRY = [
      "AD",
      "AE",
      "AF",
      "AG",
      "AI",
      "AL",
      "AM",
      "AN",
      "AO",
      "AQ",
      "AR",
      "AS",
      "AT",
      "AU",
      "AW",
      "AX",
      "AZ",
      "BA",
      "BB",
      "BD",
      "BE",
      "BF",
      "BG",
      "BH",
      "BI",
      "BJ",
      "BL",
      "BM",
      "BN",
      "BO",
      "BQ",
      "BR",
      "BS",
      "BT",
      "BV",
      "BW",
      "BY",
      "BZ",
      "CA",
      "CC",
      "CD",
      "CF",
      "CG",
      "CH",
      "CI",
      "CK",
      "CL",
      "CM",
      "CN",
      "CO",
      "CR",
      "CU",
      "CV",
      "CW",
      "CX",
      "CY",
      "CZ",
      "DE",
      "DJ",
      "DK",
      "DM",
      "DO",
      "DZ",
      "EC",
      "EE",
      "EG",
      "EH",
      "ER",
      "ES",
      "ET",
      "FI",
      "FJ",
      "FK",
      "FM",
      "FO",
      "FR",
      "GA",
      "GB",
      "GD",
      "GE",
      "GF",
      "GG",
      "GH",
      "GI",
      "GL",
      "GM",
      "GN",
      "GP",
      "GQ",
      "GR",
      "GS",
      "GT",
      "GU",
      "GW",
      "GY",
      "HK",
      "HM",
      "HN",
      "HR",
      "HT",
      "HU",
      "ID",
      "IE",
      "IL",
      "IM",
      "IN",
      "IO",
      "IQ",
      "IR",
      "IS",
      "IT",
      "JE",
      "JM",
      "JO",
      "JP",
      "KE",
      "KG",
      "KH",
      "KI",
      "KM",
      "KN",
      "KP",
      "KR",
      "KW",
      "KY",
      "KZ",
      "LA",
      "LB",
      "LC",
      "LI",
      "LK",
      "LR",
      "LS",
      "LT",
      "LU",
      "LV",
      "LY",
      "MA",
      "MC",
      "MD",
      "ME",
      "MF",
      "MG",
      "MH",
      "MK",
      "ML",
      "MM",
      "MN",
      "MO",
      "MP",
      "MQ",
      "MR",
      "MS",
      "MT",
      "MU",
      "MV",
      "MW",
      "MX",
      "MY",
      "MZ",
      "NA",
      "NC",
      "NE",
      "NF",
      "NG",
      "NI",
      "NL",
      "NO",
      "NP",
      "NR",
      "NU",
      "NZ",
      "OM",
      "PA",
      "PE",
      "PF",
      "PG",
      "PH",
      "PK",
      "PL",
      "PM",
      "PN",
      "PR",
      "PS",
      "PT",
      "PW",
      "PY",
      "QA",
      "RE",
      "RO",
      "RS",
      "RU",
      "RW",
      "SA",
      "SB",
      "SC",
      "SD",
      "SE",
      "SG",
      "SH",
      "SI",
      "SJ",
      "SK",
      "SL",
      "SM",
      "SN",
      "SO",
      "SR",
      "SS",
      "ST",
      "SV",
      "SX",
      "SY",
      "SZ",
      "TC",
      "TD",
      "TF",
      "TG",
      "TH",
      "TJ",
      "TK",
      "TL",
      "TM",
      "TN",
      "TO",
      "TR",
      "TT",
      "TV",
      "TW",
      "TZ",
      "UA",
      "UG",
      "UM",
      "US",
      "UY",
      "UZ",
      "VA",
      "VC",
      "VE",
      "VG",
      "VI",
      "VN",
      "VU",
      "WF",
      "WS",
      "XK",
      "YE",
      "YT",
      "ZA",
      "ZM",
      "ZW",
    ]

    WA_COMPLIANCE_CATEGORY = [
      "COUNTRY_ORIGIN_EXEMPT",
      "DEFAULT",
    ]


    field :additional_image_cdn_urls, { list: { list: 'hash' } }
    field :additional_image_urls, { list: 'string' }
    field :additional_variant_attributes, { list: 'hash' }
    field :age_group, { enum: -> { AGE_GROUP }}
    field :applinks, 'CatalogItemAppLinks'
    field :availability, { enum: -> { AVAILABILITY }}
    field :brand, 'string'
    field :capability_to_review_status, { list: 'hash' }
    field :category, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :color, 'string'
    field :commerce_insights, 'ProductItemCommerceInsights'
    field :condition, { enum: -> { CONDITION }}
    field :currency, 'string'
    field :custom_data, { list: 'hash' }
    field :custom_label_0, 'string'
    field :custom_label_1, 'string'
    field :custom_label_2, 'string'
    field :custom_label_3, 'string'
    field :custom_label_4, 'string'
    field :custom_number_0, 'string'
    field :custom_number_1, 'string'
    field :custom_number_2, 'string'
    field :custom_number_3, 'string'
    field :custom_number_4, 'string'
    field :description, 'string'
    field :errors, { list: 'ProductItemError' }
    field :expiration_date, 'string'
    field :fb_product_category, 'string'
    field :gender, { enum: -> { GENDER }}
    field :gtin, 'string'
    field :id, 'string'
    field :image_cdn_urls, { list: 'hash' }
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :image_url, 'string'
    field :images, { list: 'string' }
    field :importer_address, 'ProductItemImporterAddress'
    field :importer_name, 'string'
    field :invalidation_errors, { list: 'object' }
    field :inventory, 'int'
    field :manufacturer_info, 'string'
    field :manufacturer_part_number, 'string'
    field :marked_for_product_launch, 'string'
    field :material, 'string'
    field :mobile_link, 'string'
    field :name, 'string'
    field :ordering_index, 'int'
    field :origin_country, 'string'
    field :parent_product_id, 'string'
    field :pattern, 'string'
    field :post_conversion_signal_based_enforcement_appeal_eligibility, 'bool'
    field :price, 'string'
    field :product_catalog, 'ProductCatalog'
    field :product_feed, 'ProductFeed'
    field :product_group, 'ProductGroup'
    field :product_local_info, 'ProductItemLocalInfo'
    field :product_type, 'string'
    field :quantity_to_sell_on_facebook, 'int'
    field :retailer_id, 'string'
    field :retailer_product_group_id, 'string'
    field :review_rejection_reasons, { list: 'string' }
    field :review_status, { enum: -> { REVIEW_STATUS }}
    field :sale_price, 'string'
    field :sale_price_end_date, 'string'
    field :sale_price_start_date, 'string'
    field :shipping_weight_unit, { enum: -> { SHIPPING_WEIGHT_UNIT }}
    field :shipping_weight_value, 'double'
    field :short_description, 'string'
    field :size, 'string'
    field :start_date, 'string'
    field :tags, { list: 'string' }
    field :url, 'string'
    field :video_fetch_status, { enum: -> { VIDEO_FETCH_STATUS }}
    field :visibility, { enum: -> { VISIBILITY }}
    field :wa_compliance_category, 'string'
    field :additional_uploaded_image_ids, { list: 'string' }
    field :android_app_name, 'string'
    field :android_class, 'string'
    field :android_package, 'string'
    field :android_url, 'string'
    field :checkout_url, 'string'
    field :commerce_tax_category, { enum: -> { COMMERCE_TAX_CATEGORY }}
    field :ios_app_name, 'string'
    field :ios_app_store_id, 'int'
    field :ios_url, 'string'
    field :ipad_app_name, 'string'
    field :ipad_app_store_id, 'int'
    field :ipad_url, 'string'
    field :iphone_app_name, 'string'
    field :iphone_app_store_id, 'int'
    field :iphone_url, 'string'
    field :launch_date, 'string'
    field :offer_price_amount, 'int'
    field :offer_price_end_date, 'datetime'
    field :offer_price_start_date, 'datetime'
    field :return_policy_days, 'int'
    field :windows_phone_app_id, 'string'
    field :windows_phone_app_name, 'string'
    field :windows_phone_url, 'string'

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

    has_edge :product_sets do |edge|
      edge.get 'ProductSet'
    end

    has_edge :videos_metadata do |edge|
      edge.get 'DynamicVideoMetadata'
    end

  end
end
