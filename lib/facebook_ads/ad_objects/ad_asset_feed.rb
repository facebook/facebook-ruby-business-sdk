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

  class AdAssetFeed < AdObject
    AD_FORMATS = [
      "AUTOMATIC_FORMAT",
      "CAROUSEL_IMAGE",
      "CAROUSEL_VIDEO",
      "SINGLE_IMAGE",
      "SINGLE_VIDEO",
    ]

    CALL_TO_ACTION_TYPES = [
      "OPEN_LINK",
      "LIKE_PAGE",
      "SHOP_NOW",
      "PLAY_GAME",
      "INSTALL_APP",
      "USE_APP",
      "CALL",
      "CALL_ME",
      "INSTALL_MOBILE_APP",
      "USE_MOBILE_APP",
      "MOBILE_DOWNLOAD",
      "BOOK_TRAVEL",
      "LISTEN_MUSIC",
      "WATCH_VIDEO",
      "LEARN_MORE",
      "SIGN_UP",
      "DOWNLOAD",
      "WATCH_MORE",
      "NO_BUTTON",
      "VISIT_PAGES_FEED",
      "APPLY_NOW",
      "BUY_NOW",
      "GET_OFFER",
      "GET_OFFER_VIEW",
      "BUY_TICKETS",
      "UPDATE_APP",
      "GET_DIRECTIONS",
      "BUY",
      "MESSAGE_PAGE",
      "DONATE",
      "SUBSCRIBE",
      "SAY_THANKS",
      "SELL_NOW",
      "SHARE",
      "DONATE_NOW",
      "GET_QUOTE",
      "CONTACT_US",
      "ORDER_NOW",
      "ADD_TO_CART",
      "VIDEO_ANNOTATION",
      "MOMENTS",
      "RECORD_NOW",
      "GET_SHOWTIMES",
      "LISTEN_NOW",
      "WOODHENGE_SUPPORT",
      "EVENT_RSVP",
      "WHATSAPP_MESSAGE",
      "FOLLOW_NEWS_STORYLINE",
    ]

    OPTIMIZATION_TYPE = [
      "REGULAR",
      "LANGUAGE",
      "PLACEMENT",
      "VIDEO_BANDWIDTH",
      "BRAND",
      "ASSET_CUSTOMIZATION",
      "DCO_PARITY",
    ]

    CALL_TO_ACTION_TYPE = [
      "OPEN_LINK",
      "LIKE_PAGE",
      "SHOP_NOW",
      "PLAY_GAME",
      "INSTALL_APP",
      "USE_APP",
      "CALL",
      "CALL_ME",
      "INSTALL_MOBILE_APP",
      "USE_MOBILE_APP",
      "MOBILE_DOWNLOAD",
      "BOOK_TRAVEL",
      "LISTEN_MUSIC",
      "WATCH_VIDEO",
      "LEARN_MORE",
      "SIGN_UP",
      "DOWNLOAD",
      "WATCH_MORE",
      "NO_BUTTON",
      "VISIT_PAGES_FEED",
      "APPLY_NOW",
      "BUY_NOW",
      "GET_OFFER",
      "GET_OFFER_VIEW",
      "BUY_TICKETS",
      "UPDATE_APP",
      "GET_DIRECTIONS",
      "BUY",
      "MESSAGE_PAGE",
      "DONATE",
      "SUBSCRIBE",
      "SAY_THANKS",
      "SELL_NOW",
      "SHARE",
      "DONATE_NOW",
      "GET_QUOTE",
      "CONTACT_US",
      "ORDER_NOW",
      "ADD_TO_CART",
      "VIDEO_ANNOTATION",
      "MOMENTS",
      "RECORD_NOW",
      "GET_SHOWTIMES",
      "LISTEN_NOW",
      "WOODHENGE_SUPPORT",
      "EVENT_RSVP",
      "WHATSAPP_MESSAGE",
      "FOLLOW_NEWS_STORYLINE",
    ]


    field :account, 'AdAccount'
    field :ad_formats, { list: 'string' }
    field :additional_data, 'object'
    field :autotranslate, { list: 'string' }
    field :id, 'string'
    field :optimization_type, 'string'
    field :images, { list: 'object' }
    field :videos, { list: 'object' }
    field :bodies, { list: 'object' }
    field :call_to_action_types, { list: { enum: -> { CALL_TO_ACTION_TYPES }} }
    field :descriptions, { list: 'object' }
    field :link_urls, { list: 'object' }
    field :titles, { list: 'object' }
    field :captions, { list: 'object' }
    field :groups, { list: 'object' }
    field :target_rules, { list: 'object' }
    field :asset_customization_rules, { list: 'object' }
    field :call_to_actions, { list: 'object' }
    field :image, 'object'
    field :video, 'object'
    field :call_to_action_type, { enum: -> { CALL_TO_ACTION_TYPE }}
    field :default_language, 'string'
    has_no_post
    has_no_delete

    has_edge :asset_customization_rules do |edge|
      edge.get
    end

    has_edge :bodies do |edge|
      edge.get
    end

    has_edge :call_to_action_types do |edge|
      edge.get
    end

    has_edge :call_to_actions do |edge|
      edge.get
    end

    has_edge :captions do |edge|
      edge.get
    end

    has_edge :descriptions do |edge|
      edge.get
    end

    has_edge :groups do |edge|
      edge.get
    end

    has_edge :images do |edge|
      edge.get
    end

    has_edge :link_urls do |edge|
      edge.get
    end

    has_edge :target_rules do |edge|
      edge.get
    end

    has_edge :titles do |edge|
      edge.get
    end

    has_edge :videos do |edge|
      edge.get
    end

  end
end
