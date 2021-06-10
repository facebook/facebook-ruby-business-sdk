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
      "FB_ELEC_SPEED_RDR",
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

    MARKED_FOR_PRODUCT_LAUNCH = [
      "default",
      "marked",
      "not_marked",
    ]


    field :additional_image_cdn_urls, { list: 'hash' }
    field :additional_image_urls, { list: 'string' }
    field :additional_variant_attributes, 'hash'
    field :age_group, { enum: -> { AGE_GROUP }}
    field :applinks, 'CatalogItemAppLinks'
    field :ar_data, 'ProductItemArData'
    field :availability, { enum: -> { AVAILABILITY }}
    field :brand, 'string'
    field :capability_to_review_status, 'hash'
    field :category, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :color, 'string'
    field :commerce_insights, 'ProductItemCommerceInsights'
    field :condition, { enum: -> { CONDITION }}
    field :currency, 'string'
    field :custom_data, 'hash'
    field :custom_label_0, 'string'
    field :custom_label_1, 'string'
    field :custom_label_2, 'string'
    field :custom_label_3, 'string'
    field :custom_label_4, 'string'
    field :description, 'string'
    field :expiration_date, 'string'
    field :fb_product_category, 'string'
    field :gender, { enum: -> { GENDER }}
    field :gtin, 'string'
    field :id, 'string'
    field :image_cdn_urls, 'hash'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :image_url, 'string'
    field :images, { list: 'string' }
    field :inventory, 'int'
    field :manufacturer_part_number, 'string'
    field :marked_for_product_launch, 'string'
    field :material, 'string'
    field :mobile_link, 'string'
    field :name, 'string'
    field :ordering_index, 'int'
    field :parent_product_id, 'string'
    field :pattern, 'string'
    field :price, 'string'
    field :product_catalog, 'ProductCatalog'
    field :product_feed, 'ProductFeed'
    field :product_group, 'ProductGroup'
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
    field :url, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
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

  end
end
