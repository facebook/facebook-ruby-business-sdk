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

  class AdAccountGet < AdObject
    AUTH_FLOW_FOR_TRUST_TIER_STATE = [
      "EXPIRED",
      "FAILED",
      "IN_REVIEW",
      "NOT_REQUIRED",
      "NOT_STARTED",
      "PENDING",
      "PENDING_IN_REVIEW",
      "REVOKED",
      "VERIFIED",
    ]

    AUTHORIZED_COUNTRY_FOR_POLITICAL_ADS = [
      "AC",
      "AD",
      "AE",
      "AF",
      "AG",
      "AI",
      "AL",
      "AM",
      "AN",
      "AO",
      "AQ",
      "AR",
      "AS",
      "AT",
      "AU",
      "AW",
      "AX",
      "AZ",
      "BA",
      "BB",
      "BD",
      "BE",
      "BF",
      "BG",
      "BH",
      "BI",
      "BJ",
      "BL",
      "BM",
      "BN",
      "BO",
      "BQ",
      "BR",
      "BS",
      "BT",
      "BV",
      "BW",
      "BY",
      "BZ",
      "CA",
      "CC",
      "CD",
      "CF",
      "CG",
      "CH",
      "CI",
      "CK",
      "CL",
      "CM",
      "CN",
      "CO",
      "CR",
      "CU",
      "CV",
      "CW",
      "CX",
      "CY",
      "CZ",
      "DE",
      "DJ",
      "DK",
      "DM",
      "DO",
      "DZ",
      "EC",
      "EE",
      "EG",
      "EH",
      "ER",
      "ES",
      "ET",
      "FI",
      "FJ",
      "FK",
      "FM",
      "FO",
      "FR",
      "GA",
      "GB",
      "GD",
      "GE",
      "GF",
      "GG",
      "GH",
      "GI",
      "GL",
      "GM",
      "GN",
      "GP",
      "GQ",
      "GR",
      "GS",
      "GT",
      "GU",
      "GW",
      "GY",
      "HK",
      "HM",
      "HN",
      "HR",
      "HT",
      "HU",
      "ID",
      "IE",
      "IL",
      "IM",
      "IN",
      "IO",
      "IQ",
      "IR",
      "IS",
      "IT",
      "JE",
      "JM",
      "JO",
      "JP",
      "KE",
      "KG",
      "KH",
      "KI",
      "KM",
      "KN",
      "KP",
      "KR",
      "KW",
      "KY",
      "KZ",
      "LA",
      "LB",
      "LC",
      "LI",
      "LK",
      "LR",
      "LS",
      "LT",
      "LU",
      "LV",
      "LY",
      "MA",
      "MC",
      "MD",
      "ME",
      "MF",
      "MG",
      "MH",
      "MK",
      "ML",
      "MM",
      "MN",
      "MO",
      "MP",
      "MQ",
      "MR",
      "MS",
      "MT",
      "MU",
      "MV",
      "MW",
      "MX",
      "MY",
      "MZ",
      "NA",
      "NC",
      "NE",
      "NF",
      "NG",
      "NI",
      "NL",
      "NO",
      "NP",
      "NR",
      "NU",
      "NZ",
      "OM",
      "PA",
      "PE",
      "PF",
      "PG",
      "PH",
      "PK",
      "PL",
      "PM",
      "PN",
      "PR",
      "PS",
      "PT",
      "PW",
      "PY",
      "QA",
      "RE",
      "RO",
      "RS",
      "RU",
      "RW",
      "SA",
      "SB",
      "SC",
      "SD",
      "SE",
      "SG",
      "SH",
      "SI",
      "SJ",
      "SK",
      "SL",
      "SM",
      "SN",
      "SO",
      "SR",
      "SS",
      "ST",
      "SV",
      "SX",
      "SY",
      "SZ",
      "TC",
      "TD",
      "TF",
      "TG",
      "TH",
      "TJ",
      "TK",
      "TL",
      "TM",
      "TN",
      "TO",
      "TR",
      "TT",
      "TV",
      "TW",
      "TZ",
      "UA",
      "UG",
      "UM",
      "US",
      "UY",
      "UZ",
      "VA",
      "VC",
      "VE",
      "VG",
      "VI",
      "VN",
      "VU",
      "WF",
      "WS",
      "XK",
      "YE",
      "YT",
      "ZA",
      "ZM",
      "ZW",
    ]

    BRAND_SAFETY_EXCLUDED_TOPICS = [
      "FB_INSTREAM_REELS_NON_PARTNER_PUBLISHERS",
      "FB_REELS_NON_PARTNER_PUBLISHERS",
      "GAMING",
      "INSTREAM_LIVE",
      "INSTREAM_NON_PARTNER_PUBLISHERS",
      "NEWS",
      "POLITICS",
      "RELIGION_AND_SPIRITUALITY",
    ]

    BUSINESS_RESTRICTION_REASON = [
      "BANHAMMER",
      "EMAIL_REQUIRED",
      "NONE",
    ]

    BUSINESS_VERIFICATION_STATUS = [
      "EXPIRED",
      "FAILED",
      "INELIGIBLE",
      "NOT_VERIFIED",
      "PENDING",
      "PENDING_NEED_MORE_INFO",
      "PENDING_SUBMISSION",
      "REJECTED",
      "REVOKED",
      "VERIFIED",
    ]

    FLEX_SINGLE_OBJECTIVE = [
      "APP_PROMOTION",
      "GROUP_JOINS",
      "INSTAGRAM_PERFORMANCE",
      "LEADS",
      "NONE",
      "SALES",
      "TRAFFIC",
    ]

    MARKETING_MESSAGE_ENABLEMENT_STATUS = [
      "MARKETING_MESSAGE_ELIGIBLE_OPTIMIZATION_DISABLED",
      "MARKETING_MESSAGE_ELIGIBLE_OPTIMIZATION_ENABLED",
      "MARKETING_MESSAGE_INELIGIBLE",
    ]

    MODELED_REPORTING_TYPE = [
      "IOS14_ACCOUNT",
      "NONE",
    ]

    SEGMENT = [
      "HAIR",
      "HEAD",
      "NULL",
      "TAIL",
      "TORSO",
    ]

    STORED_BALANCE_STATUS = [
      "NEW_USER",
      "POSTPAY",
      "PREPAY",
      "STANDARD",
    ]


    field :account_controls, 'object'
    field :account_currency_ratio_to_usd, 'double'
    field :account_id, 'int'
    field :account_status, 'int'
    field :active_billing_date_preference, 'object'
    field :activities, 'object'
    field :ad_account_creation_request, 'object'
    field :ad_account_promotable_objects, 'object'
    field :ad_column_sizes, 'object'
    field :ad_limits_insights, 'object'
    field :ad_place_page_sets, 'object'
    field :ad_quick_views, 'object'
    field :ad_report_builder_reports, 'object'
    field :ad_studies, 'object'
    field :adcreatives, 'object'
    field :addrafts, 'object'
    field :adimages, 'object'
    field :adlabels, 'object'
    field :adrules_count_by_type, 'object'
    field :adrules_history, 'object'
    field :adrules_library, 'object'
    field :ads, 'object'
    field :ads_creation_saved_state, 'object'
    field :ads_paused, 'bool'
    field :ads_volume, 'object'
    field :adsets, 'object'
    field :adspaymentcycle, 'object'
    field :adspixels, 'object'
    field :adtrust_dsl, 'double'
    field :advertisable_applications, 'object'
    field :advideos, 'object'
    field :age, 'double'
    field :agencies, 'object'
    field :agency_client_declaration, 'object'
    field :agency_fee_config, 'object'
    field :ai_generated_features_test_framework_enrolled, 'bool'
    field :all_capabilities, { list: 'string' }
    field :all_payment_methods, 'object'
    field :am_oneshop_settings, 'object'
    field :amount_spent, 'string'
    field :amount_spent_history, { list: 'object' }
    field :applications, 'object'
    field :applied_publisher_block_lists, 'object'
    field :archived_adgroup_count, 'int'
    field :archived_campaign_count, 'int'
    field :archived_campaign_group_count, 'int'
    field :asset_feed_spec_from_existing_post, 'object'
    field :asset_feed_spec_from_instagram_media, 'object'
    field :asset_score, 'double'
    field :assigned_partners, 'object'
    field :assigned_users, 'object'
    field :attr_window_deprecation_group, 'string'
    field :audiencesharing_recipientaccounts, 'object'
    field :auth_flow_for_trust_tier_state, { enum: -> { AUTH_FLOW_FOR_TRUST_TIER_STATE }}
    field :authorized_country_for_political_ads, { enum: -> { AUTHORIZED_COUNTRY_FOR_POLITICAL_ADS }}
    field :automatic_creative_optimization_test_framework_enrolled, 'bool'
    field :average_daily_campaign_budget, 'string'
    field :average_daily_campaign_group_budget, 'string'
    field :average_lifetime_campaign_budget, 'string'
    field :average_lifetime_campaign_group_budget, 'string'
    field :balance, 'string'
    field :brand_safety_content_filter_levels, { list: 'string' }
    field :brand_safety_excluded_topics, { list: { enum: -> { BRAND_SAFETY_EXCLUDED_TOPICS }} }
    field :business, 'object'
    field :business_ad_account_requests, 'object'
    field :business_city, 'string'
    field :business_country_code, 'string'
    field :business_name, 'string'
    field :business_restriction_reason, { enum: -> { BUSINESS_RESTRICTION_REASON }}
    field :business_state, 'string'
    field :business_street, 'string'
    field :business_street2, 'string'
    field :business_verification_status, { enum: -> { BUSINESS_VERIFICATION_STATUS }}
    field :business_zip, 'string'
    field :businessprojects, 'object'
    field :call_ads_ad_account_similar_advertiser_budget_recommendation, 'double'
    field :call_ads_similar_advertiser_budget_recommendation, 'object'
    field :campaign_group_with_cbo, 'object'
    field :campaigns, 'object'
    field :can_bypass_fs_check, 'bool'
    field :can_create_brand_lift_study, 'bool'
    field :can_pay_now, 'bool'
    field :can_remove_payment_methods, 'bool'
    field :can_repay_now, 'bool'
    field :can_see_collaborative_ads_reporting, 'bool'
    field :capabilities, { list: 'string' }
    field :connected_instagram_accounts, 'object'
    field :cpas_campaign_default_budget, 'int'
    field :cpas_campaign_group_default_budget, 'int'
    field :created_time, 'mixed'
    field :creation_packages, 'object'
    field :creative_text_suggestions, 'object'
    field :ctwa_smb_enforcing_days_left, 'int'
    field :ctx_advertiser_sabr_lifetime_duration_recommendation, 'int'
    field :ctx_dfo_objective_defaults, 'object'
    field :ctx_flexible_format_targeting, 'bool'
    field :currency, 'string'
    field :current_addrafts, 'object'
    field :current_unbilled_spend, 'object'
    field :current_unpaid_unrepaid_invoice, 'object'
    field :custom_audience_info, 'object'
    field :customaudiences, 'object'
    field :customaudiencestos, 'object'
    field :customconversions, 'object'
    field :customer_po_number, 'string'
    field :daily_spend_limit, 'object'
    field :dcaf, 'bool'
    field :default_dsa_beneficiary, 'string'
    field :default_dsa_payor, 'string'
    field :default_unified_attribution_spec, { list: 'object' }
    field :default_values, 'object'
    field :disable_reason, 'int'
    field :domain_and_site_links, 'object'
    field :dsa_recommendations, 'object'
    field :dynamic_probation_dsl, 'double'
    field :end_advertiser, 'int'
    field :end_advertiser_name, 'string'
    field :existing_customers, { list: 'string' }
    field :expired_funding_source_details, 'object'
    field :extended_credit, 'object'
    field :extended_credit_info, 'object'
    field :extended_credit_invoice_group, 'object'
    field :failed_delivery_checks, { list: 'object' }
    field :fb_entity, 'int'
    field :flex_single_objective, { enum: -> { FLEX_SINGLE_OBJECTIVE }}
    field :funding_source, 'int'
    field :funding_source_details, 'object'
    field :generatepreviews, 'object'
    field :has_active_skan_campaign_groups, 'bool'
    field :has_combo_cards_on_file, 'bool'
    field :has_extended_credit, 'bool'
    field :has_migrated_permissions, 'bool'
    field :has_page_authorized_adaccount, 'bool'
    field :has_personal_access, 'bool'
    field :has_purchase_optimization_eligible_page, 'bool'
    field :has_repay_processing_invoices, 'bool'
    field :has_started_purchase_optimized_ctm_ad_within_1d, 'bool'
    field :has_value_rule_set, 'bool'
    field :id, 'string'
    field :if_viewer_has_permission_to_advertise, 'bool'
    field :impacting_ad_studies, 'object'
    field :incremental_conversion_optimization_ad_studies, { list: 'object' }
    field :insights, 'object'
    field :instagram_accounts, 'object'
    field :invoicing_emails, 'object'
    field :ios_fourteen_campaign_limits, 'object'
    field :is_attribution_spec_system_default, 'bool'
    field :is_ba_skip_delayed_eligible, 'bool'
    field :is_biz_migration_eligible, 'bool'
    field :is_br_entity_account, 'bool'
    field :is_business_allowed_to_advertise, 'bool'
    field :is_business_verification_eligible, 'bool'
    field :is_closed_by_advertiser_compromise_bot, 'bool'
    field :is_collaborative_ads_ad_account, 'bool'
    field :is_ctx_advertiser, 'bool'
    field :is_direct_deals_enabled, 'bool'
    field :is_disabled_umbrella, 'bool'
    field :is_eligible_for_advantage_plus_creative_regulated_category, 'bool'
    field :is_expanded_shopless_awpt_eligible, 'bool'
    field :is_in_3ds_authorization_enabled_market, 'bool'
    field :is_mi_billing_info_updated, 'bool'
    field :is_mm_lite_api_enabled, 'bool'
    field :is_new_advertiser, 'bool'
    field :is_notifications_enabled, 'bool'
    field :is_oba_opt_out, 'bool'
    field :is_omnichannel_campaign_eligible, 'bool'
    field :is_pageless_ctwa_eligible, 'bool'
    field :is_pending_numbers_exposure_flag_enabled, 'bool'
    field :is_personal, 'int'
    field :is_pinless_debit_eligible, 'bool'
    field :is_placement_soft_opt_out_enabled, 'bool'
    field :is_prepay_account, 'bool'
    field :is_retail_media_network, 'bool'
    field :is_shopless_awpt_eligible, 'bool'
    field :is_simplified_creation_only_111_eligible, 'bool'
    field :is_simplified_creation_segment_eligible, 'bool'
    field :is_tax_id_required, 'bool'
    field :is_tier_0, 'bool'
    field :is_tier_0_full, 'bool'
    field :is_tier_1, 'bool'
    field :is_tier_restricted, 'bool'
    field :is_update_timezone_currency_too_recently, 'bool'
    field :is_user_allowed_to_advertise, 'bool'
    field :is_using_higher_daily_flex_rate, 'bool'
    field :is_value_rules_smart_default_on, 'bool'
    field :is_wa_cloud_api_user, 'bool'
    field :is_youth_ads_pao_basic_advertiser, 'bool'
    field :is_youth_ads_pao_basic_advertiser_announcement_eligible, 'bool'
    field :last_spend_time, 'int'
    field :last_used_time, 'int'
    field :liable_address, 'object'
    field :liable_addresses, 'object'
    field :liable_to_org, 'object'
    field :light_adsets, 'object'
    field :light_campaigns, 'object'
    field :lightads, 'object'
    field :live_video_advertiser_details, 'object'
    field :marketing_message_enablement_status, { enum: -> { MARKETING_MESSAGE_ENABLEMENT_STATUS }}
    field :marketing_messages_settings, 'object'
    field :max_bid, 'object'
    field :max_billing_threshold, 'object'
    field :maybe_pac_internal_post_from_primary_post, 'string'
    field :media_agency, 'int'
    field :min_billing_threshold, 'object'
    field :min_campaign_group_spend_cap, 'string'
    field :min_daily_budget, 'int'
    field :min_live_boosting_budget, 'int'
    field :min_payment, 'object'
    field :minimum_budgets, 'object'
    field :modeled_reporting_type, { enum: -> { MODELED_REPORTING_TYPE }}
    field :moo_default_conversion_bid, 'int'
    field :name, 'string'
    field :naming_templates, 'object'
    field :next_bill_date, 'mixed'
    field :offline_conversion_data_sets, 'object'
    field :offsite_pixels_tos_accepted, 'bool'
    field :onbehalf_requests, 'object'
    field :opportunity_score, 'double'
    field :opportunity_score_weight, 'int'
    field :owner, 'int'
    field :owner_business, 'object'
    field :page_authorized_country_for_political_ads, { list: 'object' }
    field :pages_in_authorizations, { list: 'object' }
    field :partner, 'int'
    field :payment_options, 'object'
    field :pending_billing_date_preference, 'object'
    field :prepay_account_balance, 'object'
    field :promote_pages, 'object'
    field :promotion_metadata, { list: 'object' }
    field :promotion_metadata_live_crawl, { list: 'object' }
    field :publisher_block_lists, 'object'
    field :reachestimate, 'object'
    field :reachfrequencypredictions, 'object'
    field :recommendations, 'object'
    field :rf_spec, 'object'
    field :sales_segment_v2, 'string'
    field :saved_audiences, 'object'
    field :segment, { enum: -> { SEGMENT }}
    field :send_bill_to_address, 'object'
    field :send_bill_to_addresses, 'object'
    field :show_improved_boleto, 'bool'
    field :show_sac_campaign_group_input, 'bool'
    field :site_links_live_crawl, { list: 'object' }
    field :sold_to_address, 'object'
    field :sold_to_addresses, 'object'
    field :sold_to_org, 'object'
    field :spend_cap, 'string'
    field :spend_cap_history, { list: 'object' }
    field :spendlimits, 'object'
    field :stored_balance_status, { enum: -> { STORED_BALANCE_STATUS }}
    field :subscribed_apps, 'object'
    field :targetingbrowse, 'object'
    field :targetingsearch, 'object'
    field :targetingsuggestions, 'object'
    field :tax_country, 'string'
    field :tax_exempt, 'bool'
    field :tax_id, 'string'
    field :tax_id_status, 'int'
    field :tax_id_type, 'string'
    field :timezone_id, 'int'
    field :timezone_name, 'string'
    field :timezone_offset_hours_utc, 'double'
    field :tos_accepted, 'hash'
    field :total_prepay_balance, 'object'
    field :tracking, 'object'
    field :transactions, 'object'
    field :user_access_expire_time, 'int'
    field :user_role, 'string'
    field :user_settings, 'object'
    field :user_tasks, { list: 'string' }
    field :user_tos_accepted, 'hash'
    field :userpermissions, 'object'
    field :users, 'object'
    field :value_rule_set, 'object'
    field :video_ads, 'object'
    field :viewable_business, 'object'
    field :viewable_businesses, { list: 'object' }
    has_no_get
    has_no_post
    has_no_delete

  end
end
