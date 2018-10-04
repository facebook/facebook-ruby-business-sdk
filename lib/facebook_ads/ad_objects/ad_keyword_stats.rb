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

  class AdKeywordStats < AdObject

    field :actions, { list: 'AdsActionStats' }
    field :clicks, 'int'
    field :cost_per_total_action, 'double'
    field :cost_per_unique_click, 'double'
    field :cpc, 'double'
    field :cpm, 'double'
    field :cpp, 'double'
    field :ctr, 'double'
    field :frequency, 'double'
    field :id, 'string'
    field :impressions, 'int'
    field :name, 'string'
    field :reach, 'int'
    field :spend, 'double'
    field :total_actions, 'int'
    field :total_unique_actions, 'int'
    field :unique_actions, { list: 'AdsActionStats' }
    field :unique_clicks, 'int'
    field :unique_ctr, 'double'
    field :unique_impressions, 'int'
    has_no_post
    has_no_delete

  end
end
