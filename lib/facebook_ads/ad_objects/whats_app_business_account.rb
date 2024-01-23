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
    TASKS = [
      "DEVELOP",
      "MANAGE",
      "MANAGE_EXTENSIONS",
      "MANAGE_PHONE",
      "MANAGE_PHONE_ASSETS",
      "MANAGE_TEMPLATES",
      "VIEW_COST",
      "VIEW_PHONE_ASSETS",
      "VIEW_TEMPLATES",
    ]

    CATEGORY = [
      "AUTHENTICATION",
      "MARKETING",
      "UTILITY",
    ]

    SUB_CATEGORY = [
      "CUSTOM",
      "ORDER_DETAILS",
      "ORDER_STATUS",
    ]


    field :account_review_status, 'string'
    field :analytics, 'object'
    field :business_verification_status, 'string'
    field :country, 'string'
    field :creation_time, 'int'
    field :currency, 'string'
    field :health_status, 'WhatsAppBusinessHealthStatusForMessageSend'
    field :id, 'string'
    field :is_enabled_for_insights, 'bool'
    field :message_template_namespace, 'string'
    field :name, 'string'
    field :on_behalf_of_business_info, 'object'
    field :owner_business, 'Business'
    field :owner_business_info, 'object'
    field :ownership_type, 'string'
    field :primary_funding_id, 'string'
    field :purchase_order_number, 'string'
    field :status, 'string'
    field :timezone_id, 'string'
    has_no_delete

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

    has_edge :conversation_analytics do |edge|
      edge.get do |api|
        api.has_param :conversation_categories, { list: { enum: %w{AUTHENTICATION MARKETING MARKETING_OPTIMIZED_DELIVERY SERVICE UNKNOWN UTILITY }} }
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

    has_edge :dcc_config do |edge|
      edge.get
    end

    has_edge :flows do |edge|
      edge.get
      edge.post do |api|
        api.has_param :categories, { list: { enum: %w{APPOINTMENT_BOOKING CONTACT_US CUSTOMER_SUPPORT LEAD_GENERATION OTHER SIGN_IN SIGN_UP SURVEY }} }
        api.has_param :clone_flow_id, 'string'
        api.has_param :endpoint_uri, 'string'
        api.has_param :name, 'string'
      end
    end

    has_edge :message_campaigns do |edge|
      edge.get
    end

    has_edge :message_template_previews do |edge|
      edge.get do |api|
        api.has_param :add_security_recommendation, 'bool'
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
        api.has_param :status, { list: { enum: %w{APPROVED DELETED DISABLED IN_APPEAL LIMIT_EXCEEDED PAUSED PENDING PENDING_DELETION REJECTED }} }
      end
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :allow_category_change, 'bool'
        api.has_param :category, { enum: -> { WhatsAppBusinessAccount::CATEGORY }}
        api.has_param :components, { list: 'hash' }
        api.has_param :cta_url_link_tracking_opted_out, 'bool'
        api.has_param :language, 'string'
        api.has_param :message_send_ttl_seconds, 'int'
        api.has_param :name, 'string'
        api.has_param :sub_category, { enum: -> { WhatsAppBusinessAccount::SUB_CATEGORY }}
      end
    end

    has_edge :migrate_message_templates do |edge|
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :page_number, 'int'
        api.has_param :source_waba_id, 'string'
      end
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
        api.has_param :metric_types, { list: { enum: %w{CLICKED DELIVERED READ SENT }} }
        api.has_param :start, 'datetime'
        api.has_param :template_ids, { list: 'string' }
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

  end
end
