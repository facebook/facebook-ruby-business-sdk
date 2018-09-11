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

  class EventSourceGroup < AdObject
    ROLE = [
      "ANALYST",
      "LIMITED_ANALYST",
    ]


    field :business, 'Business'
    field :event_sources, { list: 'ExternalEventSource' }
    field :id, 'string'
    field :name, 'string'
    has_no_delete

    has_edge :analytics_cohort_query do |edge|
      edge.get 'AnalyticsCohortQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :analytics_entity_user_config do |edge|
      edge.get 'AnalyticsEntityUserConfig'
    end

    has_edge :analytics_event_types do |edge|
      edge.get 'AnalyticsEventTypes'
    end

    has_edge :analytics_funnel_query do |edge|
      edge.get 'AnalyticsFunnelQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :analytics_query do |edge|
      edge.get 'AnalyticsQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :analytics_query_export do |edge|
      edge.get 'AnalyticsQueryExportResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :analytics_segments do |edge|
      edge.get 'AnalyticsSegment'
    end

    has_edge :assigned_partners do |edge|
      edge.get 'Business'
    end

    has_edge :business_object_tags do |edge|
      edge.get 'BusinessTag' do |api|
        api.has_param :business_id, 'string'
      end
    end

    has_edge :business_requests do |edge|
      edge.get 'BusinessRequest'
    end

    has_edge :connected_business_objects do |edge|
      edge.get 'BusinessObject' do |api|
        api.has_param :type, { enum: -> { BusinessObject::TYPE }}
        api.has_param :business_id, 'string'
      end
    end

    has_edge :publisher_insights do |edge|
      edge.get do |api|
        api.has_param :query_id, 'string'
      end
    end

    has_edge :shared_accounts do |edge|
      edge.get 'AdAccount'
      edge.post 'EventSourceGroup' do |api|
        api.has_param :accounts, { list: 'string' }
      end
    end

    has_edge :userpermissions do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get do |api|
        api.has_param :user, 'int'
      end
      edge.post 'EventSourceGroup' do |api|
        api.has_param :user, 'int'
        api.has_param :role, { enum: -> { EventSourceGroup::ROLE }}
      end
    end

  end
end
