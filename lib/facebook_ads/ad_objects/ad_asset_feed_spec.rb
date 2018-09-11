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

  class AdAssetFeedSpec < AdObject
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


    field :ad_formats, { list: 'string' }
    field :additional_data, 'object'
    field :asset_customization_rules, { list: 'object' }
    field :autotranslate, { list: 'string' }
    field :bodies, { list: 'AdAssetFeedSpecBody' }
    field :call_to_action_types, { list: { enum: -> { CALL_TO_ACTION_TYPES }} }
    field :captions, { list: 'AdAssetFeedSpecCaption' }
    field :descriptions, { list: 'AdAssetFeedSpecDescription' }
    field :groups, { list: 'AdAssetFeedSpecGroupRule' }
    field :images, { list: 'AdAssetFeedSpecImage' }
    field :link_urls, { list: 'AdAssetFeedSpecLinkUrl' }
    field :optimization_type, 'string'
    field :titles, { list: 'AdAssetFeedSpecTitle' }
    field :videos, { list: 'AdAssetFeedSpecVideo' }
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
