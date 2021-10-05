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

  class ProductGroup < AdObject

    field :id, 'string'
    field :product_catalog, 'ProductCatalog'
    field :retailer_id, 'string'
    field :variants, { list: 'ProductVariant' }

    has_edge :products do |edge|
      edge.get 'ProductItem'
      edge.post do |api|
        api.has_param :additional_image_urls, { list: 'string' }
        api.has_param :additional_variant_attributes, 'hash'
        api.has_param :android_app_name, 'string'
        api.has_param :android_class, 'string'
        api.has_param :android_package, 'string'
        api.has_param :android_url, 'string'
        api.has_param :availability, { enum: %w{available for order discontinued in stock out of stock pending preorder }}
        api.has_param :brand, 'string'
        api.has_param :category, 'string'
        api.has_param :checkout_url, 'string'
        api.has_param :color, 'string'
        api.has_param :commerce_tax_category, { enum: %w{FB_ANIMAL FB_ANIMAL_SUPP FB_APRL FB_APRL_ACCESSORIES FB_APRL_ATHL_UNIF FB_APRL_CASES FB_APRL_CLOTHING FB_APRL_COSTUME FB_APRL_CSTM FB_APRL_FORMAL FB_APRL_HANDBAG FB_APRL_JEWELRY FB_APRL_SHOE FB_APRL_SHOE_ACC FB_APRL_SWIM FB_APRL_SWIM_CHIL FB_APRL_SWIM_CVR FB_ARTS FB_ARTS_HOBBY FB_ARTS_PARTY FB_ARTS_PARTY_GIFT_CARD FB_ARTS_TICKET FB_BABY FB_BABY_BATH FB_BABY_BLANKET FB_BABY_DIAPER FB_BABY_GIFT_SET FB_BABY_HEALTH FB_BABY_NURSING FB_BABY_POTTY_TRN FB_BABY_SAFE FB_BABY_TOYS FB_BABY_TRANSPORT FB_BABY_TRANSPORT_ACC FB_BAGS FB_BAGS_BKPK FB_BAGS_BOXES FB_BAGS_BRFCS FB_BAGS_CSMT_BAG FB_BAGS_DFFL FB_BAGS_DIPR FB_BAGS_FNNY FB_BAGS_GRMT FB_BAGS_LUGG FB_BAGS_LUG_ACC FB_BAGS_MSGR FB_BAGS_TOTE FB_BAGS_TRN_CAS FB_BLDG FB_BLDG_ACC FB_BLDG_CNSMB FB_BLDG_FENCE FB_BLDG_FUEL_TNK FB_BLDG_HT_VNT FB_BLDG_LOCK FB_BLDG_MATRL FB_BLDG_PLMB FB_BLDG_PUMP FB_BLDG_PWRS FB_BLDG_STR_TANK FB_BLDG_S_ENG FB_BLDG_TL_ACC FB_BLDG_TOOL FB_BUSIND FB_BUSIND_ADVERTISING FB_BUSIND_AGRICULTURE FB_BUSIND_AUTOMATION FB_BUSIND_HEAVY_MACH FB_BUSIND_LAB FB_BUSIND_MEDICAL FB_BUSIND_RETAIL FB_BUSIND_SANITARY_CT FB_BUSIND_SIGN FB_BUSIND_STORAGE FB_BUSIND_STORAGE_ACC FB_BUSIND_WORK_GEAR FB_CAMERA_ACC FB_CAMERA_CAMERA FB_CAMERA_OPTIC FB_CAMERA_OPTICS FB_CAMERA_PHOTO FB_ELEC FB_ELEC_ACC FB_ELEC_ARCDADE FB_ELEC_AUDIO FB_ELEC_CIRCUIT FB_ELEC_COMM FB_ELEC_COMPUTER FB_ELEC_GPS_ACC FB_ELEC_GPS_NAV FB_ELEC_GPS_TRK FB_ELEC_MARINE FB_ELEC_NETWORK FB_ELEC_PART FB_ELEC_PRINT FB_ELEC_RADAR FB_ELEC_SPEED_RDR FB_ELEC_TOLL FB_ELEC_VIDEO FB_ELEC_VID_GM_ACC FB_ELEC_VID_GM_CNSL FB_FOOD FB_FURN FB_FURN_BABY FB_FURN_BENCH FB_FURN_CART FB_FURN_CHAIR FB_FURN_CHAIR_ACC FB_FURN_DIVIDE FB_FURN_DIVIDE_ACC FB_FURN_ENT_CTR FB_FURN_FUTN FB_FURN_FUTN_PAD FB_FURN_OFFICE FB_FURN_OFFICE_ACC FB_FURN_OTTO FB_FURN_OUTDOOR FB_FURN_OUTDOOR_ACC FB_FURN_SETS FB_FURN_SHELVE_ACC FB_FURN_SHLF FB_FURN_SOFA FB_FURN_SOFA_ACC FB_FURN_STORAGE FB_FURN_TABL FB_FURN_TABL_ACC FB_GENERIC_TAXABLE FB_HLTH FB_HLTH_HLTH FB_HLTH_JWL_CR FB_HLTH_LILP_BLM FB_HLTH_LTN_SPF FB_HLTH_PRSL_CR FB_HLTH_SKN_CR FB_HMGN FB_HMGN_BATH FB_HMGN_DCOR FB_HMGN_EMGY FB_HMGN_FPLC FB_HMGN_FPLC_ACC FB_HMGN_GS_SFT FB_HMGN_HS_ACC FB_HMGN_HS_APP FB_HMGN_HS_SPL FB_HMGN_KTCN FB_HMGN_LAWN FB_HMGN_LGHT FB_HMGN_LINN FB_HMGN_LT_ACC FB_HMGN_OTDR FB_HMGN_POOL FB_HMGN_SCTY FB_HMGN_SMK_ACC FB_HMGN_UMBR FB_HMGN_UMBR_ACC FB_MDIA FB_MDIA_BOOK FB_MDIA_DVDS FB_MDIA_MAG FB_MDIA_MANL FB_MDIA_MUSC FB_MDIA_PRJ_PLN FB_MDIA_SHT_MUS FB_OFFC FB_OFFC_BKAC FB_OFFC_CRTS FB_OFFC_DSKP FB_OFFC_EQIP FB_OFFC_FLNG FB_OFFC_GNRL FB_OFFC_INSTM FB_OFFC_LP_DSK FB_OFFC_MATS FB_OFFC_NM_PLT FB_OFFC_PPR_HNDL FB_OFFC_PRSNT_SPL FB_OFFC_SEALR FB_OFFC_SHIP_SPL FB_RLGN FB_RLGN_CMNY FB_RLGN_ITEM FB_RLGN_WEDD FB_SFTWR FB_SFWR_CMPTR FB_SFWR_DGTL_GD FB_SFWR_GAME FB_SHIPPING FB_SPOR FB_SPORT_ATHL FB_SPORT_ATHL_CLTH FB_SPORT_ATHL_SHOE FB_SPORT_ATHL_SPRT FB_SPORT_EXRCS FB_SPORT_INDR_GM FB_SPORT_OTDR_GM FB_TOYS FB_TOYS_EQIP FB_TOYS_GAME FB_TOYS_PZZL FB_TOYS_TMRS FB_TOYS_TOYS FB_VEHI FB_VEHI_PART }}
        api.has_param :condition, { enum: %w{cpo new open_box_new refurbished used used_fair used_good used_like_new }}
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
        api.has_param :gender, { enum: %w{female male unisex }}
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
        api.has_param :marked_for_product_launch, { enum: %w{default marked not_marked }}
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
        api.has_param :return_policy_days, 'int'
        api.has_param :sale_price, 'int'
        api.has_param :sale_price_end_date, 'datetime'
        api.has_param :sale_price_start_date, 'datetime'
        api.has_param :short_description, 'string'
        api.has_param :size, 'string'
        api.has_param :start_date, 'string'
        api.has_param :url, 'string'
        api.has_param :visibility, { enum: %w{published staging }}
        api.has_param :windows_phone_app_id, 'string'
        api.has_param :windows_phone_app_name, 'string'
        api.has_param :windows_phone_url, 'string'
      end
    end

  end
end
