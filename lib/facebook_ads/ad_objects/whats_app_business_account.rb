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

  class WhatsAppBusinessAccount < AdObject
    BUSINESS_VERIFICATION_STATUS = [
      "expired",
      "failed",
      "ineligible",
      "not_verified",
      "pending",
      "pending_need_more_info",
      "pending_submission",
      "rejected",
      "revoked",
      "verified",
    ]

    WHATSAPP_BUSINESS_MANAGER_MESSAGING_LIMIT = [
      "TIER_100K",
      "TIER_10K",
      "TIER_250",
      "TIER_2K",
      "TIER_UNLIMITED",
      "UNTIERED",
    ]

    TASKS = [
      "DEVELOP",
      "MANAGE",
      "MANAGE_EXTENSIONS",
      "MANAGE_PHONE",
      "MANAGE_PHONE_ASSETS",
      "MANAGE_TEMPLATES",
      "MESSAGING",
      "VIEW_COST",
      "VIEW_PHONE_ASSETS",
      "VIEW_TEMPLATES",
    ]

    TYPE = [
      "INTERACTIVE",
      "TEXT",
    ]

    CATEGORY = [
      "AUTHENTICATION",
      "MARKETING",
      "UTILITY",
    ]

    DISPLAY_FORMAT = [
      "ORDER_DETAILS",
    ]

    PARAMETER_FORMAT = [
      "NAMED",
      "POSITIONAL",
    ]

    SEND_TYPE = [
      "CAMPAIGN",
      "DIRECT",
    ]

    SUB_CATEGORY = [
      "ORDER_DETAILS",
      "ORDER_STATUS",
      "RICH_ORDER_STATUS",
    ]

    PROVIDER_NAME = [
      "BILLDESK",
      "PAYU",
      "RAZORPAY",
      "UPI_VPA",
      "ZAAKPAY",
    ]


    field :account_review_status, 'string'
    field :analytics, 'object'
    field :auth_international_rate_eligibility, 'object'
    field :business_verification_status, { enum: -> { BUSINESS_VERIFICATION_STATUS }}
    field :country, 'string'
    field :creation_time, 'int'
    field :currency, 'string'
    field :health_status, 'WhatsAppBusinessHealthStatusForMessageSend'
    field :id, 'string'
    field :is_enabled_for_insights, 'bool'
    field :is_shared_with_partners, 'bool'
    field :linked_commerce_account, 'CommerceMerchantSettings'
    field :marketing_messages_lite_api_status, 'string'
    field :marketing_messages_onboarding_status, 'string'
    field :message_template_namespace, 'string'
    field :name, 'string'
    field :on_behalf_of_business_info, 'object'
    field :owner_business, 'Business'
    field :owner_business_info, 'object'
    field :ownership_type, 'string'
    field :primary_business_location, 'string'
    field :primary_funding_id, 'string'
    field :purchase_order_number, 'string'
    field :status, 'string'
    field :timezone_id, 'string'
    field :whatsapp_business_manager_messaging_limit, { enum: -> { WHATSAPP_BUSINESS_MANAGER_MESSAGING_LIMIT }}
    has_no_delete

    has_edge :activities do |edge|
      edge.get
    end

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :tasks, { list: { enum: -> { WhatsAppBusinessAccount::TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :audiences do |edge|
      edge.get
    end

    has_edge :call_analytics do |edge|
      edge.get do |api|
        api.has_param :country_codes, { list: 'string' }
        api.has_param :dimensions, { list: { enum: %w{COUNTRY DIRECTION PHONE TIER UNKNOWN }} }
        api.has_param :directions, { list: { enum: %w{BUSINESS_INITIATED UNKNOWN USER_INITIATED }} }
        api.has_param :end, 'int'
        api.has_param :granularity, { enum: %w{DAILY HALF_HOUR MONTHLY }}
        api.has_param :metric_types, { list: { enum: %w{AVERAGE_DURATION COST COUNT UNKNOWN }} }
        api.has_param :phone_numbers, { list: 'string' }
        api.has_param :start, 'int'
        api.has_param :tiers, { list: 'string' }
      end
    end

    has_edge :conversation_analytics do |edge|
      edge.get do |api|
        api.has_param :conversation_categories, { list: { enum: %w{AUTHENTICATION AUTHENTICATION_INTERNATIONAL MARKETING MARKETING_LITE SERVICE UTILITY }} }
        api.has_param :conversation_directions, { list: { enum: %w{BUSINESS_INITIATED UNKNOWN USER_INITIATED }} }
        api.has_param :conversation_types, { list: { enum: %w{FREE_ENTRY_POINT FREE_TIER REGULAR UNKNOWN }} }
        api.has_param :country_codes, { list: 'string' }
        api.has_param :dimensions, { list: { enum: %w{CONVERSATION_CATEGORY CONVERSATION_DIRECTION CONVERSATION_TYPE COUNTRY PHONE UNKNOWN }} }
        api.has_param :end, 'int'
        api.has_param :granularity, { enum: %w{DAILY HALF_HOUR MONTHLY }}
        api.has_param :metric_types, { list: { enum: %w{CONVERSATION COST UNKNOWN }} }
        api.has_param :phone_numbers, { list: 'string' }
        api.has_param :start, 'int'
      end
    end

    has_edge :dataset do |edge|
      edge.get 'Dataset'
      edge.post 'Dataset' do |api|
        api.has_param :dataset_name, 'string'
      end
    end

    has_edge :degrees_of_freedom_spec do |edge|
      edge.get
    end

    has_edge :flows do |edge|
      edge.get
      edge.post do |api|
        api.has_param :categories, { list: { enum: %w{APPOINTMENT_BOOKING CONTACT_US CUSTOMER_SUPPORT LEAD_GENERATION OTHER SHOPPING SIGN_IN SIGN_UP SURVEY }} }
        api.has_param :clone_flow_id, 'string'
        api.has_param :endpoint_uri, 'string'
        api.has_param :flow_json, 'string'
        api.has_param :name, 'string'
        api.has_param :publish, 'bool'
      end
    end

    has_edge :generate_payment_configuration_oauth_link do |edge|
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :configuration_name, 'string'
        api.has_param :redirect_url, 'string'
      end
    end

    has_edge :group_analytics do |edge|
      edge.get do |api|
        api.has_param :end, 'datetime'
        api.has_param :granularity, { enum: %w{DAILY }}
        api.has_param :group_ids, { list: 'string' }
        api.has_param :metric_types, { list: { enum: %w{CLICKS COST DELIVERED PARTICIPANTS_JOINED PARTICIPANTS_LEFT READ REPLIES SENT }} }
        api.has_param :start, 'datetime'
      end
    end

    has_edge :marketing_campaigns do |edge|
      edge.get
    end

    has_edge :message_campaigns do |edge|
      edge.get
    end

    has_edge :message_samples do |edge|
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :interactive, 'hash'
        api.has_param :text, 'hash'
        api.has_param :type, { enum: -> { WhatsAppBusinessAccount::TYPE }}
      end
    end

    has_edge :message_template_previews do |edge|
      edge.get do |api|
        api.has_param :add_security_recommendation, 'bool'
        api.has_param :business_name, 'string'
        api.has_param :button_types, { list: { enum: %w{OTP }} }
        api.has_param :category, { enum: %w{AUTHENTICATION }}
        api.has_param :code_expiration_minutes, 'int'
        api.has_param :languages, { list: 'string' }
      end
    end

    has_edge :message_templates do |edge|
      edge.delete do |api|
        api.has_param :hsm_id, 'string'
        api.has_param :name, 'string'
      end
      edge.get do |api|
        api.has_param :category, { list: { enum: -> { WhatsAppBusinessAccount::CATEGORY }} }
        api.has_param :content, 'string'
        api.has_param :language, { list: 'string' }
        api.has_param :name, 'string'
        api.has_param :name_or_content, 'string'
        api.has_param :quality_score, { list: { enum: %w{GREEN RED UNKNOWN YELLOW }} }
        api.has_param :source, { enum: %w{AUTO_GENERATED MANUAL }}
        api.has_param :status, { list: { enum: %w{APPROVED ARCHIVED DELETED DISABLED IN_APPEAL LIMIT_EXCEEDED PAUSED PENDING PENDING_DELETION REJECTED }} }
      end
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :allow_category_change, 'bool'
        api.has_param :bid_spec, 'hash'
        api.has_param :category, { enum: -> { WhatsAppBusinessAccount::CATEGORY }}
        api.has_param :components, { list: 'hash' }
        api.has_param :creative_sourcing_spec, 'hash'
        api.has_param :cta_url_link_tracking_opted_out, 'bool'
        api.has_param :degrees_of_freedom_spec, 'hash'
        api.has_param :display_format, { enum: -> { WhatsAppBusinessAccount::DISPLAY_FORMAT }}
        api.has_param :language, 'string'
        api.has_param :library_template_body_inputs, 'hash'
        api.has_param :library_template_button_inputs, { list: 'hash' }
        api.has_param :library_template_name, 'string'
        api.has_param :message_send_ttl_seconds, 'int'
        api.has_param :name, 'string'
        api.has_param :parameter_format, { enum: -> { WhatsAppBusinessAccount::PARAMETER_FORMAT }}
        api.has_param :send_type, { enum: -> { WhatsAppBusinessAccount::SEND_TYPE }}
        api.has_param :sub_category, { enum: -> { WhatsAppBusinessAccount::SUB_CATEGORY }}
      end
    end

    has_edge :migrate_flows do |edge|
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :source_flow_names, { list: 'string' }
        api.has_param :source_waba_id, 'string'
      end
    end

    has_edge :migrate_message_templates do |edge|
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :count, 'int'
        api.has_param :page_number, 'int'
        api.has_param :source_waba_id, 'string'
        api.has_param :template_ids, { list: 'string' }
      end
    end

    has_edge :payment_configuration do |edge|
      edge.delete do |api|
        api.has_param :configuration_name, 'string'
      end
      edge.get do |api|
        api.has_param :configuration_name, 'string'
      end
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :configuration_name, 'string'
        api.has_param :data_endpoint_url, 'string'
        api.has_param :merchant_category_code, 'string'
        api.has_param :merchant_vpa, 'string'
        api.has_param :provider_name, { enum: -> { WhatsAppBusinessAccount::PROVIDER_NAME }}
        api.has_param :purpose_code, 'string'
        api.has_param :redirect_url, 'string'
      end
    end

    has_edge :payment_configurations do |edge|
      edge.get
    end

    has_edge :phone_numbers do |edge|
      edge.get
      edge.post do |api|
        api.has_param :cc, 'string'
        api.has_param :migrate_phone_number, 'bool'
        api.has_param :phone_number, 'string'
        api.has_param :preverified_id, 'string'
        api.has_param :verified_name, 'string'
      end
    end

    has_edge :pricing_analytics do |edge|
      edge.get do |api|
        api.has_param :country_codes, { list: 'string' }
        api.has_param :dimensions, { list: { enum: %w{COUNTRY PHONE PRICING_CATEGORY PRICING_TYPE TIER }} }
        api.has_param :end, 'int'
        api.has_param :granularity, { enum: %w{DAILY HALF_HOUR MONTHLY }}
        api.has_param :metric_types, { list: { enum: %w{COST VOLUME }} }
        api.has_param :phone_numbers, { list: 'string' }
        api.has_param :pricing_categories, { list: { enum: %w{AUTHENTICATION AUTHENTICATION_INTERNATIONAL GROUP_MARKETING GROUP_MARKETING_LITE GROUP_SERVICE GROUP_UTILITY MARKETING MARKETING_LITE MARKETING_LITE_DYNAMIC SERVICE UTILITY }} }
        api.has_param :pricing_types, { list: { enum: %w{FREE_CUSTOMER_SERVICE FREE_ENTRY_POINT FREE_GROUP_CUSTOMER_SERVICE REGULAR }} }
        api.has_param :start, 'int'
        api.has_param :tiers, { list: 'string' }
      end
    end

    has_edge :product_catalogs do |edge|
      edge.delete do |api|
        api.has_param :catalog_id, 'string'
      end
      edge.get 'ProductCatalog'
      edge.post 'ProductCatalog' do |api|
        api.has_param :catalog_id, 'string'
      end
    end

    has_edge :schedules do |edge|
      edge.get
    end

    has_edge :set_obo_mobility_intent do |edge|
      edge.post do |api|
        api.has_param :solution_id, 'string'
      end
    end

    has_edge :set_solution_migration_intent do |edge|
      edge.post do |api|
        api.has_param :app_id, 'string'
        api.has_param :solution_id, 'string'
      end
    end

    has_edge :solutions do |edge|
      edge.get
    end

    has_edge :subscribed_apps do |edge|
      edge.delete
      edge.get
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :override_callback_uri, 'string'
        api.has_param :verify_token, 'string'
      end
    end

    has_edge :template_analytics do |edge|
      edge.get do |api|
        api.has_param :end, 'datetime'
        api.has_param :granularity, { enum: %w{DAILY }}
        api.has_param :metric_types, { list: { enum: %w{APP_ACTIVATIONS APP_ADD_TO_CART APP_CHECKOUTS_INITIATED APP_PURCHASES APP_PURCHASES_CONVERSION_VALUE CLICKED COST DELIVERED READ REPLIED SENT WEBSITE_ADD_TO_CART WEBSITE_CHECKOUTS_INITIATED WEBSITE_PURCHASES WEBSITE_PURCHASES_CONVERSION_VALUE }} }
        api.has_param :product_type, { enum: %w{CLOUD_API MARKETING_MESSAGES_LITE_API }}
        api.has_param :start, 'datetime'
        api.has_param :template_ids, { list: 'string' }
        api.has_param :use_waba_timezone, 'bool'
      end
    end

    has_edge :template_group_analytics do |edge|
      edge.get do |api|
        api.has_param :end, 'datetime'
        api.has_param :granularity, { enum: %w{DAILY }}
        api.has_param :metric_types, { list: { enum: %w{APP_ACTIVATIONS APP_ADD_TO_CART APP_CHECKOUTS_INITIATED APP_PURCHASES APP_PURCHASES_CONVERSION_VALUE CLICKED COST DELIVERED READ REPLIED SENT WEBSITE_ADD_TO_CART WEBSITE_CHECKOUTS_INITIATED WEBSITE_PURCHASES WEBSITE_PURCHASES_CONVERSION_VALUE }} }
        api.has_param :start, 'datetime'
        api.has_param :template_group_ids, { list: 'string' }
        api.has_param :use_waba_timezone, 'bool'
      end
    end

    has_edge :template_groups do |edge|
      edge.get
      edge.post do |api|
        api.has_param :description, 'string'
        api.has_param :name, 'string'
        api.has_param :whatsapp_business_templates, { list: 'string' }
      end
    end

    has_edge :template_performance_metrics do |edge|
      edge.get do |api|
        api.has_param :name, 'string'
        api.has_param :template_id, 'string'
      end
    end

    has_edge :upsert_message_templates do |edge|
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :category, { enum: -> { WhatsAppBusinessAccount::CATEGORY }}
        api.has_param :components, { list: 'hash' }
        api.has_param :languages, { list: 'string' }
        api.has_param :message_send_ttl_seconds, 'int'
        api.has_param :name, 'string'
      end
    end

    has_edge :welcome_message_sequences do |edge|
      edge.delete do |api|
        api.has_param :sequence_id, 'string'
      end
      edge.get 'CtxPartnerAppWelcomeMessageFlow' do |api|
        api.has_param :app_id, 'string'
        api.has_param :sequence_id, 'string'
      end
      edge.post do |api|
        api.has_param :name, 'string'
        api.has_param :sequence_id, 'string'
        api.has_param :welcome_message_sequence, 'object'
      end
    end

  end
end
