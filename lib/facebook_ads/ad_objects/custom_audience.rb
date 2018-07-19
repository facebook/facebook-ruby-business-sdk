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

  class CustomAudience < AdObject
    include CustomAudienceHelpers
    CLAIM_OBJECTIVE = [
      "AUTO_OFFER",
      "HOME_LISTING",
      "PRODUCT",
      "TRAVEL",
      "VEHICLE",
    ]

    CONTENT_TYPE = [
      "AUTO_OFFER",
      "DESTINATION",
      "FLIGHT",
      "HOME_LISTING",
      "HOTEL",
      "MEDIA_TITLE",
      "VEHICLE",
      "VEHICLE_OFFER",
    ]

    CUSTOMER_FILE_SOURCE = [
      "USER_PROVIDED_ONLY",
      "PARTNER_PROVIDED_ONLY",
      "BOTH_USER_AND_PARTNER_PROVIDED",
    ]

    SUBTYPE = [
      "CUSTOM",
      "WEBSITE",
      "APP",
      "OFFLINE_CONVERSION",
      "CLAIM",
      "PARTNER",
      "MANAGED",
      "VIDEO",
      "LOOKALIKE",
      "ENGAGEMENT",
      "DATA_SET",
      "BAG_OF_ACCOUNTS",
      "STUDY_RULE_AUDIENCE",
      "FOX",
    ]

    FIELDS = [
      "id",
      "account_id",
      "approximate_count",
      "customer_file_source",
      "data_source",
      "delivery_status",
      "description",
      "external_event_source",
      "is_value_based",
      "lookalike_audience_ids",
      "lookalike_spec",
      "name",
      "operation_status",
      "opt_out_link",
      "permission_for_actions",
      "pixel_id",
      "retention_days",
      "rule",
      "rule_aggregation",
      "subtype",
      "time_content_updated",
      "time_created",
      "time_updated",
    ]


    field :account_id, 'string'
    field :approximate_count, 'int'
    field :customer_file_source, 'string'
    field :data_source, 'CustomAudienceDataSource'
    field :delivery_status, 'CustomAudienceStatus'
    field :description, 'string'
    field :external_event_source, 'AdsPixel'
    field :id, 'string'
    field :is_value_based, 'bool'
    field :lookalike_audience_ids, { list: 'string' }
    field :lookalike_spec, 'LookalikeSpec'
    field :name, 'string'
    field :operation_status, 'CustomAudienceStatus'
    field :opt_out_link, 'string'
    field :permission_for_actions, 'CustomAudiencePermission'
    field :pixel_id, 'string'
    field :retention_days, 'int'
    field :rule, 'string'
    field :rule_aggregation, 'string'
    field :subtype, 'string'
    field :time_content_updated, 'int'
    field :time_created, 'int'
    field :time_updated, 'int'
    field :allowed_domains, { list: 'string' }
    field :claim_objective, { enum: -> { CLAIM_OBJECTIVE }}
    field :content_type, { enum: -> { CONTENT_TYPE }}
    field :dataset_id, 'string'
    field :event_source_group, 'string'
    field :event_sources, { list: 'hash' }
    field :list_of_accounts, { list: 'int' }
    field :origin_audience_id, 'string'
    field :prefill, 'bool'
    field :product_set_id, 'string'
    field :associated_audience_id, 'int'
    field :creation_params, 'hash'
    field :exclusions, { list: 'object' }
    field :inclusions, { list: 'object' }
    field :parent_audience_id, 'int'
    field :tags, { list: 'string' }

    has_edge :ad_accounts do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :adaccounts, { list: 'string' }
        api.has_param :permissions, 'string'
        api.has_param :relationship_type, { list: 'string' }
        api.has_param :replace, 'bool'
      end
    end

    has_edge :adaccounts do |edge|
      edge.delete do |api|
        api.has_param :adaccounts, { list: 'string' }
      end
      edge.get 'AdAccount' do |api|
        api.has_param :permissions, 'string'
      end
    end

    has_edge :ads do |edge|
      edge.get 'Ad' do |api|
        api.has_param :effective_status, { list: 'string' }
        api.has_param :status, { list: 'string' }
      end
    end

    has_edge :prefills do |edge|
      edge.get 'CustomAudiencePrefillState'
    end

    has_edge :sessions do |edge|
      edge.get 'CustomAudienceSession' do |api|
        api.has_param :session_id, 'int'
      end
    end

    has_edge :users do |edge|
      edge.delete do |api|
        api.has_param :namespace, 'string'
        api.has_param :payload, 'object'
        api.has_param :session, 'object'
      end
      edge.post 'User' do |api|
        api.has_param :namespace, 'string'
        api.has_param :payload, 'object'
        api.has_param :session, 'object'
      end
    end

  end
end
