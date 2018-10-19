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

  class DirectDeal < AdObject
    STATUS = [
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
    ]


    field :adbreaks_enabled, 'bool'
    field :adset, 'AdSet'
    field :advertiser, 'object'
    field :advertiser_lead_email, 'string'
    field :advertiser_page, 'string'
    field :cpe_amount, 'int'
    field :cpe_currency, 'string'
    field :end_time, 'int'
    field :id, 'string'
    field :lifetime_budget_amount, 'int'
    field :lifetime_budget_currency, 'string'
    field :lifetime_impressions, 'int'
    field :name, 'string'
    field :pages, { list: 'string' }
    field :placements, { list: 'string' }
    field :priced_by, 'string'
    field :publisher_name, 'string'
    field :review_requirement, 'string'
    field :sales_lead_email, 'string'
    field :start_time, 'int'
    field :status, 'string'
    field :targeting, 'Targeting'
    field :third_party_integrated_deal, 'bool'
    has_no_post
    has_no_delete

    has_edge :applications do |edge|
      edge.get 'Application'
    end

  end
end
