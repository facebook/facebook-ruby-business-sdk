# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
      "GENERIC",
      "HOME_LISTING",
      "HOTEL",
      "LOCAL_SERVICE_BUSINESS",
      "MEDIA_TITLE",
      "OFFLINE_PRODUCT",
      "PRODUCT",
      "VEHICLE",
      "VEHICLE_OFFER",
    ]

    CUSTOMER_FILE_SOURCE = [
      "BOTH_USER_AND_PARTNER_PROVIDED",
      "PARTNER_PROVIDED_ONLY",
      "USER_PROVIDED_ONLY",
    ]

    SUBSCRIPTION_INFO = [
      "MESSENGER",
      "WHATSAPP",
    ]

    SUBTYPE = [
      "APP",
      "BAG_OF_ACCOUNTS",
      "BIDDING",
      "CLAIM",
      "CUSTOM",
      "ENGAGEMENT",
      "EXCLUSION",
      "FOX",
      "LOOKALIKE",
      "MANAGED",
      "MEASUREMENT",
      "MESSENGER_SUBSCRIBER_LIST",
      "OFFLINE_CONVERSION",
      "PARTNER",
      "PRIMARY",
      "REGULATED_CATEGORIES_AUDIENCE",
      "STUDY_RULE_AUDIENCE",
      "VIDEO",
      "WEBSITE",
    ]

    USE_FOR_PRODUCTS = [
      "ADS",
      "MARKETING_MESSAGES",
    ]

    ACTION_SOURCE = [
      "PHYSICAL_STORE",
      "WEBSITE",
    ]


    field :account_id, 'string'
    field :approximate_count_lower_bound, 'int'
    field :approximate_count_upper_bound, 'int'
    field :customer_file_source, 'string'
    field :data_source, 'CustomAudienceDataSource'
    field :data_source_types, 'string'
    field :datafile_custom_audience_uploading_status, 'string'
    field :delete_time, 'int'
    field :delivery_status, 'CustomAudienceStatus'
    field :description, 'string'
    field :excluded_custom_audiences, { list: 'CustomAudience' }
    field :external_event_source, 'AdsPixel'
    field :household_audience, 'int'
    field :id, 'string'
    field :included_custom_audiences, { list: 'CustomAudience' }
    field :is_eligible_for_sac_campaigns, 'bool'
    field :is_household, 'bool'
    field :is_snapshot, 'bool'
    field :is_value_based, 'bool'
    field :lookalike_audience_ids, { list: 'string' }
    field :lookalike_spec, 'LookalikeSpec'
    field :name, 'string'
    field :operation_status, 'CustomAudienceStatus'
    field :opt_out_link, 'string'
    field :owner_business, 'Business'
    field :page_deletion_marked_delete_time, 'int'
    field :permission_for_actions, 'AudiencePermissionForActions'
    field :pixel_id, 'string'
    field :regulated_audience_spec, 'LookalikeSpec'
    field :retention_days, 'int'
    field :rev_share_policy_id, 'int'
    field :rule, 'string'
    field :rule_aggregation, 'string'
    field :rule_v2, 'string'
    field :seed_audience, 'int'
    field :sharing_status, 'CustomAudienceSharingStatus'
    field :subtype, 'string'
    field :time_content_updated, 'int'
    field :time_created, 'int'
    field :time_updated, 'int'
    field :allowed_domains, { list: 'string' }
    field :associated_audience_id, 'int'
    field :claim_objective, { enum: -> { CLAIM_OBJECTIVE }}
    field :content_type, { enum: -> { CONTENT_TYPE }}
    field :countries, 'string'
    field :creation_params, 'hash'
    field :dataset_id, 'string'
    field :enable_fetch_or_create, 'bool'
    field :event_source_group, 'string'
    field :event_sources, { list: 'hash' }
    field :exclusions, { list: 'object' }
    field :facebook_page_id, 'string'
    field :inclusions, { list: 'object' }
    field :list_of_accounts, { list: 'int' }
    field :marketing_message_channels, 'object'
    field :origin_audience_id, 'string'
    field :parent_audience_id, 'int'
    field :partner_reference_key, 'string'
    field :prefill, 'bool'
    field :product_set_id, 'string'
    field :subscription_info, { list: { enum: -> { SUBSCRIPTION_INFO }} }
    field :use_for_products, { list: { enum: -> { USE_FOR_PRODUCTS }} }
    field :use_in_campaigns, 'bool'
    field :video_group_ids, { list: 'string' }
    field :whats_app_business_phone_number_id, 'string'

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
        api.has_param :relationship_type, { list: 'string' }
        api.has_param :replace, 'bool'
      end
    end

    has_edge :ads do |edge|
      edge.get 'Ad' do |api|
        api.has_param :effective_status, { list: 'string' }
        api.has_param :status, { list: 'string' }
      end
    end

    has_edge :health do |edge|
      edge.get 'CustomAudienceHealth' do |api|
        api.has_param :calculated_date, 'string'
        api.has_param :processed_date, 'string'
        api.has_param :value_aggregation_duration, 'int'
        api.has_param :value_country, 'string'
        api.has_param :value_currency, 'string'
        api.has_param :value_version, 'int'
      end
    end

    has_edge :salts do |edge|
      edge.get 'CustomAudienceSalts' do |api|
        api.has_param :params, { list: 'string' }
      end
      edge.post 'CustomAudience' do |api|
        api.has_param :salt, 'string'
        api.has_param :valid_from, 'datetime'
        api.has_param :valid_to, 'datetime'
      end
    end

    has_edge :sessions do |edge|
      edge.get 'CustomAudienceSession' do |api|
        api.has_param :session_id, 'int'
      end
    end

    has_edge :shared_account_info do |edge|
      edge.get 'CustomAudiencesharedAccountInfo'
    end

    has_edge :users do |edge|
      edge.delete do |api|
        api.has_param :namespace, 'string'
        api.has_param :payload, 'object'
        api.has_param :session, 'object'
      end
      edge.post 'CustomAudience' do |api|
        api.has_param :namespace, 'string'
        api.has_param :payload, 'object'
        api.has_param :session, 'object'
      end
    end

    has_edge :usersreplace do |edge|
      edge.post 'CustomAudience' do |api|
        api.has_param :namespace, 'string'
        api.has_param :payload, 'object'
        api.has_param :session, 'object'
      end
    end

  end
end
