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

  class AdCreativeLinkDataCallToAction < AdObject
    TYPE = [
      "ADD_TO_CART",
      "APPLY_NOW",
      "BOOK_TRAVEL",
      "BUY",
      "BUY_NOW",
      "BUY_TICKETS",
      "CALL",
      "CALL_ME",
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
      "GET_QUOTE",
      "GET_SHOWTIMES",
      "INSTALL_APP",
      "INSTALL_MOBILE_APP",
      "LEARN_MORE",
      "LIKE_PAGE",
      "LISTEN_MUSIC",
      "LISTEN_NOW",
      "MESSAGE_PAGE",
      "MOBILE_DOWNLOAD",
      "MOMENTS",
      "NO_BUTTON",
      "OPEN_LINK",
      "ORDER_NOW",
      "PAY_TO_ACCESS",
      "PLAY_GAME",
      "PURCHASE_GIFT_CARDS",
      "RECORD_NOW",
      "REFER_FRIENDS",
      "REQUEST_TIME",
      "SAY_THANKS",
      "SEE_MORE",
      "SELL_NOW",
      "SEND_A_GIFT",
      "SEND_GIFT_MONEY",
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


    field :type, { enum: -> { TYPE }}
    field :value, 'AdCreativeLinkDataCallToActionValue'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
