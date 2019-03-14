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

  class ProductEventStat < AdObject
    DEVICE_TYPE = [
      "desktop",
      "mobile_android_phone",
      "mobile_android_tablet",
      "mobile_ipad",
      "mobile_iphone",
      "mobile_ipod",
      "mobile_phone",
      "mobile_tablet",
      "mobile_windows_phone",
      "unknown",
    ]

    EVENT = [
      "AddToCart",
      "AddToWishlist",
      "InitiateCheckout",
      "Lead",
      "Purchase",
      "Search",
      "ViewContent",
    ]

    BREAKDOWNS = [
      "DEVICE_TYPE",
    ]


    field :date_start, 'string'
    field :date_stop, 'string'
    field :device_type, { enum: -> { DEVICE_TYPE }}
    field :event, { enum: -> { EVENT }}
    field :event_source, 'ExternalEventSource'
    field :total_content_ids_matched_other_catalogs, 'int'
    field :total_matched_content_ids, 'int'
    field :total_unmatched_content_ids, 'int'
    field :unique_content_ids_matched_other_catalogs, 'int'
    field :unique_matched_content_ids, 'int'
    field :unique_unmatched_content_ids, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
