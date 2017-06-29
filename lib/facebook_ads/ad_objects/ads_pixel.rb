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

  class AdsPixel < AdObject

    field :code, 'string'
    field :creation_time, 'datetime'
    field :id, 'string'
    field :is_created_by_business, 'bool'
    field :last_fired_time, 'datetime'
    field :name, 'string'
    field :owner_ad_account, 'AdAccount'
    field :owner_business, 'Business'
    has_no_delete

    has_edge :audiences do |edge|
      edge.get 'CustomAudience'
    end

    has_edge :shared_accounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
    end

    has_edge :shared_agencies do |edge|
      edge.get 'Business'
    end

    has_edge :stats do |edge|
      edge.get 'AdsPixelStatsResult' do |api|
        api.has_param :aggregation, { enum: -> { AdsPixelStatsResult::AGGREGATION }}
        api.has_param :end_time, 'datetime'
        api.has_param :event, 'string'
        api.has_param :start_time, 'datetime'
      end
    end

  end
end
