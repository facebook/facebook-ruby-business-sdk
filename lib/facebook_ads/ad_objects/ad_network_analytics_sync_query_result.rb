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

  class AdNetworkAnalyticsSyncQueryResult < AdObject
    AGGREGATION_PERIOD = [
      "DAY",
      "TOTAL",
    ]

    BREAKDOWNS = [
      "AD_SERVER_CAMPAIGN_ID",
      "AD_SPACE",
      "AGE",
      "APP",
      "CLICKED_VIEW_TAG",
      "COUNTRY",
      "DEAL",
      "DEAL_AD",
      "DEAL_PAGE",
      "DELIVERY_METHOD",
      "DISPLAY_FORMAT",
      "FAIL_REASON",
      "GENDER",
      "INSTANT_ARTICLE_ID",
      "INSTANT_ARTICLE_PAGE_ID",
      "PLACEMENT",
      "PLACEMENT_NAME",
      "PLATFORM",
      "PROPERTY",
      "SDK_VERSION",
    ]

    METRICS = [
      "FB_AD_NETWORK_BIDDING_BID_RATE",
      "FB_AD_NETWORK_BIDDING_REQUEST",
      "FB_AD_NETWORK_BIDDING_RESPONSE",
      "FB_AD_NETWORK_BIDDING_REVENUE",
      "FB_AD_NETWORK_BIDDING_WIN_RATE",
      "FB_AD_NETWORK_CLICK",
      "FB_AD_NETWORK_CPM",
      "FB_AD_NETWORK_CTR",
      "FB_AD_NETWORK_FILLED_REQUEST",
      "FB_AD_NETWORK_FILL_RATE",
      "FB_AD_NETWORK_IMP",
      "FB_AD_NETWORK_IMPRESSION_RATE",
      "FB_AD_NETWORK_REQUEST",
      "FB_AD_NETWORK_REVENUE",
      "FB_AD_NETWORK_SHOW_RATE",
      "FB_AD_NETWORK_VIDEO_GUARANTEE_REVENUE",
      "FB_AD_NETWORK_VIDEO_MRC",
      "FB_AD_NETWORK_VIDEO_MRC_RATE",
      "FB_AD_NETWORK_VIDEO_VIEW",
      "FB_AD_NETWORK_VIDEO_VIEW_RATE",
    ]

    ORDERING_COLUMN = [
      "METRIC",
      "TIME",
      "VALUE",
    ]

    ORDERING_TYPE = [
      "ASCENDING",
      "DESCENDING",
    ]


    field :query_id, 'string'
    field :results, { list: 'object' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
