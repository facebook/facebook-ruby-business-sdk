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

  class OfflineConversionDataSetUpload < AdObject
    ORDER = [
      "ASCENDING",
      "DESCENDING",
    ]

    SORT_BY = [
      "API_CALLS",
      "CREATION_TIME",
      "EVENT_TIME_MAX",
      "EVENT_TIME_MIN",
      "FIRST_UPLOAD_TIME",
      "IS_EXCLUDED_FOR_LIFT",
      "LAST_UPLOAD_TIME",
    ]


    field :api_calls, 'int'
    field :creation_time, 'int'
    field :duplicate_entries, 'int'
    field :event_stats, 'string'
    field :event_time_max, 'int'
    field :event_time_min, 'int'
    field :first_upload_time, 'int'
    field :id, 'string'
    field :is_excluded_for_lift, 'bool'
    field :last_upload_time, 'int'
    field :match_rate_approx, 'int'
    field :matched_entries, 'int'
    field :upload_tag, 'string'
    field :valid_entries, 'int'
    has_no_post
    has_no_delete

    has_edge :progress do |edge|
      edge.get
    end

    has_edge :pull_sessions do |edge|
      edge.get
    end

  end
end
