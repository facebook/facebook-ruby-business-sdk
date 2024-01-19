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

  class AdAssetFeedSpec < AdObject
    CALL_TO_ACTION_TYPES = [
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


    field :ad_formats, { list: 'string' }
    field :additional_data, 'AdAssetFeedAdditionalData'
    field :app_product_page_id, 'string'
    field :asset_customization_rules, { list: 'AdAssetFeedSpecAssetCustomizationRule' }
    field :autotranslate, { list: 'string' }
    field :bodies, { list: 'AdAssetFeedSpecBody' }
    field :call_to_action_types, { list: { enum: -> { CALL_TO_ACTION_TYPES }} }
    field :call_to_actions, { list: 'AdAssetFeedSpecCallToAction' }
    field :captions, { list: 'AdAssetFeedSpecCaption' }
    field :carousels, { list: 'AdAssetFeedSpecCarousel' }
    field :descriptions, { list: 'AdAssetFeedSpecDescription' }
    field :events, { list: 'AdAssetFeedSpecEvents' }
    field :groups, { list: 'AdAssetFeedSpecGroupRule' }
    field :images, { list: 'AdAssetFeedSpecImage' }
    field :link_urls, { list: 'AdAssetFeedSpecLinkUrl' }
    field :message_extensions, { list: 'AdAssetMessageExtensions' }
    field :onsite_destinations, { list: 'AdAssetOnsiteDestinations' }
    field :optimization_type, 'string'
    field :reasons_to_shop, 'bool'
    field :shops_bundle, 'bool'
    field :titles, { list: 'AdAssetFeedSpecTitle' }
    field :videos, { list: 'AdAssetFeedSpecVideo' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
