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

  class PageCallToAction < AdObject
    ANDROID_DESTINATION_TYPE = [
      "APP_DEEPLINK",
      "BECOME_A_VOLUNTEER",
      "EMAIL",
      "FACEBOOK_APP",
      "FOLLOW",
      "MARKETPLACE_INVENTORY_PAGE",
      "MENU_ON_FACEBOOK",
      "MESSENGER",
      "MINI_SHOP",
      "MOBILE_CENTER",
      "NONE",
      "PHONE_CALL",
      "SHOP_ON_FACEBOOK",
      "WEBSITE",
    ]

    IPHONE_DESTINATION_TYPE = [
      "APP_DEEPLINK",
      "BECOME_A_VOLUNTEER",
      "EMAIL",
      "FACEBOOK_APP",
      "FOLLOW",
      "MARKETPLACE_INVENTORY_PAGE",
      "MENU_ON_FACEBOOK",
      "MESSENGER",
      "MINI_SHOP",
      "NONE",
      "PHONE_CALL",
      "SHOP_ON_FACEBOOK",
      "WEBSITE",
    ]

    TYPE = [
      "BECOME_A_VOLUNTEER",
      "BOOK_APPOINTMENT",
      "BOOK_NOW",
      "BUY_TICKETS",
      "CALL_NOW",
      "CHARITY_DONATE",
      "CONTACT_US",
      "DONATE_NOW",
      "EMAIL",
      "FOLLOW_PAGE",
      "GET_DIRECTIONS",
      "GET_OFFER",
      "GET_OFFER_VIEW",
      "INTERESTED",
      "LEARN_MORE",
      "LISTEN",
      "LOCAL_DEV_PLATFORM",
      "MESSAGE",
      "MOBILE_CENTER",
      "OPEN_APP",
      "ORDER_FOOD",
      "PLAY_MUSIC",
      "PLAY_NOW",
      "PURCHASE_GIFT_CARDS",
      "REQUEST_APPOINTMENT",
      "REQUEST_QUOTE",
      "SHOP_NOW",
      "SHOP_ON_FACEBOOK",
      "SIGN_UP",
      "VIEW_INVENTORY",
      "VIEW_MENU",
      "VIEW_SHOP",
      "VISIT_GROUP",
      "WATCH_NOW",
      "WOODHENGE_SUPPORT",
    ]

    WEB_DESTINATION_TYPE = [
      "BECOME_A_VOLUNTEER",
      "BECOME_SUPPORTER",
      "EMAIL",
      "FOLLOW",
      "MESSENGER",
      "MOBILE_CENTER",
      "NONE",
      "SHOP_ON_FACEBOOK",
      "WEBSITE",
    ]


    field :android_app, 'Application'
    field :android_deeplink, 'string'
    field :android_destination_type, 'string'
    field :android_package_name, 'string'
    field :android_url, 'string'
    field :created_time, 'datetime'
    field :email_address, 'string'
    field :from, 'Page'
    field :id, 'string'
    field :intl_number_with_plus, 'string'
    field :iphone_app, 'Application'
    field :iphone_deeplink, 'string'
    field :iphone_destination_type, 'string'
    field :iphone_url, 'string'
    field :status, 'string'
    field :type, 'string'
    field :updated_time, 'datetime'
    field :web_destination_type, 'string'
    field :web_url, 'string'

  end
end
