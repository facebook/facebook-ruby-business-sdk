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

  class AdCreative < AdObject
    CALL_TO_ACTION_TYPE = [
      "ADD_TO_CART",
      "APPLY_NOW",
      "AUDIO_CALL",
      "BOOK_NOW",
      "BOOK_TRAVEL",
      "BUY",
      "BUY_NOW",
      "BUY_TICKETS",
      "CALL",
      "CALL_ME",
      "CALL_NOW",
      "CONFIRM",
      "CONTACT",
      "CONTACT_US",
      "DONATE",
      "DONATE_NOW",
      "DOWNLOAD",
      "EVENT_RSVP",
      "FIND_A_GROUP",
      "FIND_YOUR_GROUPS",
      "FOLLOW_NEWS_STORYLINE",
      "FOLLOW_PAGE",
      "FOLLOW_USER",
      "GET_DIRECTIONS",
      "GET_OFFER",
      "GET_OFFER_VIEW",
      "GET_PROMOTIONS",
      "GET_QUOTE",
      "GET_SHOWTIMES",
      "GET_STARTED",
      "INQUIRE_NOW",
      "INSTALL_APP",
      "INSTALL_MOBILE_APP",
      "LEARN_MORE",
      "LIKE_PAGE",
      "LISTEN_MUSIC",
      "LISTEN_NOW",
      "MESSAGE_PAGE",
      "MOBILE_DOWNLOAD",
      "NO_BUTTON",
      "OPEN_INSTANT_APP",
      "OPEN_LINK",
      "ORDER_NOW",
      "PAY_TO_ACCESS",
      "PLAY_GAME",
      "PLAY_GAME_ON_FACEBOOK",
      "PURCHASE_GIFT_CARDS",
      "RAISE_MONEY",
      "RECORD_NOW",
      "REFER_FRIENDS",
      "REQUEST_TIME",
      "SAY_THANKS",
      "SEE_MORE",
      "SELL_NOW",
      "SEND_A_GIFT",
      "SEND_GIFT_MONEY",
      "SEND_UPDATES",
      "SHARE",
      "SHOP_NOW",
      "SIGN_UP",
      "SOTTO_SUBSCRIBE",
      "START_ORDER",
      "SUBSCRIBE",
      "SWIPE_UP_PRODUCT",
      "SWIPE_UP_SHOP",
      "UPDATE_APP",
      "USE_APP",
      "USE_MOBILE_APP",
      "VIDEO_ANNOTATION",
      "VIDEO_CALL",
      "VISIT_PAGES_FEED",
      "WATCH_MORE",
      "WATCH_VIDEO",
      "WHATSAPP_MESSAGE",
      "WOODHENGE_SUPPORT",
    ]

    OBJECT_TYPE = [
      "APPLICATION",
      "DOMAIN",
      "EVENT",
      "INVALID",
      "OFFER",
      "PAGE",
      "PHOTO",
      "POST_DELETED",
      "PRIVACY_CHECK_FAIL",
      "SHARE",
      "STATUS",
      "STORE_ITEM",
      "VIDEO",
    ]

    STATUS = [
      "ACTIVE",
      "DELETED",
      "IN_PROCESS",
      "WITH_ISSUES",
    ]

    APPLINK_TREATMENT = [
      "automatic",
      "deeplink_with_appstore_fallback",
      "deeplink_with_web_fallback",
      "web_only",
    ]

    AUTHORIZATION_CATEGORY = [
      "NONE",
      "POLITICAL",
      "POLITICAL_WITH_DIGITALLY_CREATED_MEDIA",
    ]

    CATEGORIZATION_CRITERIA = [
      "brand",
      "category",
      "product_type",
    ]

    CATEGORY_MEDIA_SOURCE = [
      "CATEGORY",
      "MIXED",
      "PRODUCTS_COLLAGE",
      "PRODUCTS_SLIDESHOW",
    ]

    DYNAMIC_AD_VOICE = [
      "DYNAMIC",
      "STORY_OWNER",
    ]

    OPERATOR = [
      "ALL",
      "ANY",
    ]


    field :account_id, 'string'
    field :actor_id, 'string'
    field :adlabels, { list: 'AdLabel' }
    field :applink_treatment, 'string'
    field :asset_feed_spec, 'AdAssetFeedSpec'
    field :authorization_category, 'string'
    field :auto_update, 'bool'
    field :body, 'string'
    field :branded_content, 'AdCreativeBrandedContentAds'
    field :branded_content_sponsor_page_id, 'string'
    field :bundle_folder_id, 'string'
    field :call_to_action_type, { enum: -> { CALL_TO_ACTION_TYPE }}
    field :categorization_criteria, 'string'
    field :category_media_source, 'string'
    field :collaborative_ads_lsb_image_bank_id, 'string'
    field :creative_sourcing_spec, 'AdCreativeSourcingSpec'
    field :degrees_of_freedom_spec, 'AdCreativeDegreesOfFreedomSpec'
    field :destination_set_id, 'string'
    field :dynamic_ad_voice, 'string'
    field :effective_authorization_category, 'string'
    field :effective_instagram_media_id, 'string'
    field :effective_instagram_story_id, 'string'
    field :effective_object_story_id, 'string'
    field :enable_direct_install, 'bool'
    field :enable_launch_instant_app, 'bool'
    field :facebook_branded_content, 'AdCreativeFacebookBrandedContent'
    field :id, 'string'
    field :image_crops, 'AdsImageCrops'
    field :image_hash, 'string'
    field :image_url, 'string'
    field :instagram_actor_id, 'string'
    field :instagram_branded_content, 'AdCreativeInstagramBrandedContent'
    field :instagram_permalink_url, 'string'
    field :instagram_story_id, 'string'
    field :instagram_user_id, 'string'
    field :interactive_components_spec, 'AdCreativeInteractiveComponentsSpec'
    field :link_deep_link_url, 'string'
    field :link_destination_display_url, 'string'
    field :link_og_id, 'string'
    field :link_url, 'string'
    field :messenger_sponsored_message, 'string'
    field :name, 'string'
    field :object_id, 'string'
    field :object_store_url, 'string'
    field :object_story_id, 'string'
    field :object_story_spec, 'AdCreativeObjectStorySpec'
    field :object_type, { enum: -> { OBJECT_TYPE }}
    field :object_url, 'string'
    field :omnichannel_link_spec, 'AdCreativeOmnichannelLinkSpec'
    field :photo_album_source_object_story_id, 'string'
    field :place_page_set_id, 'string'
    field :platform_customizations, 'AdCreativePlatformCustomization'
    field :playable_asset_id, 'string'
    field :portrait_customizations, 'AdCreativePortraitCustomizations'
    field :product_set_id, 'string'
    field :recommender_settings, 'AdCreativeRecommenderSettings'
    field :source_instagram_media_id, 'string'
    field :status, { enum: -> { STATUS }}
    field :template_url, 'string'
    field :template_url_spec, 'AdCreativeTemplateUrlSpec'
    field :thumbnail_id, 'string'
    field :thumbnail_url, 'string'
    field :title, 'string'
    field :url_tags, 'string'
    field :use_page_actor_override, 'bool'
    field :video_id, 'string'
    field :call_to_action, 'object'
    field :image_file, 'string'
    field :is_dco_internal, 'bool'

    has_edge :adlabels do |edge|
      edge.post 'AdCreative' do |api|
        api.has_param :adlabels, { list: 'object' }
      end
    end

    has_edge :creative_insights do |edge|
      edge.get 'AdCreativeInsights'
    end

    has_edge :previews do |edge|
      edge.get 'AdPreview' do |api|
        api.has_param :ad_format, { enum: -> { AdPreview::AD_FORMAT }}
        api.has_param :creative_feature, { enum: -> { AdPreview::CREATIVE_FEATURE }}
        api.has_param :dynamic_asset_label, 'string'
        api.has_param :dynamic_creative_spec, 'object'
        api.has_param :dynamic_customization, 'object'
        api.has_param :end_date, 'datetime'
        api.has_param :height, 'int'
        api.has_param :locale, 'string'
        api.has_param :place_page_id, 'int'
        api.has_param :post, 'object'
        api.has_param :product_item_ids, { list: 'string' }
        api.has_param :render_type, { enum: -> { AdPreview::RENDER_TYPE }}
        api.has_param :start_date, 'datetime'
        api.has_param :width, 'int'
      end
    end

  end
end
