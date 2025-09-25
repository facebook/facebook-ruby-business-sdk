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

  class AdsUserSettings < AdObject

    field :a_plus_c_survey_seen, 'bool'
    field :add_overlays_opt_in_status, 'string'
    field :adgroup_name_template, 'object'
    field :ads_cs_catalog_opt_out_timestamp, { list: 'hash' }
    field :ads_cs_sitelinks_opt_in_status, 'string'
    field :ads_cs_sitelinks_opt_out_timestamp, { list: 'hash' }
    field :ads_tool_visits, { list: 'object' }
    field :aplusc_ai_agent_opt_in_status, 'string'
    field :aplusc_carousel_cda_opt_in_status, 'string'
    field :aplusc_carousel_inline_comment_opt_in_status, 'string'
    field :aplusc_da_opt_in_status, 'string'
    field :aplusc_enhance_cta_opt_in_status, 'string'
    field :aplusc_epa_opt_in_status, 'string'
    field :aplusc_local_store_extension_opt_in_status, 'string'
    field :aplusc_opt_out_friction, { list: 'string' }
    field :aplusc_videofilter_opt_in_status, 'string'
    field :aplusc_videouncrop_opt_in_status, 'string'
    field :autoflow_lite_opt_in_status, 'string'
    field :autoflow_lite_should_opt_in, 'bool'
    field :blended_ads_creation_defaulting_opt_in_status, 'string'
    field :blended_ads_creation_defaulting_opt_out_campaign_group_ids, { list: 'int' }
    field :bookmarked_pages, { list: 'Page' }
    field :campaign_group_name_template, 'object'
    field :campaign_name_template, 'object'
    field :carousel_to_video_opt_in_status, 'string'
    field :connected_sources_catalog_opt_in_status, 'string'
    field :create_cta_sticker_opt_in_status, 'string'
    field :creative_flex_opt_in_status, 'string'
    field :da_add_overlays_opt_in_status, 'string'
    field :da_hide_price_opt_in_status, 'string'
    field :default_creation_mode, 'string'
    field :dynamic_partnership_ads_opt_in_status, 'string'
    field :enhance_cta_text_extraction_opt_in_status, 'string'
    field :export_format_default, 'string'
    field :focus_mode_default, 'string'
    field :gen_ai_alpha_test_status, 'int'
    field :gen_ai_auto_select_opt_in_status, 'string'
    field :id, 'string'
    field :image_background_generation_opt_in_status, 'string'
    field :image_brightness_and_contrast_opt_in_status, 'string'
    field :image_expansion_opt_in_status, 'string'
    field :image_templates_text_extraction_opt_in_status, 'string'
    field :is_ads_ai_consented, 'bool'
    field :is_cbo_default_on, 'bool'
    field :is_se_removal_guidance_dismissed, 'bool'
    field :last_used_post_format, 'string'
    field :last_visited_time, 'datetime'
    field :metadata_brand_kit_last_opt_out_timestamp, 'int'
    field :metadata_brand_kit_opt_in_status, 'string'
    field :music_on_reels_opt_in, { list: 'hash' }
    field :muted_cbo_midflight_education_messages, { list: 'string' }
    field :onsite_destination_optimization_opt_in, 'string'
    field :open_tabs, { list: 'string' }
    field :pac_relaxation_opt_in_status, 'string'
    field :placement_group_square_opt_in_status, 'string'
    field :placement_group_vertical_opt_in_status, 'string'
    field :previously_seen_recommendations, { list: 'string' }
    field :product_extensions_opt_in, 'string'
    field :reactive_control_settings, { list: 'object' }
    field :replace_media_text_opt_in_status, 'string'
    field :sa_off_conv_loc_seen, 'string'
    field :saoff_published_l2_conv_loc_seen, 'string'
    field :saon_migr_l1_seen_status, 'string'
    field :selected_ad_account, 'AdAccount'
    field :selected_comparison_timerange, 'object'
    field :selected_metric_cic, 'string'
    field :selected_metrics_cic, { list: 'string' }
    field :selected_page, 'Page'
    field :selected_page_section, 'string'
    field :selected_power_editor_pane, 'string'
    field :selected_stat_range, 'object'
    field :should_export_filter_empty_cols, 'string'
    field :should_export_rows_without_unsupported_feature, 'string'
    field :should_not_auto_expand_tree_table, 'bool'
    field :should_not_show_cbo_campaign_toggle_off_confirmation_message, 'bool'
    field :should_not_show_publish_message_on_editor_close, 'bool'
    field :show_original_videos_opt_in, 'string'
    field :show_summary_opt_in_status, 'string'
    field :static_ad_product_extensions_opt_in, 'string'
    field :sticky_setting_after_default_on, 'string'
    field :syd_campaign_trends_metric, 'string'
    field :text_optimizations_text_extraction_opt_in_status, 'string'
    field :text_translation_opt_in_status, 'string'
    field :text_variations_sticky_opt_in_status, 'string'
    field :total_coupon_syd_dismissals, 'int'
    field :total_coupon_upsell_dismissals, 'int'
    field :url_prefill_removal_timestamp, 'int'
    field :use_pe_create_flow, 'bool'
    field :use_stepper_primary_entry, 'bool'
    field :user, 'User'
    field :website_media_opt_in_status, 'string'
    field :website_reviews_data_opt_in_status, 'string'
    field :website_selling_points_data_opt_in_status, 'string'
    has_no_post
    has_no_delete

  end
end
