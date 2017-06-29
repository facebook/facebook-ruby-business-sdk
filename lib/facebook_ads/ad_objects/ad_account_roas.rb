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
  # This class is auto-genereated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class AdAccountRoas < AdObject
    FIELDS = [
      "adgroup_id",
      "arpu_180d",
      "arpu_1d",
      "arpu_30d",
      "arpu_365d",
      "arpu_3d",
      "arpu_7d",
      "arpu_90d",
      "campaign_group_id",
      "campaign_id",
      "date_start",
      "date_stop",
      "installs",
      "revenue",
      "revenue_180d",
      "revenue_1d",
      "revenue_30d",
      "revenue_365d",
      "revenue_3d",
      "revenue_7d",
      "revenue_90d",
      "spend",
      "yield_180d",
      "yield_1d",
      "yield_30d",
      "yield_365d",
      "yield_3d",
      "yield_7d",
      "yield_90d",
    ]


    field :adgroup_id, 'string'
    field :arpu_180d, 'double'
    field :arpu_1d, 'double'
    field :arpu_30d, 'double'
    field :arpu_365d, 'double'
    field :arpu_3d, 'double'
    field :arpu_7d, 'double'
    field :arpu_90d, 'double'
    field :campaign_group_id, 'string'
    field :campaign_id, 'string'
    field :date_start, 'string'
    field :date_stop, 'string'
    field :installs, 'int'
    field :revenue, 'double'
    field :revenue_180d, 'double'
    field :revenue_1d, 'double'
    field :revenue_30d, 'double'
    field :revenue_365d, 'double'
    field :revenue_3d, 'double'
    field :revenue_7d, 'double'
    field :revenue_90d, 'double'
    field :spend, 'double'
    field :yield_180d, 'double'
    field :yield_1d, 'double'
    field :yield_30d, 'double'
    field :yield_365d, 'double'
    field :yield_3d, 'double'
    field :yield_7d, 'double'
    field :yield_90d, 'double'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
