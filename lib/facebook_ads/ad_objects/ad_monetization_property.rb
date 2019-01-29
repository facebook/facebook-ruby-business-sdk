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

  class AdMonetizationProperty < AdObject
    AGGREGATION_PERIOD = [
      "HOUR",
      "DAY",
      "TOTAL",
    ]

    BREAKDOWNS = [
      "AGE",
      "APP",
      "COUNTRY",
      "DELIVERY_METHOD",
      "DISPLAY_FORMAT",
      "DEAL",
      "DEAL_AD",
      "DEAL_PAGE",
      "GENDER",
      "PLACEMENT",
      "PLATFORM",
      "PROPERTY",
      "CLICKED_VIEW_TAG",
      "FAIL_REASON",
    ]

    METRICS = [
      "FB_AD_NETWORK_BIDDING_REQUEST",
      "FB_AD_NETWORK_BIDDING_RESPONSE",
      "FB_AD_NETWORK_BIDDING_BID_RATE",
      "FB_AD_NETWORK_BIDDING_WIN_RATE",
      "FB_AD_NETWORK_REQUEST",
      "FB_AD_NETWORK_FILLED_REQUEST",
      "FB_AD_NETWORK_FILL_RATE",
      "FB_AD_NETWORK_IMP",
      "FB_AD_NETWORK_SHOW_RATE",
      "FB_AD_NETWORK_CLICK",
      "FB_AD_NETWORK_CTR",
      "FB_AD_NETWORK_BIDDING_REVENUE",
      "FB_AD_NETWORK_REVENUE",
      "FB_AD_NETWORK_CPM",
      "FB_AD_NETWORK_VIDEO_GUARANTEE_REVENUE",
      "FB_AD_NETWORK_VIDEO_VIEW",
      "FB_AD_NETWORK_VIDEO_VIEW_RATE",
      "FB_AD_NETWORK_VIDEO_MRC",
      "FB_AD_NETWORK_VIDEO_MRC_RATE",
      "FB_AD_NETWORK_WIN_RATE",
      "FB_AD_NETWORK_DIRECT_TOTAL_REVENUE",
      "FB_AD_NETWORK_DIRECT_PUBLISHER_BILL",
      "FB_AD_NETWORK_FAST_CLICK_RATE",
      "FB_AD_NETWORK_FAST_RETURN_RATE",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE",
      "FB_AD_NETWORK_FAST_CLICK_NUMERATOR",
      "FB_AD_NETWORK_FAST_CLICK_DENOMINATOR",
      "FB_AD_NETWORK_FAST_RETURN_NUMERATOR",
      "FB_AD_NETWORK_FAST_RETURN_DENOMINATOR",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE_NUMERATOR",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE_DENOMINATOR",
      "FB_AD_NETWORK_NO_FILL",
      "FB_AD_NETWORK_NO_BID",
    ]

    ORDERING_COLUMN = [
      "TIME",
      "VALUE",
      "METRIC",
    ]

    ORDERING_TYPE = [
      "ASCENDING",
      "DESCENDING",
    ]


    field :id, 'string'
    has_no_post
    has_no_delete

    has_edge :adnetworkanalytics do |edge|
      edge.get 'AdNetworkAnalyticsSyncQueryResult' do |api|
        api.has_param :aggregation_period, { enum: -> { AdMonetizationProperty::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { AdMonetizationProperty::BREAKDOWNS }} }
        api.has_param :filters, { list: 'hash' }
        api.has_param :limit, 'int'
        api.has_param :metrics, { list: { enum: -> { AdMonetizationProperty::METRICS }} }
        api.has_param :ordering_column, { enum: -> { AdMonetizationProperty::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { AdMonetizationProperty::ORDERING_TYPE }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
      edge.post 'AdMonetizationProperty' do |api|
        api.has_param :aggregation_period, { enum: -> { AdMonetizationProperty::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { AdMonetizationProperty::BREAKDOWNS }} }
        api.has_param :metrics, { list: { enum: -> { AdMonetizationProperty::METRICS }} }
        api.has_param :filters, { list: 'object' }
        api.has_param :limit, 'int'
        api.has_param :ordering_column, { enum: -> { AdMonetizationProperty::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { AdMonetizationProperty::ORDERING_TYPE }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :adnetworkanalytics_results do |edge|
      edge.get 'AdNetworkAnalyticsAsyncQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

  end
end
