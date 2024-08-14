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

  class AdAccountUserSettings < AdObject
    SYD_CAMPAIGN_TRENDS_OBJECTIVE = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "OFFER_CLAIMS",
      "OUTCOME_APP_PROMOTION",
      "OUTCOME_AWARENESS",
      "OUTCOME_ENGAGEMENT",
      "OUTCOME_LEADS",
      "OUTCOME_SALES",
      "OUTCOME_TRAFFIC",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "REACH",
      "STORE_VISITS",
      "VIDEO_VIEWS",
      "WEBSITE_CONVERSIONS",
    ]


    field :acf_should_opt_out_video_adjustments, 'bool'
    field :aco_sticky_settings, { list: 'hash' }
    field :ad_account, 'AdAccount'
    field :ad_object_export_format, 'string'
    field :auto_review_video_caption, 'bool'
    field :campaign_overview_columns, { list: 'string' }
    field :column_suggestion_status, 'string'
    field :default_account_overview_agegender_metrics, { list: 'string' }
    field :default_account_overview_location_metrics, { list: 'string' }
    field :default_account_overview_metrics, { list: 'string' }
    field :default_account_overview_time_metrics, { list: 'string' }
    field :default_builtin_column_preset, 'string'
    field :default_nam_time_range, 'string'
    field :draft_mode_enabled, 'bool'
    field :export_deleted_items_with_delivery, 'bool'
    field :export_summary_row, 'bool'
    field :has_seen_groups_column_flexing_experience, 'bool'
    field :has_seen_leads_column_flexing_experience, 'bool'
    field :has_seen_shops_ads_metrics_onboarding_tour, 'bool'
    field :has_seen_shops_column_flexing_experience, 'bool'
    field :hidden_optimization_tips, { list: 'hash' }
    field :id, 'string'
    field :is_3p_auth_setting_set, 'bool'
    field :is_text_variation_nux_close, 'bool'
    field :last_used_columns, 'object'
    field :last_used_pe_filters, { list: 'object' }
    field :last_used_website_urls, { list: 'string' }
    field :outlier_preferences, 'object'
    field :pinned_ad_object_ids, { list: 'string' }
    field :rb_export_format, 'string'
    field :rb_export_raw_data, 'bool'
    field :rb_export_summary_row, 'bool'
    field :saip_advertiser_setup_optimisation_guidance_overall_state, 'string'
    field :saip_advertiser_setup_optimisation_guidance_state, { list: 'hash' }
    field :shops_ads_metrics_onboarding_tour_close_count, 'int'
    field :shops_ads_metrics_onboarding_tour_last_action_time, 'datetime'
    field :should_default_image_auto_crop, 'bool'
    field :should_default_image_auto_crop_for_tail, 'bool'
    field :should_default_image_auto_crop_optimization, 'bool'
    field :should_default_image_dof_toggle, 'bool'
    field :should_default_image_lpp_ads_to_square, 'bool'
    field :should_default_instagram_profile_card_optimization, 'bool'
    field :should_default_text_swapping_optimization, 'bool'
    field :should_logout_of_3p_sourcing, 'bool'
    field :show_archived_data, 'bool'
    field :show_text_variation_nux_tooltip, 'bool'
    field :syd_campaign_trends_activemetric, 'string'
    field :syd_campaign_trends_attribution, 'string'
    field :syd_campaign_trends_metrics, { list: 'string' }
    field :syd_campaign_trends_objective, { enum: -> { SYD_CAMPAIGN_TRENDS_OBJECTIVE }}
    field :syd_campaign_trends_time_range, 'string'
    field :syd_landing_page_opt_in_status, 'string'
    field :text_variations_opt_in_type, 'string'
    field :user, 'User'
    has_no_post
    has_no_delete

  end
end
