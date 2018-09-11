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

  class VideoStats < AdObject
    METRICS = [
      "AVERAGE_WATCH_TIME",
      "LIFETIME_COMMENTS",
      "LIFETIME_REACTIONS",
      "LIFETIME_SHARES",
      "LIFETIME_SOCIAL_ACTIONS",
      "NET_FOLLOWERS",
      "UPLOADED_COMMENTS",
      "UPLOADED_REACTIONS",
      "UPLOADED_SHARES",
      "UPLOADED_SOCIAL_ACTIONS",
      "UPLOADED_REACH",
      "UPLOADED_VIEWS_3S",
      "UPLOADED_VIEWS_3S_ORGANIC",
      "UPLOADED_VIEWS_3S_PAID",
      "UPLOADED_WATCH_TIME_MINUTES",
      "UPLOADED_WATCH_TIME_MINUTES_ORGANIC",
      "UPLOADED_WATCH_TIME_MINUTES_PAID",
      "AD_CPM",
      "AD_IMPRESSIONS",
      "REVENUE",
      "RPM",
      "MINUTE_MONETIZABLE_VIEWS",
      "AD_SUBSIDY",
      "EARNING_WITH_SUBSIDY",
    ]

    REQUESTED_FIELDS = [
      "AGGREGATE",
      "TIME_SERIES",
    ]


    field :aggregate, { list: 'object' }
    field :error, 'string'
    field :metadata, { list: 'object' }
    field :time_series, { list: 'object' }
    field :totals, { list: 'object' }
    field :x_axis_breakdown, { list: { list: 'object' } }
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
