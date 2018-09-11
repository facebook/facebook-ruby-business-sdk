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

  class InsightsQueryResult < AdObject
    AGGREGATEBY = [
      "COUNT",
      "COUNT_IDENTIFIED_USERS",
      "USERS",
      "TOPK",
      "SUM",
      "SUM_PER_EVENT",
      "SUM_IDENTIFIED_USERS",
      "USD_SUM",
      "USD_SUM_PER_EVENT",
      "USD_SUM_IDENTIFIED_USERS",
      "USD_SUM_PER_USER",
      "UNKNOWN_USERS",
      "SCORE",
      "MEDIAN_VALUE",
      "MEDIAN_VALUE_PER_USER",
      "DAU",
      "WAU",
      "MAU",
      "PERCENTILES_COUNT",
      "PERCENTILES_VALUE",
      "PERCENTILES_USD_VALUE",
      "OVERLAP",
      "COUNT_PER_USER",
      "VALUE_PER_USER",
      "USD_VALUE_PER_USER",
      "SESSIONS_PER_JOURNEY",
      "CONVERTED_JOURNEY_PERCENT",
      "MEDIAN_JOURNEY_LENGTH",
      "AVERAGE_JOURNEY_LENGTH",
      "JOURNEY_CHANNEL_INCLUSION",
      "EVENT_SOURCE_IDS",
      "SESSION_BOUNCE_RATE",
      "JOURNEY_INCLUSION",
      "USER_PROPERTY_USER_COUNT",
    ]

    ECOSYSTEM = [
      "GAME",
      "NON_GAME",
    ]

    PERIOD = [
      "mins_15",
      "hourly",
      "daily",
      "weekly",
      "monthly",
      "lifetime",
      "days_28",
      "range",
    ]


    field :breakdowns, 'hash'
    field :time, 'datetime'
    field :value, 'string'
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
