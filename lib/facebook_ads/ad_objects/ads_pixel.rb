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

  class AdsPixel < AdObject
    SORT_BY = [
      "LAST_FIRED_TIME",
      "NAME",
    ]

    AUTOMATIC_MATCHING_FIELDS = [
      "country",
      "ct",
      "db",
      "em",
      "external_id",
      "fn",
      "ge",
      "ln",
      "ph",
      "st",
      "zp",
    ]

    DATA_USE_SETTING = [
      "ADVERTISING_AND_ANALYTICS",
      "ANALYTICS_ONLY",
      "EMPTY",
    ]

    FIRST_PARTY_COOKIE_STATUS = [
      "EMPTY",
      "FIRST_PARTY_COOKIE_DISABLED",
      "FIRST_PARTY_COOKIE_ENABLED",
    ]

    TASKS = [
      "ANALYZE",
      "EDIT",
    ]


    field :automatic_matching_fields, { list: 'string' }
    field :can_proxy, 'bool'
    field :code, 'string'
    field :creation_time, 'datetime'
    field :creator, 'User'
    field :data_use_setting, 'string'
    field :enable_automatic_matching, 'bool'
    field :first_party_cookie_status, 'string'
    field :id, 'string'
    field :is_created_by_business, 'bool'
    field :is_crm, 'bool'
    field :is_unavailable, 'bool'
    field :last_fired_time, 'datetime'
    field :name, 'string'
    field :owner_ad_account, 'AdAccount'
    field :owner_business, 'Business'
    has_no_delete

    has_edge :assigned_users do |edge|
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :tasks, { list: { enum: -> { AdsPixel::TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :da_checks do |edge|
      edge.get 'DaCheck' do |api|
        api.has_param :checks, { list: 'string' }
        api.has_param :connection_method, { enum: -> { DaCheck::CONNECTION_METHOD }}
      end
    end

    has_edge :events do |edge|
      edge.post 'AdsPixel' do |api|
        api.has_param :data, { list: 'string' }
        api.has_param :namespace_id, 'string'
        api.has_param :partner_agent, 'string'
        api.has_param :test_event_code, 'string'
        api.has_param :trace, 'int'
        api.has_param :upload_id, 'string'
        api.has_param :upload_source, 'string'
        api.has_param :upload_tag, 'string'
      end
    end

    has_edge :shadowtraffichelper do |edge|
      edge.post
    end

    has_edge :shared_accounts do |edge|
      edge.delete do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :account_id, 'string'
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
        api.has_param :event_source, 'string'
        api.has_param :start_time, 'datetime'
      end
    end

  end
end
