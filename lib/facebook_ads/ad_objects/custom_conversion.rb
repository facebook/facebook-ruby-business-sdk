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

  class CustomConversion < AdObject
    CUSTOM_EVENT_TYPE = [
      "ADD_PAYMENT_INFO",
      "ADD_TO_CART",
      "ADD_TO_WISHLIST",
      "COMPLETE_REGISTRATION",
      "CONTENT_VIEW",
      "INITIATED_CHECKOUT",
      "LEAD",
      "OTHER",
      "PURCHASE",
      "SEARCH",
    ]


    field :account_id, 'string'
    field :aggregation_rule, 'string'
    field :creation_time, 'datetime'
    field :custom_event_type, { enum: -> { CUSTOM_EVENT_TYPE }}
    field :default_conversion_value, 'int'
    field :description, 'string'
    field :event_source_type, 'string'
    field :first_fired_time, 'datetime'
    field :id, 'string'
    field :is_archived, 'bool'
    field :last_fired_time, 'datetime'
    field :name, 'string'
    field :offline_conversion_data_set, 'object'
    field :pixel, 'AdsPixel'
    field :retention_days, 'int'
    field :rule, 'string'
    field :event_source_id, 'string'

    has_edge :activities do |edge|
      edge.get do |api|
        api.has_param :end_time, 'datetime'
        api.has_param :event_type, { enum: %w{conversion_create conversion_delete conversion_update }}
        api.has_param :start_time, 'datetime'
      end
    end

    has_edge :stats do |edge|
      edge.get 'CustomConversionStatsResult' do |api|
        api.has_param :aggregation, { enum: -> { CustomConversionStatsResult::AGGREGATION }}
        api.has_param :end_time, 'datetime'
        api.has_param :start_time, 'datetime'
      end
    end

  end
end
