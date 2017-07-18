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
  # This class is auto-genereated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class AdCreativeLinkDataCallToAction < AdObject
    TYPE = [
      "OPEN_LINK",
      "LIKE_PAGE",
      "SHOP_NOW",
      "PLAY_GAME",
      "INSTALL_APP",
      "USE_APP",
      "INSTALL_MOBILE_APP",
      "USE_MOBILE_APP",
      "BOOK_TRAVEL",
      "LISTEN_MUSIC",
      "LEARN_MORE",
      "SIGN_UP",
      "DOWNLOAD",
      "WATCH_MORE",
      "NO_BUTTON",
      "CALL_NOW",
      "APPLY_NOW",
      "BUY_NOW",
      "GET_OFFER",
      "GET_OFFER_VIEW",
      "GET_DIRECTIONS",
      "MESSAGE_PAGE",
      "MESSAGE_USER",
      "SUBSCRIBE",
      "SELL_NOW",
      "DONATE_NOW",
      "GET_QUOTE",
      "CONTACT_US",
      "RECORD_NOW",
      "VOTE_NOW",
      "REGISTER_NOW",
      "REQUEST_TIME",
      "SEE_MENU",
      "EMAIL_NOW",
      "OPEN_MOVIES",
    ]


    field :type, { enum: -> { TYPE }}
    field :value, 'AdCreativeLinkDataCallToActionValue'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
