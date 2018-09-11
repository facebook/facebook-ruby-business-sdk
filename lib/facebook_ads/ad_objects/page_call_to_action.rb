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
      "WEBSITE",
      "APP_DEEPLINK",
      "FACEBOOK_APP",
      "PHONE_CALL",
      "MESSENGER",
      "EMAIL",
      "SHOP_ON_FACEBOOK",
      "NONE",
    ]

    IPHONE_DESTINATION_TYPE = [
      "WEBSITE",
      "APP_DEEPLINK",
      "FACEBOOK_APP",
      "PHONE_CALL",
      "MESSENGER",
      "EMAIL",
      "SHOP_ON_FACEBOOK",
      "NONE",
    ]

    TYPE = [
      "BOOK_NOW",
      "CALL_NOW",
      "CHARITY_DONATE",
      "CONTACT_US",
      "DONATE_NOW",
      "MESSAGE",
      "OPEN_APP",
      "PLAY_NOW",
      "SHOP_NOW",
      "SIGN_UP",
      "WATCH_NOW",
      "GET_OFFER",
      "GET_OFFER_VIEW",
      "REQUEST_QUOTE",
      "BOOK_APPOINTMENT",
      "LISTEN",
      "EMAIL",
      "LEARN_MORE",
      "REQUEST_APPOINTMENT",
      "GET_DIRECTIONS",
      "BUY_TICKETS",
      "PLAY_MUSIC",
      "VISIT_GROUP",
      "SHOP_ON_FACEBOOK",
      "LOCAL_DEV_PLATFORM",
    ]

    WEB_DESTINATION_TYPE = [
      "EMAIL",
      "MESSENGER",
      "NONE",
      "WEBSITE",
      "SHOP_ON_FACEBOOK",
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
