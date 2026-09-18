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

  class AdCreativeGet < AdObject
    ACTOR_TYPE = [
      "PAGE",
      "USER",
    ]

    APPLINK_TREATMENT = [
      "AUTOMATIC",
      "DEEPLINK_WITH_APPSTORE_FALLBACK",
      "DEEPLINK_WITH_WEB_FALLBACK",
      "WEB_ONLY",
    ]

    AUTHORIZATION_CATEGORY = [
      "NONE",
      "POLITICAL",
      "POLITICAL_WITH_DIGITALLY_CREATED_MEDIA",
    ]

    BRANDED_CONTENT_BOOSTING_TYPE = [
      "CREATOR_BOOST",
      "CREATOR_INLINE",
      "SPONSOR_BOOST",
      "SPONSOR_INLINE",
    ]

    CALL_TO_ACTION_TYPE = [
      "ACTIVATE_OFFER",
      "ADD_TO_CART",
      "APPLY_NOW",
      "ASK_ABOUT_SERVICES",
      "ASK_A_QUESTION",
      "ASK_FOR_MORE_INFO",
      "ASK_US",
      "AUDIO_CALL",
      "BET_NOW",
      "BLOOD_DONATIONS",
      "BOOK_A_CONSULTATION",
      "BOOK_NOW",
      "BOOK_TEST_DRIVE",
      "BOOK_TRAVEL",
      "BROWSE_SHOP",
      "BUY",
      "BUY_NOW",
      "BUY_TICKETS",
      "BUY_VIA_MESSAGE",
      "CALL",
      "CALL_ME",
      "CALL_NOW",
      "CHAT_NOW",
      "CHAT_ON_WHATSAPP",
      "CHAT_WITH_US",
      "CHECK_AVAILABILITY",
      "CIVIC_ACTION",
      "CLAIM_OFFER",
      "CONFIRM",
      "CONTACT",
      "CONTACT_US",
      "DIAL_CODE",
      "DONATE",
      "DONATE_NOW",
      "DOWNLOAD",
      "EMAIL_NOW",
      "EVENT_RSVP",
      "EXPLORE_MORE",
      "FIND_A_GROUP",
      "FIND_OUT_MORE",
      "FIND_YOUR_GROUPS",
      "FOLLOW_NEWS_STORYLINE",
      "FOLLOW_PAGE",
      "FOLLOW_USER",
      "GET_A_QUOTE",
      "GET_DETAILS",
      "GET_DIRECTIONS",
      "GET_EVENT_TICKETS",
      "GET_IN_TOUCH",
      "GET_MOBILE_APP",
      "GET_OFFER",
      "GET_OFFER_VIEW",
      "GET_PROMOTIONS",
      "GET_QUOTE",
      "GET_SHOWTIMES",
      "GET_STARTED",
      "GIVE_FREE_RIDES",
      "GO_LIVE",
      "IMAGINE",
      "INQUIRE_NOW",
      "INSTAGRAM_MESSAGE",
      "INSTALL_APP",
      "INSTALL_FREE_MOBILE_APP",
      "INSTALL_MOBILE_APP",
      "INTERESTED",
      "JOBS_APPLY_NOW",
      "JOIN_CHANNEL",
      "JOIN_GROUP",
      "JOIN_LIVE_VIDEO",
      "LEARN_MORE",
      "LIKE_PAGE",
      "LINK_CARD",
      "LISTEN_MUSIC",
      "LISTEN_NOW",
      "LOYALTY_LEARN_MORE",
      "MAKE_AN_APPOINTMENT",
      "MESSAGE_PAGE",
      "MESSAGE_USER",
      "MISSED_CALL",
      "MOBILE_DOWNLOAD",
      "MOMENTS",
      "NO_BUTTON",
      "OPEN_INSTANT_APP",
      "OPEN_LINK",
      "OPEN_MESSENGER_EXT",
      "OPEN_MOVIES",
      "ORDER_NOW",
      "PAY_OR_REQUEST",
      "PAY_TO_ACCESS",
      "PLAY",
      "PLAY_GAME",
      "PLAY_GAME_ON_FACEBOOK",
      "PRE_REGISTER",
      "PURCHASE_GIFT_CARDS",
      "RAISE_MONEY",
      "RECORD_NOW",
      "REFER_FRIENDS",
      "REGISTER_NOW",
      "REMIND_ME",
      "REQUEST_TIME",
      "SAVE",
      "SAVE_OFFER",
      "SAY_THANKS",
      "SEARCH",
      "SEARCH_MORE",
      "SEE_DETAILS",
      "SEE_MENU",
      "SEE_MORE",
      "SEE_OFFER",
      "SEE_SHOP",
      "SELL_NOW",
      "SEND_A_GIFT",
      "SEND_GIFT",
      "SEND_GIFT_MONEY",
      "SEND_INVITES",
      "SEND_TIP",
      "SEND_UPDATES",
      "SHARE",
      "SHOP_NOW",
      "SHOP_ON_RETAILER",
      "SHOP_WITH_AI",
      "SIGN_UP",
      "SOTTO_SUBSCRIBE",
      "START_A_CHAT",
      "START_ORDER",
      "SUBSCRIBE",
      "SWIPE_UP_PRODUCT",
      "SWIPE_UP_SHOP",
      "TRY_DEMO",
      "TRY_IN_CAMERA",
      "TRY_IT",
      "TRY_NOW",
      "TRY_ON",
      "TRY_ON_WITH_AI",
      "UNLIKE_PAGE",
      "UPDATE_APP",
      "USE_APP",
      "USE_MOBILE_APP",
      "VIDEO_ANNOTATION",
      "VIDEO_CALL",
      "VIEW_CART",
      "VIEW_CHANNEL",
      "VIEW_INSTAGRAM_PROFILE",
      "VIEW_IN_CART",
      "VIEW_PRODUCT",
      "VIEW_RESUME",
      "VISIT_PAGES_FEED",
      "VISIT_PROFILE",
      "VISIT_WEBSITE",
      "VISIT_WORLD",
      "VOTE_NOW",
      "WATCH_APP_UPGRADE",
      "WATCH_LIVE_VIDEO",
      "WATCH_MORE",
      "WATCH_MUSIC_VIDEO",
      "WATCH_VIDEO",
      "WHATSAPP_LINK",
      "WHATSAPP_MESSAGE",
      "WOODHENGE_SUPPORT",
    ]

    CATEGORIZATION_CRITERIA = [
      "BRAND",
      "CATEGORY",
      "PRODUCT_TYPE",
    ]

    CATEGORY_MEDIA_SOURCE = [
      "CATEGORY",
      "MIXED",
      "PRODUCTS_COLLAGE",
      "PRODUCTS_SLIDESHOW",
    ]

    EFFECTIVE_AUTHORIZATION_CATEGORY = [
      "NONE",
      "POLITICAL",
      "POLITICAL_WITH_DIGITALLY_CREATED_MEDIA",
    ]

    MEDIA_TYPE = [
      "AUTOMATIC",
      "CAROUSEL",
      "CAROUSEL_IMAGE",
      "COLLECTIONS_IMAGE",
      "COLLECTIONS_VIDEO",
      "EXISTING_INSTAGRAM_POST",
      "EXISTING_POST",
      "INSTAGRAM_LIVE_VIDEO",
      "POST",
      "SCHEDULED_LIVE_VIDEO",
      "SINGLE_IMAGE",
      "SINGLE_LINK",
      "SINGLE_PHOTO",
      "SINGLE_VIDEO",
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


    field :account_id, 'string'
    field :actor_id, 'int'
    field :actor_type, { enum: -> { ACTOR_TYPE }}
    field :adlabels, { list: 'object' }
    field :applink_treatment, { enum: -> { APPLINK_TREATMENT }}
    field :asset_feed_spec, 'object'
    field :authorization_category, { enum: -> { AUTHORIZATION_CATEGORY }}
    field :body, 'string'
    field :branded_content, 'object'
    field :branded_content_boosting_type, { enum: -> { BRANDED_CONTENT_BOOSTING_TYPE }}
    field :bundle_folder_id, 'int'
    field :call_to_action, 'object'
    field :call_to_action_type, { enum: -> { CALL_TO_ACTION_TYPE }}
    field :categorization_criteria, { enum: -> { CATEGORIZATION_CRITERIA }}
    field :category_media_source, { enum: -> { CATEGORY_MEDIA_SOURCE }}
    field :contextual_multi_ads, 'object'
    field :creative_sourcing_spec, 'object'
    field :degrees_of_freedom_spec, 'object'
    field :destination_spec, 'object'
    field :dynamic_ad_voice, 'string'
    field :effective_authorization_category, { enum: -> { EFFECTIVE_AUTHORIZATION_CATEGORY }}
    field :effective_instagram_media_id, 'int'
    field :effective_instagram_story_id, 'int'
    field :effective_object_story_id, 'string'
    field :enable_direct_install, 'bool'
    field :enable_launch_instant_app, 'bool'
    field :existing_post_title, 'string'
    field :facebook_branded_content, 'object'
    field :format_transformation_spec, { list: 'object' }
    field :generative_asset_spec, 'object'
    field :id, 'int'
    field :image_crops, 'object'
    field :image_hash, 'string'
    field :image_url, 'string'
    field :instagram_branded_content, 'object'
    field :instagram_permalink_url, 'string'
    field :instagram_user_id, 'int'
    field :interactive_components_spec, 'object'
    field :link_og_id, 'int'
    field :link_url, 'string'
    field :media_sourcing_spec, 'object'
    field :media_type, { enum: -> { MEDIA_TYPE }}
    field :name, 'string'
    field :object_id, 'int'
    field :object_store_url, 'string'
    field :object_story_id, 'string'
    field :object_story_spec, 'object'
    field :object_type, { enum: -> { OBJECT_TYPE }}
    field :object_url, 'string'
    field :omnichannel_link_spec, 'object'
    field :page_id, 'int'
    field :page_welcome_message, 'string'
    field :photo_album_source_object_story_id, 'string'
    field :place_page_set_id, 'int'
    field :platform_customizations, 'object'
    field :playable_asset_id, 'int'
    field :portrait_customizations, 'object'
    field :product_set_id, 'int'
    field :recommender_settings, 'object'
    field :regional_regulation_disclaimer_spec, 'object'
    field :source_facebook_post_id, 'int'
    field :source_instagram_media_id, 'int'
    field :status, 'string'
    field :template_url, 'string'
    field :template_url_spec, 'object'
    field :threads_media_id, 'int'
    field :threads_user_id, 'int'
    field :thumbnail_id, 'int'
    field :thumbnail_url, 'string'
    field :title, 'string'
    field :uca_draft_version, 'int'
    field :url_tags, 'string'
    field :use_page_actor_override, 'bool'
    field :video_id, 'int'
    field :visual_hash, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
