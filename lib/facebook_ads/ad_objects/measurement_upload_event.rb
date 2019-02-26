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

  class MeasurementUploadEvent < AdObject
    AGGREGATION_LEVEL = [
      "DAILY",
      "NONE",
      "WEEKLY",
    ]

    EVENT_STATUS = [
      "CANCELCOMPLETED",
      "CANCELED",
      "COMPLETED",
      "FAILED",
      "STARTED",
      "UPLOADED",
    ]

    GROUP = [
      "MONDAY",
      "SUNDAY",
    ]

    LOOKBACK_WINDOW = [
      "DAYS30",
      "DAYS45",
      "DAYS60",
      "DAYS90",
    ]

    MATCH_UNIVERSE = [
      "FULL",
      "PII",
      "PIXEL",
    ]

    VERSION = [
      "EVALUATION",
      "WEEKLY",
    ]


    field :aggregation_level, 'string'
    field :conversion_end_date, 'string'
    field :conversion_start_date, 'string'
    field :event_status, 'string'
    field :group, 'string'
    field :id, 'string'
    field :lookback_window, 'string'
    field :match_universe, 'string'
    field :partner, 'Business'
    field :upload_end_time, 'datetime'
    field :upload_start_time, 'datetime'
    field :upload_tag, 'string'
    field :version, 'string'
    has_no_post
    has_no_delete

  end
end
