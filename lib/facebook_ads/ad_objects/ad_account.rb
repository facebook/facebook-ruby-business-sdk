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

  class AdAccount < AdObject
    CURRENCY = [
      "AED",
      "ARS",
      "AUD",
      "BDT",
      "BOB",
      "BRL",
      "CAD",
      "CHF",
      "CLP",
      "CNY",
      "COP",
      "CRC",
      "CZK",
      "DKK",
      "DZD",
      "EGP",
      "EUR",
      "GBP",
      "GTQ",
      "HKD",
      "HNL",
      "HUF",
      "IDR",
      "ILS",
      "INR",
      "ISK",
      "JPY",
      "KES",
      "KRW",
      "LKR",
      "MOP",
      "MXN",
      "MYR",
      "NGN",
      "NIO",
      "NOK",
      "NZD",
      "PEN",
      "PHP",
      "PKR",
      "PLN",
      "PYG",
      "QAR",
      "RON",
      "SAR",
      "SEK",
      "SGD",
      "THB",
      "TRY",
      "TWD",
      "UAH",
      "USD",
      "UYU",
      "VND",
      "ZAR",
    ]

    PERMITTED_TASKS = [
      "AA_ANALYZE",
      "ADVERTISE",
      "ANALYZE",
      "DRAFT",
      "MANAGE",
    ]

    TASKS = [
      "AA_ANALYZE",
      "ADVERTISE",
      "ANALYZE",
      "DRAFT",
      "MANAGE",
    ]

    BRAND_SAFETY_CONTENT_FILTER_LEVELS = [
      "AN_RELAXED",
      "AN_STANDARD",
      "AN_STRICT",
      "FACEBOOK_RELAXED",
      "FACEBOOK_STANDARD",
      "FACEBOOK_STRICT",
      "FEED_DNM",
      "FEED_RELAXED",
      "FEED_STANDARD",
      "FEED_STRICT",
      "UNINITIALIZED",
      "UNKNOWN",
    ]

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

    ACTION_SOURCE = [
      "PHYSICAL_STORE",
      "WEBSITE",
    ]


    field :account_id, 'string'
    field :account_status, 'int'
    field :ad_account_promotable_objects, 'AdAccountPromotableObjects'
    field :age, 'double'
    field :agency_client_declaration, 'AgencyClientDeclaration'
    field :all_capabilities, { list: 'string' }
    field :amount_spent, 'string'
    field :attribution_spec, { list: 'AttributionSpec' }
    field :balance, 'string'
    field :brand_safety_content_filter_levels, { list: 'string' }
    field :business, 'Business'
    field :business_city, 'string'
    field :business_country_code, 'string'
    field :business_name, 'string'
    field :business_state, 'string'
    field :business_street, 'string'
    field :business_street2, 'string'
    field :business_zip, 'string'
    field :can_create_brand_lift_study, 'bool'
    field :capabilities, { list: 'string' }
    field :created_time, 'datetime'
    field :currency, 'string'
    field :custom_audience_info, 'CustomAudienceGroup'
    field :default_dsa_beneficiary, 'string'
    field :default_dsa_payor, 'string'
    field :disable_reason, 'int'
    field :end_advertiser, 'string'
    field :end_advertiser_name, 'string'
    field :existing_customers, { list: 'string' }
    field :expired_funding_source_details, 'FundingSourceDetails'
    field :extended_credit_invoice_group, 'ExtendedCreditInvoiceGroup'
    field :failed_delivery_checks, { list: 'DeliveryCheck' }
    field :fb_entity, 'int'
    field :funding_source, 'string'
    field :funding_source_details, 'FundingSourceDetails'
    field :has_migrated_permissions, 'bool'
    field :has_page_authorized_adaccount, 'bool'
    field :id, 'string'
    field :io_number, 'string'
    field :is_attribution_spec_system_default, 'bool'
    field :is_ba_skip_delayed_eligible, 'bool'
    field :is_direct_deals_enabled, 'bool'
    field :is_in_3ds_authorization_enabled_market, 'bool'
    field :is_notifications_enabled, 'bool'
    field :is_personal, 'int'
    field :is_prepay_account, 'bool'
    field :is_tax_id_required, 'bool'
    field :liable_address, 'CrmAddress'
    field :line_numbers, { list: 'int' }
    field :media_agency, 'string'
    field :min_campaign_group_spend_cap, 'string'
    field :min_daily_budget, 'int'
    field :name, 'string'
    field :offsite_pixels_tos_accepted, 'bool'
    field :owner, 'string'
    field :owner_business, 'Business'
    field :partner, 'string'
    field :rf_spec, 'ReachFrequencySpec'
    field :send_bill_to_address, 'CrmAddress'
    field :show_checkout_experience, 'bool'
    field :sold_to_address, 'CrmAddress'
    field :spend_cap, 'string'
    field :tax_id, 'string'
    field :tax_id_status, 'int'
    field :tax_id_type, 'string'
    field :timezone_id, 'int'
    field :timezone_name, 'string'
    field :timezone_offset_hours_utc, 'double'
    field :tos_accepted, 'hash'
    field :user_access_expire_time, 'datetime'
    field :user_tasks, { list: 'string' }
    field :user_tos_accepted, 'hash'
    field :viewable_business, 'Business'
    has_no_delete

    has_edge :account_controls do |edge|
      edge.get 'AdAccountBusinessConstraints'
      edge.post 'AdAccountBusinessConstraints' do |api|
        api.has_param :audience_controls, 'object'
        api.has_param :placement_controls, 'object'
      end
    end

    has_edge :activities do |edge|
      edge.get 'AdActivity' do |api|
        api.has_param :add_children, 'bool'
        api.has_param :after, 'string'
        api.has_param :business_id, 'string'
        api.has_param :category, { enum: -> { AdActivity::CATEGORY }}
        api.has_param :data_source, { enum: -> { AdActivity::DATA_SOURCE }}
        api.has_param :extra_oids, { list: 'string' }
        api.has_param :limit, 'int'
        api.has_param :oid, 'string'
        api.has_param :since, 'datetime'
        api.has_param :uid, 'int'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :ad_place_page_sets do |edge|
      edge.get 'AdPlacePageSet'
      edge.post 'AdPlacePageSet' do |api|
        api.has_param :location_types, { list: { enum: -> { AdPlacePageSet::LOCATION_TYPES }} }
        api.has_param :name, 'string'
        api.has_param :parent_page, 'string'
        api.has_param :targeted_area_type, { enum: -> { AdPlacePageSet::TARGETED_AREA_TYPE }}
      end
    end

    has_edge :ad_place_page_sets_async do |edge|
      edge.post 'AdPlacePageSet' do |api|
        api.has_param :location_types, { list: { enum: -> { AdPlacePageSet::LOCATION_TYPES }} }
        api.has_param :name, 'string'
        api.has_param :parent_page, 'string'
        api.has_param :targeted_area_type, { enum: -> { AdPlacePageSet::TARGETED_AREA_TYPE }}
      end
    end

    has_edge :ad_saved_keywords do |edge|
      edge.get 'AdSavedKeywords' do |api|
        api.has_param :fields, { list: 'string' }
      end
    end

    has_edge :ad_studies do |edge|
      edge.get 'AdStudy'
    end

    has_edge :adcloudplayables do |edge|
      edge.get 'CloudGame'
    end

    has_edge :adcreatives do |edge|
      edge.get 'AdCreative'
      edge.post 'AdCreative' do |api|
        api.has_param :actor_id, 'int'
        api.has_param :ad_disclaimer_spec, 'hash'
        api.has_param :adlabels, { list: 'object' }
        api.has_param :applink_treatment, { enum: -> { AdCreative::APPLINK_TREATMENT }}
        api.has_param :asset_feed_spec, 'object'
        api.has_param :authorization_category, { enum: -> { AdCreative::AUTHORIZATION_CATEGORY }}
        api.has_param :body, 'string'
        api.has_param :branded_content, 'hash'
        api.has_param :branded_content_sponsor_page_id, 'string'
        api.has_param :bundle_folder_id, 'string'
        api.has_param :call_to_action, 'object'
        api.has_param :categorization_criteria, { enum: -> { AdCreative::CATEGORIZATION_CRITERIA }}
        api.has_param :category_media_source, { enum: -> { AdCreative::CATEGORY_MEDIA_SOURCE }}
        api.has_param :contextual_multi_ads, 'hash'
        api.has_param :creative_sourcing_spec, 'hash'
        api.has_param :degrees_of_freedom_spec, 'hash'
        api.has_param :destination_set_id, 'string'
        api.has_param :destination_spec, 'hash'
        api.has_param :dynamic_ad_voice, { enum: -> { AdCreative::DYNAMIC_AD_VOICE }}
        api.has_param :enable_launch_instant_app, 'bool'
        api.has_param :facebook_branded_content, 'hash'
        api.has_param :format_transformation_spec, { list: 'hash' }
        api.has_param :image_crops, 'hash'
        api.has_param :image_file, 'string'
        api.has_param :image_hash, 'string'
        api.has_param :image_url, 'string'
        api.has_param :instagram_branded_content, 'hash'
        api.has_param :instagram_permalink_url, 'string'
        api.has_param :instagram_user_id, 'string'
        api.has_param :interactive_components_spec, 'hash'
        api.has_param :is_dco_internal, 'bool'
        api.has_param :link_og_id, 'string'
        api.has_param :link_url, 'string'
        api.has_param :name, 'string'
        api.has_param :object_id, 'int'
        api.has_param :object_story_id, 'string'
        api.has_param :object_story_spec, 'AdCreativeObjectStorySpec'
        api.has_param :object_type, 'string'
        api.has_param :object_url, 'string'
        api.has_param :omnichannel_link_spec, 'hash'
        api.has_param :page_welcome_message, 'string'
        api.has_param :place_page_set_id, 'string'
        api.has_param :platform_customizations, 'object'
        api.has_param :playable_asset_id, 'string'
        api.has_param :portrait_customizations, 'hash'
        api.has_param :product_set_id, 'string'
        api.has_param :recommender_settings, 'hash'
        api.has_param :regional_regulation_disclaimer_spec, 'hash'
        api.has_param :source_instagram_media_id, 'string'
        api.has_param :template_url, 'string'
        api.has_param :template_url_spec, 'string'
        api.has_param :thumbnail_url, 'string'
        api.has_param :title, 'string'
        api.has_param :url_tags, 'string'
        api.has_param :use_page_actor_override, 'bool'
      end
    end

    has_edge :adcreativesbylabels do |edge|
      edge.get 'AdCreative' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { AdCreative::OPERATOR }}
      end
    end

    has_edge :adimages do |edge|
      edge.delete do |api|
        api.has_param :hash, 'string'
      end
      edge.get 'AdImage' do |api|
        api.has_param :biz_tag_id, 'int'
        api.has_param :business_id, 'string'
        api.has_param :hashes, { list: 'string' }
        api.has_param :minheight, 'int'
        api.has_param :minwidth, 'int'
        api.has_param :name, 'string'
        api.has_param :selected_hashes, { list: 'string' }
      end
      edge.post list: 'AdImage' do |api|
        api.has_param :bytes, 'string'
        api.has_param :copy_from, 'object'
        api.accepts_files!
      end
    end

    has_edge :adlabels do |edge|
      edge.get 'AdLabel'
      edge.post 'AdLabel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :adplayables do |edge|
      edge.get 'PlayableContent'
      edge.post 'PlayableContent' do |api|
        api.has_param :app_id, 'string'
        api.has_param :name, 'string'
        api.has_param :session_id, 'string'
        api.has_param :source, 'file'
        api.has_param :source_url, 'string'
        api.has_param :source_zip, 'file'
      end
    end

    has_edge :adrules_history do |edge|
      edge.get 'AdAccountAdRulesHistory' do |api|
        api.has_param :action, { enum: -> { AdAccountAdRulesHistory::ACTION }}
        api.has_param :evaluation_type, { enum: -> { AdAccountAdRulesHistory::EVALUATION_TYPE }}
        api.has_param :hide_no_changes, 'bool'
        api.has_param :object_id, 'string'
      end
    end

    has_edge :adrules_library do |edge|
      edge.get 'AdRule'
      edge.post 'AdRule' do |api|
        api.has_param :account_id, 'string'
        api.has_param :evaluation_spec, 'object'
        api.has_param :execution_spec, 'object'
        api.has_param :name, 'string'
        api.has_param :schedule_spec, 'object'
        api.has_param :status, { enum: -> { AdRule::STATUS }}
        api.has_param :ui_creation_source, { enum: -> { AdRule::UI_CREATION_SOURCE }}
      end
    end

    has_edge :ads do |edge|
      edge.get 'Ad' do |api|
        api.has_param :date_preset, { enum: -> { Ad::DATE_PRESET }}
        api.has_param :effective_status, { list: 'string' }
        api.has_param :time_range, 'hash'
        api.has_param :updated_since, 'int'
      end
      edge.post 'Ad' do |api|
        api.has_param :ad_schedule_end_time, 'datetime'
        api.has_param :ad_schedule_start_time, 'datetime'
        api.has_param :adlabels, { list: 'object' }
        api.has_param :adset_id, 'int'
        api.has_param :adset_spec, 'AdSet'
        api.has_param :audience_id, 'string'
        api.has_param :bid_amount, 'int'
        api.has_param :conversion_domain, 'string'
        api.has_param :creative, 'AdCreative'
        api.has_param :creative_asset_groups_spec, 'object'
        api.has_param :date_format, 'string'
        api.has_param :display_sequence, 'int'
        api.has_param :draft_adgroup_id, 'string'
        api.has_param :engagement_audience, 'bool'
        api.has_param :execution_options, { list: { enum: -> { Ad::EXECUTION_OPTIONS }} }
        api.has_param :include_demolink_hashes, 'bool'
        api.has_param :name, 'string'
        api.has_param :priority, 'int'
        api.has_param :source_ad_id, 'string'
        api.has_param :status, { enum: -> { Ad::STATUS }}
        api.has_param :tracking_specs, 'object'
        api.accepts_files!
      end
    end

    has_edge :ads_reporting_mmm_reports do |edge|
      edge.get 'AdsReportBuilderMmmReport' do |api|
        api.has_param :filtering, { list: 'hash' }
      end
    end

    has_edge :ads_reporting_mmm_schedulers do |edge|
      edge.get 'AdsReportBuilderMmmReportScheduler'
    end

    has_edge :ads_volume do |edge|
      edge.get 'AdAccountAdVolume' do |api|
        api.has_param :page_id, 'string'
        api.has_param :recommendation_type, { enum: -> { AdAccountAdVolume::RECOMMENDATION_TYPE }}
        api.has_param :show_breakdown_by_actor, 'bool'
      end
    end

    has_edge :adsbylabels do |edge|
      edge.get 'Ad' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { Ad::OPERATOR }}
      end
    end

    has_edge :adsets do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :date_preset, { enum: -> { AdSet::DATE_PRESET }}
        api.has_param :effective_status, { list: { enum: -> { AdSet::EFFECTIVE_STATUS }} }
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'hash'
        api.has_param :updated_since, 'int'
      end
      edge.post 'AdSet' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :adset_schedule, { list: 'object' }
        api.has_param :attribution_spec, { list: 'hash' }
        api.has_param :automatic_manual_state, { enum: -> { AdSet::AUTOMATIC_MANUAL_STATE }}
        api.has_param :bid_adjustments, 'object'
        api.has_param :bid_amount, 'int'
        api.has_param :bid_constraints, 'hash'
        api.has_param :bid_strategy, { enum: -> { AdSet::BID_STRATEGY }}
        api.has_param :billing_event, { enum: -> { AdSet::BILLING_EVENT }}
        api.has_param :budget_source, { enum: -> { AdSet::BUDGET_SOURCE }}
        api.has_param :budget_split_set_id, 'string'
        api.has_param :campaign_attribution, 'object'
        api.has_param :campaign_id, 'string'
        api.has_param :campaign_spec, 'object'
        api.has_param :creative_sequence, { list: 'string' }
        api.has_param :creative_sequence_repetition_pattern, { enum: -> { AdSet::CREATIVE_SEQUENCE_REPETITION_PATTERN }}
        api.has_param :daily_budget, 'int'
        api.has_param :daily_imps, 'int'
        api.has_param :daily_min_spend_target, 'int'
        api.has_param :daily_spend_cap, 'int'
        api.has_param :date_format, 'string'
        api.has_param :destination_type, { enum: -> { AdSet::DESTINATION_TYPE }}
        api.has_param :dsa_beneficiary, 'string'
        api.has_param :dsa_payor, 'string'
        api.has_param :end_time, 'datetime'
        api.has_param :execution_options, { list: { enum: -> { AdSet::EXECUTION_OPTIONS }} }
        api.has_param :existing_customer_budget_percentage, 'int'
        api.has_param :frequency_control_specs, { list: 'object' }
        api.has_param :full_funnel_exploration_mode, { enum: -> { AdSet::FULL_FUNNEL_EXPLORATION_MODE }}
        api.has_param :is_ba_skip_delayed_eligible, 'bool'
        api.has_param :is_dynamic_creative, 'bool'
        api.has_param :is_incremental_attribution_enabled, 'bool'
        api.has_param :is_sac_cfca_terms_certified, 'bool'
        api.has_param :lifetime_budget, 'int'
        api.has_param :lifetime_imps, 'int'
        api.has_param :lifetime_min_spend_target, 'int'
        api.has_param :lifetime_spend_cap, 'int'
        api.has_param :line_number, 'int'
        api.has_param :max_budget_spend_percentage, 'int'
        api.has_param :min_budget_spend_percentage, 'int'
        api.has_param :multi_optimization_goal_weight, { enum: -> { AdSet::MULTI_OPTIMIZATION_GOAL_WEIGHT }}
        api.has_param :name, 'string'
        api.has_param :optimization_goal, { enum: -> { AdSet::OPTIMIZATION_GOAL }}
        api.has_param :optimization_sub_event, { enum: -> { AdSet::OPTIMIZATION_SUB_EVENT }}
        api.has_param :pacing_type, { list: 'string' }
        api.has_param :promoted_object, 'object'
        api.has_param :rb_prediction_id, 'string'
        api.has_param :regional_regulated_categories, { list: { enum: -> { AdSet::REGIONAL_REGULATED_CATEGORIES }} }
        api.has_param :regional_regulation_identities, 'hash'
        api.has_param :rf_prediction_id, 'string'
        api.has_param :source_adset_id, 'string'
        api.has_param :start_time, 'datetime'
        api.has_param :status, { enum: -> { AdSet::STATUS }}
        api.has_param :targeting, 'Targeting'
        api.has_param :time_based_ad_rotation_id_blocks, { list: { list: 'int' } }
        api.has_param :time_based_ad_rotation_intervals, { list: 'int' }
        api.has_param :time_start, 'datetime'
        api.has_param :time_stop, 'datetime'
        api.has_param :topline_id, 'string'
        api.has_param :tune_for_category, { enum: -> { AdSet::TUNE_FOR_CATEGORY }}
      end
    end

    has_edge :adsetsbylabels do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { AdSet::OPERATOR }}
      end
    end

    has_edge :adspixels do |edge|
      edge.get 'AdsPixel' do |api|
        api.has_param :sort_by, { enum: -> { AdsPixel::SORT_BY }}
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :advertisable_applications do |edge|
      edge.get 'Application' do |api|
        api.has_param :app_id, 'string'
        api.has_param :business_id, 'string'
      end
    end

    has_edge :advideos do |edge|
      edge.delete do |api|
        api.has_param :video_id, 'string'
      end
      edge.get 'AdVideo' do |api|
        api.has_param :max_aspect_ratio, 'double'
        api.has_param :maxheight, 'int'
        api.has_param :maxlength, 'int'
        api.has_param :maxwidth, 'int'
        api.has_param :min_aspect_ratio, 'double'
        api.has_param :minheight, 'int'
        api.has_param :minlength, 'int'
        api.has_param :minwidth, 'int'
        api.has_param :title, 'string'
      end
      edge.post 'AdVideo' do |api|
        api.has_param :application_id, 'string'
        api.has_param :asked_fun_fact_prompt_id, 'int'
        api.has_param :audio_story_wave_animation_handle, 'string'
        api.has_param :chunk_session_id, 'string'
        api.has_param :composer_entry_picker, 'string'
        api.has_param :composer_entry_point, 'string'
        api.has_param :composer_entry_time, 'int'
        api.has_param :composer_session_events_log, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :composer_source_surface, 'string'
        api.has_param :composer_type, 'string'
        api.has_param :container_type, { enum: -> { AdVideo::CONTAINER_TYPE }}
        api.has_param :content_category, { enum: -> { AdVideo::CONTENT_CATEGORY }}
        api.has_param :creative_tools, 'string'
        api.has_param :description, 'string'
        api.has_param :embeddable, 'bool'
        api.has_param :end_offset, 'int'
        api.has_param :fbuploader_video_file_chunk, 'string'
        api.has_param :file_size, 'int'
        api.has_param :file_url, 'string'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :formatting, { enum: -> { AdVideo::FORMATTING }}
        api.has_param :fov, 'int'
        api.has_param :front_z_rotation, 'double'
        api.has_param :fun_fact_prompt_id, 'string'
        api.has_param :fun_fact_toastee_id, 'int'
        api.has_param :guide, { list: { list: 'int' } }
        api.has_param :guide_enabled, 'bool'
        api.has_param :initial_heading, 'int'
        api.has_param :initial_pitch, 'int'
        api.has_param :instant_game_entry_point_data, 'string'
        api.has_param :is_boost_intended, 'bool'
        api.has_param :is_group_linking_post, 'bool'
        api.has_param :is_partnership_ad, 'bool'
        api.has_param :is_voice_clip, 'bool'
        api.has_param :location_source_id, 'string'
        api.has_param :name, 'string'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :original_fov, 'int'
        api.has_param :original_projection_type, { enum: -> { AdVideo::ORIGINAL_PROJECTION_TYPE }}
        api.has_param :partnership_ad_ad_code, 'string'
        api.has_param :publish_event_id, 'int'
        api.has_param :referenced_sticker_id, 'string'
        api.has_param :replace_video_id, 'string'
        api.has_param :slideshow_spec, 'hash'
        api.has_param :source, 'file'
        api.has_param :source_instagram_media_id, 'string'
        api.has_param :spherical, 'bool'
        api.has_param :start_offset, 'int'
        api.has_param :swap_mode, { enum: -> { AdVideo::SWAP_MODE }}
        api.has_param :text_format_metadata, 'string'
        api.has_param :thumb, 'file'
        api.has_param :time_since_original_post, 'int'
        api.has_param :title, 'string'
        api.has_param :transcode_setting_properties, 'string'
        api.has_param :unpublished_content_type, { enum: -> { AdVideo::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :upload_phase, { enum: -> { AdVideo::UPLOAD_PHASE }}
        api.has_param :upload_session_id, 'string'
        api.has_param :upload_setting_properties, 'string'
        api.has_param :video_file_chunk, 'file'
        api.has_param :video_id_original, 'string'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :waterfall_id, 'string'
        api.accepts_files!
      end
    end

    has_edge :affectedadsets do |edge|
      edge.get 'AdSet'
    end

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
      edge.post 'AdAccount' do |api|
        api.has_param :business, 'string'
        api.has_param :permitted_tasks, { list: { enum: -> { AdAccount::PERMITTED_TASKS }} }
      end
    end

    has_edge :applications do |edge|
      edge.get 'Application'
    end

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'AdAccount' do |api|
        api.has_param :tasks, { list: { enum: -> { AdAccount::TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :async_batch_requests do |edge|
      edge.post 'Campaign' do |api|
        api.has_param :adbatch, { list: 'object' }
        api.has_param :name, 'string'
      end
    end

    has_edge :async_requests do |edge|
      edge.get 'AsyncRequest' do |api|
        api.has_param :status, { enum: -> { AsyncRequest::STATUS }}
        api.has_param :type, { enum: -> { AsyncRequest::TYPE }}
      end
    end

    has_edge :asyncadcreatives do |edge|
      edge.get 'AdAsyncRequestSet' do |api|
        api.has_param :is_completed, 'bool'
      end
      edge.post 'AdAsyncRequestSet' do |api|
        api.has_param :creative_spec, 'AdCreative'
        api.has_param :name, 'string'
        api.has_param :notification_mode, { enum: -> { AdAsyncRequestSet::NOTIFICATION_MODE }}
        api.has_param :notification_uri, 'string'
      end
    end

    has_edge :asyncadrequestsets do |edge|
      edge.get 'AdAsyncRequestSet' do |api|
        api.has_param :is_completed, 'bool'
      end
      edge.post 'AdAsyncRequestSet' do |api|
        api.has_param :ad_specs, { list: 'hash' }
        api.has_param :name, 'string'
        api.has_param :notification_mode, { enum: -> { AdAsyncRequestSet::NOTIFICATION_MODE }}
        api.has_param :notification_uri, 'string'
      end
    end

    has_edge :audience_funnel do |edge|
      edge.get 'AudienceFunnel'
    end

    has_edge :block_list_drafts do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :publisher_urls_file, 'file'
      end
    end

    has_edge :brand_safety_content_filter_levels do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :brand_safety_content_filter_levels, { list: { enum: -> { AdAccount::BRAND_SAFETY_CONTENT_FILTER_LEVELS }} }
        api.has_param :business_id, 'string'
      end
    end

    has_edge :broadtargetingcategories do |edge|
      edge.get 'BroadTargetingCategories' do |api|
        api.has_param :custom_categories_only, 'bool'
      end
    end

    has_edge :businessprojects do |edge|
      edge.get 'BusinessProject' do |api|
        api.has_param :business, 'string'
      end
    end

    has_edge :campaigns do |edge|
      edge.delete do |api|
        api.has_param :before_date, 'datetime'
        api.has_param :delete_offset, 'int'
        api.has_param :delete_strategy, { enum: %w{DELETE_ANY DELETE_ARCHIVED_BEFORE DELETE_OLDEST }}
        api.has_param :object_count, 'int'
      end
      edge.get 'Campaign' do |api|
        api.has_param :date_preset, { enum: -> { Campaign::DATE_PRESET }}
        api.has_param :effective_status, { list: { enum: -> { Campaign::EFFECTIVE_STATUS }} }
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'hash'
      end
      edge.post 'Campaign' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :bid_strategy, { enum: -> { Campaign::BID_STRATEGY }}
        api.has_param :buying_type, 'string'
        api.has_param :daily_budget, 'int'
        api.has_param :execution_options, { list: { enum: -> { Campaign::EXECUTION_OPTIONS }} }
        api.has_param :is_skadnetwork_attribution, 'bool'
        api.has_param :iterative_split_test_configs, { list: 'object' }
        api.has_param :lifetime_budget, 'int'
        api.has_param :name, 'string'
        api.has_param :objective, { enum: -> { Campaign::OBJECTIVE }}
        api.has_param :pacing_type, { list: 'string' }
        api.has_param :promoted_object, 'object'
        api.has_param :smart_promotion_type, { enum: -> { Campaign::SMART_PROMOTION_TYPE }}
        api.has_param :source_campaign_id, 'string'
        api.has_param :special_ad_categories, { list: { enum: -> { Campaign::SPECIAL_AD_CATEGORIES }} }
        api.has_param :special_ad_category_country, { list: { enum: -> { Campaign::SPECIAL_AD_CATEGORY_COUNTRY }} }
        api.has_param :spend_cap, 'int'
        api.has_param :start_time, 'datetime'
        api.has_param :status, { enum: -> { Campaign::STATUS }}
        api.has_param :stop_time, 'datetime'
        api.has_param :topline_id, 'string'
      end
    end

    has_edge :campaignsbylabels do |edge|
      edge.get 'Campaign' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { Campaign::OPERATOR }}
      end
    end

    has_edge :connected_instagram_accounts do |edge|
      edge.get 'IgUser'
    end

    has_edge :connected_instagram_accounts_with_iabp do |edge|
      edge.get 'IgUser' do |api|
        api.has_param :business_id, 'string'
      end
    end

    has_edge :conversion_goals do |edge|
      edge.get 'AdsConversionGoal'
    end

    has_edge :customaudiences do |edge|
      edge.get 'CustomAudience' do |api|
        api.has_param :business_id, 'string'
        api.has_param :fetch_primary_audience, 'bool'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :pixel_id, 'string'
      end
      edge.post 'CustomAudience' do |api|
        api.has_param :allowed_domains, { list: 'string' }
        api.has_param :associated_audience_id, 'int'
        api.has_param :claim_objective, { enum: -> { CustomAudience::CLAIM_OBJECTIVE }}
        api.has_param :content_type, { enum: -> { CustomAudience::CONTENT_TYPE }}
        api.has_param :countries, 'string'
        api.has_param :creation_params, 'hash'
        api.has_param :customer_file_source, { enum: -> { CustomAudience::CUSTOMER_FILE_SOURCE }}
        api.has_param :dataset_id, 'string'
        api.has_param :description, 'string'
        api.has_param :enable_fetch_or_create, 'bool'
        api.has_param :event_source_group, 'string'
        api.has_param :event_sources, { list: 'hash' }
        api.has_param :exclusions, { list: 'object' }
        api.has_param :facebook_page_id, 'string'
        api.has_param :inclusions, { list: 'object' }
        api.has_param :is_snapshot, 'bool'
        api.has_param :is_value_based, 'bool'
        api.has_param :list_of_accounts, { list: 'int' }
        api.has_param :lookalike_spec, 'string'
        api.has_param :marketing_message_channels, 'object'
        api.has_param :name, 'string'
        api.has_param :opt_out_link, 'string'
        api.has_param :origin_audience_id, 'string'
        api.has_param :parent_audience_id, 'int'
        api.has_param :partner_reference_key, 'string'
        api.has_param :pixel_id, 'string'
        api.has_param :prefill, 'bool'
        api.has_param :product_set_id, 'string'
        api.has_param :regulated_audience_spec, 'string'
        api.has_param :retention_days, 'int'
        api.has_param :rev_share_policy_id, 'int'
        api.has_param :rule, 'string'
        api.has_param :rule_aggregation, 'string'
        api.has_param :subscription_info, { list: { enum: -> { CustomAudience::SUBSCRIPTION_INFO }} }
        api.has_param :subtype, { enum: -> { CustomAudience::SUBTYPE }}
        api.has_param :use_for_products, { list: { enum: -> { CustomAudience::USE_FOR_PRODUCTS }} }
        api.has_param :use_in_campaigns, 'bool'
        api.has_param :video_group_ids, { list: 'string' }
        api.has_param :whats_app_business_phone_number_id, 'string'
      end
    end

    has_edge :customaudiencestos do |edge|
      edge.get 'CustomAudiencesTos'
      edge.post 'AdAccount' do |api|
        api.has_param :business_id, 'string'
        api.has_param :tos_id, 'string'
      end
    end

    has_edge :customconversions do |edge|
      edge.get 'CustomConversion'
      edge.post 'CustomConversion' do |api|
        api.has_param :action_source_type, { enum: -> { CustomConversion::ACTION_SOURCE_TYPE }}
        api.has_param :advanced_rule, 'string'
        api.has_param :custom_event_type, { enum: -> { CustomConversion::CUSTOM_EVENT_TYPE }}
        api.has_param :default_conversion_value, 'double'
        api.has_param :description, 'string'
        api.has_param :event_source_id, 'string'
        api.has_param :name, 'string'
        api.has_param :rule, 'string'
      end
    end

    has_edge :delivery_estimate do |edge|
      edge.get 'AdAccountDeliveryEstimate' do |api|
        api.has_param :optimization_goal, { enum: -> { AdAccountDeliveryEstimate::OPTIMIZATION_GOAL }}
        api.has_param :promoted_object, 'object'
        api.has_param :targeting_spec, 'Targeting'
      end
    end

    has_edge :deprecatedtargetingadsets do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :type, 'string'
      end
    end

    has_edge :dsa_recommendations do |edge|
      edge.get 'AdAccountDsaRecommendations'
    end

    has_edge :generatepreviews do |edge|
      edge.get 'AdPreview' do |api|
        api.has_param :ad_format, { enum: -> { AdPreview::AD_FORMAT }}
        api.has_param :creative, 'AdCreative'
        api.has_param :creative_feature, { enum: -> { AdPreview::CREATIVE_FEATURE }}
        api.has_param :dynamic_asset_label, 'string'
        api.has_param :dynamic_creative_spec, 'object'
        api.has_param :dynamic_customization, 'object'
        api.has_param :end_date, 'datetime'
        api.has_param :height, 'int'
        api.has_param :locale, 'string'
        api.has_param :place_page_id, 'int'
        api.has_param :post, 'object'
        api.has_param :product_item_ids, { list: 'string' }
        api.has_param :render_type, { enum: -> { AdPreview::RENDER_TYPE }}
        api.has_param :start_date, 'datetime'
        api.has_param :width, 'int'
      end
    end

    has_edge :impacting_ad_studies do |edge|
      edge.get 'AdStudy'
    end

    has_edge :insights do |edge|
      edge.get 'AdsInsights' do |api|
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :default_summary, 'bool'
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :limit, 'int'
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: 'string' }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'hash'
        api.has_param :time_ranges, { list: 'hash' }
        api.has_param :use_account_attribution_setting, 'bool'
        api.has_param :use_unified_attribution_setting, 'bool'
      end
      edge.post 'AdReportRun' do |api|
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :default_summary, 'bool'
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :limit, 'int'
        api.has_param :product_id_limit, 'int'
        api.has_param :sort, { list: 'string' }
        api.has_param :summary, { list: 'string' }
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'hash'
        api.has_param :time_ranges, { list: 'hash' }
        api.has_param :use_account_attribution_setting, 'bool'
        api.has_param :use_unified_attribution_setting, 'bool'
      end
    end

    has_edge :instagram_accounts do |edge|
      edge.get 'IgUser'
    end

    has_edge :ios_fourteen_campaign_limits do |edge|
      edge.get 'AdAccountIosFourteenCampaignLimits' do |api|
        api.has_param :app_id, 'string'
      end
    end

    has_edge :matched_search_applications do |edge|
      edge.get 'AdAccountMatchedSearchApplicationsEdgeData' do |api|
        api.has_param :allow_incomplete_app, 'bool'
        api.has_param :app_store, { enum: -> { AdAccountMatchedSearchApplicationsEdgeData::APP_STORE }}
        api.has_param :app_store_country, 'string'
        api.has_param :business_id, 'string'
        api.has_param :is_skadnetwork_search, 'bool'
        api.has_param :only_apps_with_permission, 'bool'
        api.has_param :query_term, 'string'
      end
    end

    has_edge :max_bid do |edge|
      edge.get 'AdAccountMaxBid'
    end

    has_edge :mcmeconversions do |edge|
      edge.get 'AdsMcmeConversion'
    end

    has_edge :minimum_budgets do |edge|
      edge.get 'MinimumBudget' do |api|
        api.has_param :bid_amount, 'int'
      end
    end

    has_edge :onbehalf_requests do |edge|
      edge.get 'BusinessOwnedObjectOnBehalfOfRequest' do |api|
        api.has_param :status, { enum: -> { BusinessOwnedObjectOnBehalfOfRequest::STATUS }}
      end
    end

    has_edge :product_audiences do |edge|
      edge.post 'CustomAudience' do |api|
        api.has_param :allowed_domains, { list: 'string' }
        api.has_param :associated_audience_id, 'int'
        api.has_param :claim_objective, { enum: -> { AdAccount::CLAIM_OBJECTIVE }}
        api.has_param :content_type, { enum: -> { AdAccount::CONTENT_TYPE }}
        api.has_param :creation_params, 'hash'
        api.has_param :description, 'string'
        api.has_param :enable_fetch_or_create, 'bool'
        api.has_param :event_source_group, 'string'
        api.has_param :event_sources, { list: 'hash' }
        api.has_param :exclusions, { list: 'object' }
        api.has_param :inclusions, { list: 'object' }
        api.has_param :is_snapshot, 'bool'
        api.has_param :is_value_based, 'bool'
        api.has_param :name, 'string'
        api.has_param :opt_out_link, 'string'
        api.has_param :parent_audience_id, 'int'
        api.has_param :product_set_id, 'string'
        api.has_param :rev_share_policy_id, 'int'
        api.has_param :subtype, { enum: -> { AdAccount::SUBTYPE }}
      end
    end

    has_edge :promote_pages do |edge|
      edge.get 'Page'
    end

    has_edge :publisher_block_lists do |edge|
      edge.get 'PublisherBlockList'
      edge.post 'PublisherBlockList' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :reachestimate do |edge|
      edge.get 'AdAccountReachEstimate' do |api|
        api.has_param :adgroup_ids, { list: 'string' }
        api.has_param :caller_id, 'string'
        api.has_param :concepts, 'string'
        api.has_param :creative_action_spec, 'string'
        api.has_param :is_debug, 'bool'
        api.has_param :object_store_url, 'string'
        api.has_param :targeting_spec, 'Targeting'
      end
    end

    has_edge :reachfrequencypredictions do |edge|
      edge.get 'ReachFrequencyPrediction'
      edge.post 'ReachFrequencyPrediction' do |api|
        api.has_param :action, { enum: -> { ReachFrequencyPrediction::ACTION }}
        api.has_param :ad_formats, { list: 'hash' }
        api.has_param :auction_entry_option_index, 'int'
        api.has_param :budget, 'int'
        api.has_param :buying_type, { enum: -> { ReachFrequencyPrediction::BUYING_TYPE }}
        api.has_param :campaign_group_id, 'string'
        api.has_param :day_parting_schedule, { list: 'object' }
        api.has_param :deal_id, 'string'
        api.has_param :destination_id, 'int'
        api.has_param :destination_ids, { list: 'string' }
        api.has_param :end_time, 'int'
        api.has_param :exceptions, 'bool'
        api.has_param :existing_campaign_id, 'string'
        api.has_param :expiration_time, 'int'
        api.has_param :frequency_cap, 'int'
        api.has_param :grp_buying, 'bool'
        api.has_param :impression, 'int'
        api.has_param :instream_packages, { list: { enum: -> { ReachFrequencyPrediction::INSTREAM_PACKAGES }} }
        api.has_param :interval_frequency_cap_reset_period, 'int'
        api.has_param :is_balanced_frequency, 'bool'
        api.has_param :is_bonus_media, 'bool'
        api.has_param :is_conversion_goal, 'bool'
        api.has_param :is_full_view, 'bool'
        api.has_param :is_higher_average_frequency, 'bool'
        api.has_param :is_reach_and_frequency_io_buying, 'bool'
        api.has_param :is_reserved_buying, 'bool'
        api.has_param :num_curve_points, 'int'
        api.has_param :objective, 'string'
        api.has_param :optimization_goal, 'string'
        api.has_param :prediction_mode, 'int'
        api.has_param :reach, 'int'
        api.has_param :rf_prediction_id, 'string'
        api.has_param :rf_prediction_id_to_release, 'string'
        api.has_param :rf_prediction_id_to_share, 'string'
        api.has_param :start_time, 'int'
        api.has_param :stop_time, 'int'
        api.has_param :story_event_type, 'int'
        api.has_param :target_cpm, 'int'
        api.has_param :target_frequency, 'int'
        api.has_param :target_frequency_reset_period, 'int'
        api.has_param :target_spec, 'Targeting'
        api.has_param :trending_topics_spec, 'hash'
        api.has_param :video_view_length_constraint, 'int'
      end
    end

    has_edge :recommendations do |edge|
      edge.get 'AdAccountRecommendations'
      edge.post 'AdAccountRecommendations' do |api|
        api.has_param :asc_fragmentation_parameters, 'hash'
        api.has_param :autoflow_parameters, 'hash'
        api.has_param :fragmentation_parameters, 'hash'
        api.has_param :music_parameters, 'hash'
        api.has_param :recommendation_signature, 'string'
        api.has_param :scale_good_campaign_parameters, 'hash'
      end
    end

    has_edge :saved_audiences do |edge|
      edge.get 'SavedAudience' do |api|
        api.has_param :business_id, 'string'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
      end
    end

    has_edge :subscribed_apps do |edge|
      edge.delete do |api|
        api.has_param :app_id, 'string'
      end
      edge.get 'AdAccountSubscribedApps'
      edge.post 'AdAccountSubscribedApps' do |api|
        api.has_param :app_id, 'string'
      end
    end

    has_edge :targetingbrowse do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :excluded_category, 'string'
        api.has_param :include_nodes, 'bool'
        api.has_param :is_exclusion, 'bool'
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
        api.has_param :regulated_categories, { list: { enum: -> { AdAccountTargetingUnified::REGULATED_CATEGORIES }} }
        api.has_param :regulated_countries, { list: { enum: -> { AdAccountTargetingUnified::REGULATED_COUNTRIES }} }
        api.has_param :whitelisted_types, { list: { enum: -> { AdAccountTargetingUnified::WHITELISTED_TYPES }} }
      end
    end

    has_edge :targetingsearch do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :allow_only_fat_head_interests, 'bool'
        api.has_param :app_store, { enum: -> { AdAccountTargetingUnified::APP_STORE }}
        api.has_param :countries, { list: 'string' }
        api.has_param :is_account_level_brand_safety_exclusion, 'bool'
        api.has_param :is_account_level_employer_exclusion, 'bool'
        api.has_param :is_exclusion, 'bool'
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
        api.has_param :objective, { enum: -> { AdAccountTargetingUnified::OBJECTIVE }}
        api.has_param :promoted_object, 'object'
        api.has_param :q, 'string'
        api.has_param :regulated_categories, { list: { enum: -> { AdAccountTargetingUnified::REGULATED_CATEGORIES }} }
        api.has_param :regulated_countries, { list: { enum: -> { AdAccountTargetingUnified::REGULATED_COUNTRIES }} }
        api.has_param :session_id, 'int'
        api.has_param :targeting_list, { list: 'object' }
        api.has_param :whitelisted_types, { list: { enum: -> { AdAccountTargetingUnified::WHITELISTED_TYPES }} }
      end
    end

    has_edge :targetingsentencelines do |edge|
      edge.get 'TargetingSentenceLine' do |api|
        api.has_param :discard_ages, 'bool'
        api.has_param :discard_placements, 'bool'
        api.has_param :hide_targeting_spec_from_return, 'bool'
        api.has_param :targeting_spec, 'Targeting'
      end
    end

    has_edge :targetingsuggestions do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :app_store, { enum: -> { AdAccountTargetingUnified::APP_STORE }}
        api.has_param :countries, { list: 'string' }
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
        api.has_param :mode, { enum: -> { AdAccountTargetingUnified::MODE }}
        api.has_param :objective, { enum: -> { AdAccountTargetingUnified::OBJECTIVE }}
        api.has_param :objects, 'object'
        api.has_param :regulated_categories, { list: { enum: -> { AdAccountTargetingUnified::REGULATED_CATEGORIES }} }
        api.has_param :regulated_countries, { list: { enum: -> { AdAccountTargetingUnified::REGULATED_COUNTRIES }} }
        api.has_param :session_id, 'int'
        api.has_param :targeting_list, { list: 'object' }
        api.has_param :whitelisted_types, { list: { enum: -> { AdAccountTargetingUnified::WHITELISTED_TYPES }} }
      end
    end

    has_edge :targetingvalidation do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :id_list, { list: 'int' }
        api.has_param :is_exclusion, 'bool'
        api.has_param :name_list, { list: 'string' }
        api.has_param :targeting_list, { list: 'object' }
      end
    end

    has_edge :tracking do |edge|
      edge.get 'AdAccountTrackingData'
      edge.post 'AdAccount' do |api|
        api.has_param :tracking_specs, 'object'
      end
    end

    has_edge :users do |edge|
      edge.get 'AdAccountUser'
    end

    has_edge :usersofanyaudience do |edge|
      edge.delete do |api|
        api.has_param :namespace, 'string'
        api.has_param :payload, 'object'
        api.has_param :session, 'object'
      end
    end

    has_edge :value_rule_set do |edge|
      edge.get 'AdsValueAdjustmentRuleCollection' do |api|
        api.has_param :product_type, { enum: -> { AdsValueAdjustmentRuleCollection::PRODUCT_TYPE }}
        api.has_param :status, { enum: -> { AdsValueAdjustmentRuleCollection::STATUS }}
      end
      edge.post 'AdsValueAdjustmentRuleCollection' do |api|
        api.has_param :name, 'string'
        api.has_param :product_type, { enum: -> { AdsValueAdjustmentRuleCollection::PRODUCT_TYPE }}
        api.has_param :rules, { list: 'hash' }
      end
    end

    has_edge :video_ads do |edge|
      edge.get 'AdVideo' do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
      edge.post 'AdVideo' do |api|
        api.has_param :description, 'string'
        api.has_param :privacy, 'string'
        api.has_param :title, 'string'
        api.has_param :upload_phase, { enum: -> { AdVideo::UPLOAD_PHASE }}
        api.has_param :video_id, 'string'
        api.has_param :video_state, { enum: -> { AdVideo::VIDEO_STATE }}
      end
    end

  end
end
