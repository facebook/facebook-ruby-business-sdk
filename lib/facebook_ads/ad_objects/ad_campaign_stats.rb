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

  class AdCampaignStats < AdObject
    ACTION_ATTRIBUTION_DAYS_AFTER_CLICK = [
      "0",
      "1",
      "7",
      "14",
      "28",
    ]

    ACTION_ATTRIBUTION_DAYS_AFTER_IMP = [
      "0",
      "1",
      "7",
      "14",
      "28",
    ]


    field :account_id, 'string'
    field :actions, 'object'
    field :adgroup_id, 'string'
    field :campaign_id, 'string'
    field :campaign_ids, { list: 'string' }
    field :clicks, 'int'
    field :end_time, 'object'
    field :id, 'string'
    field :impressions, 'string'
    field :inline_actions, 'hash'
    field :io_number, 'int'
    field :is_completed, 'bool'
    field :line_number, 'int'
    field :newsfeed_position, 'object'
    field :social_clicks, 'int'
    field :social_impressions, 'string'
    field :social_spent, 'int'
    field :social_unique_clicks, 'int'
    field :social_unique_impressions, 'string'
    field :spent, 'int'
    field :start_time, 'object'
    field :topline_id, 'string'
    field :unique_clicks, 'int'
    field :unique_impressions, 'string'
    has_no_post
    has_no_delete

  end
end
