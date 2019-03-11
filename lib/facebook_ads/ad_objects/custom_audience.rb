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
      "AUTOMOTIVE_MODEL",
      "COLLABORATIVE_ADS",
      "HOME_LISTING",
      "MEDIA_TITLE",
      "PRODUCT",
      "TRAVEL",
      "VEHICLE",
      "VEHICLE_OFFER",
    ]

    CONTENT_TYPE = [
      "AUTOMOTIVE_MODEL",
      "DESTINATION",
      "FLIGHT",
      "HOME_LISTING",
      "HOTEL",
      "MEDIA_TITLE",
      "PRODUCT",
      "VEHICLE",
      "VEHICLE_OFFER",
    ]

    CUSTOMER_FILE_SOURCE = [
      "BOTH_USER_AND_PARTNER_PROVIDED",
      "PARTNER_PROVIDED_ONLY",
      "USER_PROVIDED_ONLY",
    ]

    SUBTYPE = [
      "APP",
      "BAG_OF_ACCOUNTS",
      "CLAIM",
      "CUSTOM",
      "ENGAGEMENT",
      "FOX",
      "LOOKALIKE",
      "MANAGED",
      "MEASUREMENT",
      "OFFLINE_CONVERSION",
      "PARTNER",
      "STUDY_RULE_AUDIENCE",
      "VIDEO",
      "WEBSITE",
    ]


    field :account_id, 'string'
    field :approximate_count, 'int'
    field :customer_file_source, 'string'
    field :data_source, 'CustomAudienceDataSource'
    field :data_source_types, 'string'
    field :datafile_custom_audience_uploading_status, 'string'
    field :delivery_status, 'CustomAudienceStatus'
    field :description, 'string'
    field :excluded_custom_audiences, { list: 'CustomAudience' }
    field :expiry_time, 'int'
    field :external_event_source, 'AdsPixel'
    field :household_audience, 'int'
    field :id, 'string'
    field :included_custom_audiences, { list: 'CustomAudience' }
    field :is_household, 'bool'
    field :is_snapshot, 'bool'
    field :is_value_based, 'bool'
    field :list_of_accounts, { list: 'string' }
    field :lookalike_audience_ids, { list: 'string' }
    field :lookalike_spec, 'LookalikeSpec'
    field :name, 'string'
    field :operation_status, 'CustomAudienceStatus'
    field :opt_out_link, 'string'
    field :permission_for_actions, 'AudiencePermissionForActions'
    field :pixel_id, 'string'
    field :retention_days, 'int'
    field :rev_share_policy_id, 'int'
    field :rule, 'string'
    field :rule_aggregation, 'string'
    field :rule_v2, 'string'
    field :seed_audience, 'int'
    field :sharing_status, 'CustomAudienceSharingStatus'
    field :study_spec, 'AudienceInsightsStudySpec'
    field :subtype, 'string'
    field :time_content_updated, 'int'
    field :time_created, 'int'
    field :time_updated, 'int'
    field :creation_params, 'hash'
    field :parent_audience_id, 'int'
    field :tags, { list: 'string' }
    field :associated_audience_id, 'int'
    field :is_household_exclusion, 'bool'
    field :allowed_domains, { list: 'string' }
    field :partner_reference_key, 'string'
    field :prefill, 'bool'
    field :inclusions, { list: 'object' }
    field :exclusions, { list: 'object' }
    field :countries, 'string'
    field :origin_audience_id, 'string'
    field :details, 'string'
    field :source, 'string'
    field :isprivate, 'bool'
    field :additionalmetadata, 'string'
    field :minage, 'int'
    field :maxage, 'int'
    field :expectedsize, 'int'
    field :gender, 'string'
    field :partnerid, 'string'
    field :accountid, 'string'
    field :claim_objective, { enum: -> { CLAIM_OBJECTIVE }}
    field :content_type, { enum: -> { CONTENT_TYPE }}
    field :event_source_group, 'string'
    field :product_set_id, 'string'
    field :event_sources, { list: 'hash' }
    field :video_group_ids, { list: 'string' }
    field :dataset_id, 'string'

    has_edge :adaccounts do |edge|
      edge.delete do |api|
        api.has_param :adaccounts, { list: 'string' }
      end
      edge.get 'AdAccount' do |api|
        api.has_param :permissions, 'string'
      end
      edge.post 'CustomAudience' do |api|
        api.has_param :adaccounts, { list: 'string' }
        api.has_param :permissions, 'string'
        api.has_param :replace, 'bool'
        api.has_param :relationship_type, { list: 'string' }
      end
    end

    has_edge :ads do |edge|
      edge.get 'Ad' do |api|
        api.has_param :effective_status, { list: 'string' }
        api.has_param :status, { list: 'string' }
      end
    end

    has_edge :capabilities do |edge|
      edge.delete do |api|
        api.has_param :adaccounts, { list: 'string' }
      end
      edge.post do |api|
        api.has_param :accounts_capabilities, 'string'
        api.has_param :relationship_type, { list: 'string' }
      end
    end

    has_edge :data do |edge|
      edge.post do |api|
        api.has_param :action_type, { enum: %w{add match optout remove }}
        api.has_param :encoding, { enum: %w{md5 plain sha256 }}
        api.has_param :entry_type, { enum: %w{0 1 2 3 4 5 6 }}
        api.has_param :entries, { list: 'string' }
        api.has_param :session_id, 'int'
        api.has_param :batch_seq, 'int'
        api.has_param :last_batch_flag, 'bool'
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

    has_edge :shared_account_info do |edge|
      edge.get 'CustomAudiencesharedAccountInfo'
    end

    has_edge :upload do |edge|
      edge.delete do |api|
        api.has_param :session, 'object'
        api.has_param :payload, 'object'
        api.has_param :namespace, 'string'
      end
      edge.post 'CustomAudience' do |api|
        api.has_param :session, 'object'
        api.has_param :payload, 'object'
        api.has_param :namespace, 'string'
      end
    end

    has_edge :users do |edge|
      edge.delete do |api|
        api.has_param :session, 'object'
        api.has_param :payload, 'object'
        api.has_param :namespace, 'string'
      end
      edge.post 'CustomAudience' do |api|
        api.has_param :session, 'object'
        api.has_param :payload, 'object'
        api.has_param :namespace, 'string'
      end
    end

  end
end
