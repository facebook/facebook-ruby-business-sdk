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

  class AdsInsights < AdObject
    ACTION_ATTRIBUTION_WINDOWS = [
      "1d_click",
      "1d_ev",
      "1d_view",
      "28d_click",
      "28d_view",
      "28d_view_all_conversions",
      "28d_view_first_conversion",
      "7d_click",
      "7d_view",
      "7d_view_all_conversions",
      "7d_view_first_conversion",
      "dda",
      "default",
      "skan_click",
      "skan_click_second_postback",
      "skan_click_third_postback",
      "skan_view",
      "skan_view_second_postback",
      "skan_view_third_postback",
    ]

    ACTION_BREAKDOWNS = [
      "action_canvas_component_name",
      "action_carousel_card_id",
      "action_carousel_card_name",
      "action_destination",
      "action_device",
      "action_reaction",
      "action_target_id",
      "action_type",
      "action_video_sound",
      "action_video_type",
      "conversion_destination",
      "matched_persona_id",
      "matched_persona_name",
      "signal_source_bucket",
      "standard_event_content_type",
    ]

    ACTION_REPORT_TIME = [
      "conversion",
      "impression",
      "lifetime",
      "mixed",
    ]

    BREAKDOWNS = [
      "ad_extension_domain",
      "ad_extension_url",
      "ad_format_asset",
      "age",
      "app_id",
      "body_asset",
      "breakdown_ad_objective",
      "breakdown_reporting_ad_id",
      "call_to_action_asset",
      "coarse_conversion_value",
      "comscore_market",
      "conversion_destination",
      "country",
      "creative_automation_asset_id",
      "creative_relaxation_asset_type",
      "crm_advertiser_l12_territory_ids",
      "crm_advertiser_subvertical_id",
      "crm_advertiser_vertical_id",
      "crm_ult_advertiser_id",
      "description_asset",
      "device_platform",
      "dma",
      "fidelity_type",
      "flexible_format_asset_type",
      "frequency_value",
      "gen_ai_asset_type",
      "gender",
      "hourly_stats_aggregated_by_advertiser_time_zone",
      "hourly_stats_aggregated_by_audience_time_zone",
      "hsid",
      "image_asset",
      "impression_device",
      "impression_view_time_advertiser_hour_v2",
      "is_auto_advance",
      "is_conversion_id_modeled",
      "is_rendered_as_delayed_skip_ad",
      "landing_destination",
      "link_url_asset",
      "marketing_messages_btn_name",
      "mdsa_landing_destination",
      "media_asset_url",
      "media_creator",
      "media_destination_url",
      "media_format",
      "media_origin_url",
      "media_text_content",
      "media_type",
      "mmm",
      "place_page_id",
      "platform_position",
      "postback_sequence_index",
      "product_brand_breakdown",
      "product_category_breakdown",
      "product_custom_label_0_breakdown",
      "product_custom_label_1_breakdown",
      "product_custom_label_2_breakdown",
      "product_custom_label_3_breakdown",
      "product_custom_label_4_breakdown",
      "product_group_content_id_breakdown",
      "product_id",
      "product_set_id_breakdown",
      "publisher_platform",
      "redownload",
      "region",
      "rta_ugc_topic",
      "rule_set_id",
      "rule_set_name",
      "signal_source_bucket",
      "skan_campaign_id",
      "skan_conversion_id",
      "skan_version",
      "sot_attribution_model_type",
      "sot_attribution_window",
      "sot_channel",
      "sot_event_type",
      "sot_source",
      "standard_event_content_type",
      "title_asset",
      "user_persona_id",
      "user_persona_name",
      "video_asset",
    ]

    DATE_PRESET = [
      "data_maximum",
      "last_14d",
      "last_28d",
      "last_30d",
      "last_3d",
      "last_7d",
      "last_90d",
      "last_month",
      "last_quarter",
      "last_week_mon_sun",
      "last_week_sun_sat",
      "last_year",
      "maximum",
      "this_month",
      "this_quarter",
      "this_week_mon_today",
      "this_week_sun_today",
      "this_year",
      "today",
      "yesterday",
    ]

    LEVEL = [
      "account",
      "ad",
      "adset",
      "campaign",
    ]

    SUMMARY_ACTION_BREAKDOWNS = [
      "action_canvas_component_name",
      "action_carousel_card_id",
      "action_carousel_card_name",
      "action_destination",
      "action_device",
      "action_reaction",
      "action_target_id",
      "action_type",
      "action_video_sound",
      "action_video_type",
      "conversion_destination",
      "matched_persona_id",
      "matched_persona_name",
      "signal_source_bucket",
      "standard_event_content_type",
    ]


    field :account_currency, 'string'
    field :account_id, 'string'
    field :account_name, 'string'
    field :action_values, { list: 'AdsActionStats' }
    field :actions, { list: 'AdsActionStats' }
    field :ad_click_actions, { list: 'AdsActionStats' }
    field :ad_id, 'string'
    field :ad_impression_actions, { list: 'AdsActionStats' }
    field :ad_name, 'string'
    field :adset_end, 'string'
    field :adset_id, 'string'
    field :adset_name, 'string'
    field :adset_start, 'string'
    field :age_targeting, 'string'
    field :attribution_setting, 'string'
    field :auction_bid, 'string'
    field :auction_competitiveness, 'string'
    field :auction_max_competitor_bid, 'string'
    field :average_purchases_conversion_value, { list: 'AdsActionStats' }
    field :buying_type, 'string'
    field :campaign_id, 'string'
    field :campaign_name, 'string'
    field :canvas_avg_view_percent, 'string'
    field :canvas_avg_view_time, 'string'
    field :catalog_segment_actions, { list: 'AdsActionStats' }
    field :catalog_segment_value, { list: 'AdsActionStats' }
    field :catalog_segment_value_mobile_purchase_roas, { list: 'AdsActionStats' }
    field :catalog_segment_value_omni_purchase_roas, { list: 'AdsActionStats' }
    field :catalog_segment_value_website_purchase_roas, { list: 'AdsActionStats' }
    field :clicks, 'string'
    field :conversion_lead_rate, { list: 'AdsActionStats' }
    field :conversion_leads, { list: 'AdsActionStats' }
    field :conversion_rate_ranking, 'string'
    field :conversion_values, { list: 'AdsActionStats' }
    field :conversions, { list: 'AdsActionStats' }
    field :converted_product_app_custom_event_fb_mobile_purchase, { list: 'AdsActionStats' }
    field :converted_product_app_custom_event_fb_mobile_purchase_value, { list: 'AdsActionStats' }
    field :converted_product_offline_purchase, { list: 'AdsActionStats' }
    field :converted_product_offline_purchase_value, { list: 'AdsActionStats' }
    field :converted_product_omni_purchase, { list: 'AdsActionStats' }
    field :converted_product_omni_purchase_values, { list: 'AdsActionStats' }
    field :converted_product_quantity, { list: 'AdsActionStats' }
    field :converted_product_value, { list: 'AdsActionStats' }
    field :converted_product_website_pixel_purchase, { list: 'AdsActionStats' }
    field :converted_product_website_pixel_purchase_value, { list: 'AdsActionStats' }
    field :converted_promoted_product_app_custom_event_fb_mobile_purchase, { list: 'AdsActionStats' }
    field :converted_promoted_product_app_custom_event_fb_mobile_purchase_value, { list: 'AdsActionStats' }
    field :converted_promoted_product_offline_purchase, { list: 'AdsActionStats' }
    field :converted_promoted_product_offline_purchase_value, { list: 'AdsActionStats' }
    field :converted_promoted_product_omni_purchase, { list: 'AdsActionStats' }
    field :converted_promoted_product_omni_purchase_values, { list: 'AdsActionStats' }
    field :converted_promoted_product_quantity, { list: 'AdsActionStats' }
    field :converted_promoted_product_value, { list: 'AdsActionStats' }
    field :converted_promoted_product_website_pixel_purchase, { list: 'AdsActionStats' }
    field :converted_promoted_product_website_pixel_purchase_value, { list: 'AdsActionStats' }
    field :cost_per_15_sec_video_view, { list: 'AdsActionStats' }
    field :cost_per_2_sec_continuous_video_view, { list: 'AdsActionStats' }
    field :cost_per_action_type, { list: 'AdsActionStats' }
    field :cost_per_ad_click, { list: 'AdsActionStats' }
    field :cost_per_conversion, { list: 'AdsActionStats' }
    field :cost_per_conversion_lead, { list: 'AdsActionStats' }
    field :cost_per_dda_countby_convs, 'string'
    field :cost_per_estimated_ad_recallers, 'string'
    field :cost_per_inline_link_click, 'string'
    field :cost_per_inline_post_engagement, 'string'
    field :cost_per_objective_result, { list: 'object' }
    field :cost_per_one_thousand_ad_impression, { list: 'AdsActionStats' }
    field :cost_per_outbound_click, { list: 'AdsActionStats' }
    field :cost_per_result, { list: 'object' }
    field :cost_per_thruplay, { list: 'AdsActionStats' }
    field :cost_per_unique_action_type, { list: 'AdsActionStats' }
    field :cost_per_unique_click, 'string'
    field :cost_per_unique_conversion, { list: 'AdsActionStats' }
    field :cost_per_unique_inline_link_click, 'string'
    field :cost_per_unique_outbound_click, { list: 'AdsActionStats' }
    field :cpc, 'string'
    field :cpm, 'string'
    field :cpp, 'string'
    field :created_time, 'string'
    field :creative_media_type, 'string'
    field :ctr, 'string'
    field :date_start, 'string'
    field :date_stop, 'string'
    field :dda_countby_convs, 'string'
    field :dda_results, { list: 'object' }
    field :engagement_rate_ranking, 'string'
    field :estimated_ad_recall_rate, 'string'
    field :estimated_ad_recall_rate_lower_bound, 'string'
    field :estimated_ad_recall_rate_upper_bound, 'string'
    field :estimated_ad_recallers, 'string'
    field :estimated_ad_recallers_lower_bound, 'string'
    field :estimated_ad_recallers_upper_bound, 'string'
    field :frequency, 'string'
    field :full_view_impressions, 'string'
    field :full_view_reach, 'string'
    field :gender_targeting, 'string'
    field :impressions, 'string'
    field :inline_link_click_ctr, 'string'
    field :inline_link_clicks, 'string'
    field :inline_post_engagement, 'string'
    field :instagram_upcoming_event_reminders_set, 'string'
    field :instant_experience_clicks_to_open, 'string'
    field :instant_experience_clicks_to_start, 'string'
    field :instant_experience_outbound_clicks, { list: 'AdsActionStats' }
    field :interactive_component_tap, { list: 'AdsActionStats' }
    field :labels, 'string'
    field :landing_page_view_actions_per_link_click, 'string'
    field :landing_page_view_per_link_click, 'string'
    field :landing_page_view_per_purchase_rate, 'string'
    field :link_clicks_per_results, { list: 'object' }
    field :location, 'string'
    field :marketing_messages_click_rate_benchmark, 'string'
    field :marketing_messages_cost_per_delivered, 'string'
    field :marketing_messages_cost_per_link_btn_click, 'string'
    field :marketing_messages_delivered, 'string'
    field :marketing_messages_delivery_rate, 'string'
    field :marketing_messages_link_btn_click, 'string'
    field :marketing_messages_link_btn_click_rate, 'string'
    field :marketing_messages_media_view_rate, 'string'
    field :marketing_messages_phone_call_btn_click_rate, 'string'
    field :marketing_messages_quick_reply_btn_click, 'string'
    field :marketing_messages_quick_reply_btn_click_rate, 'string'
    field :marketing_messages_read, 'string'
    field :marketing_messages_read_rate, 'string'
    field :marketing_messages_read_rate_benchmark, 'string'
    field :marketing_messages_sent, 'string'
    field :marketing_messages_spend, 'string'
    field :marketing_messages_spend_currency, 'string'
    field :marketing_messages_website_add_to_cart, 'string'
    field :marketing_messages_website_initiate_checkout, 'string'
    field :marketing_messages_website_purchase, 'string'
    field :marketing_messages_website_purchase_values, 'string'
    field :mobile_app_purchase_roas, { list: 'AdsActionStats' }
    field :objective, 'string'
    field :objective_result_rate, { list: 'object' }
    field :objective_results, { list: 'object' }
    field :onsite_conversion_messaging_detected_purchase_deduped, { list: 'AdsActionStats' }
    field :optimization_goal, 'string'
    field :outbound_clicks, { list: 'AdsActionStats' }
    field :outbound_clicks_ctr, { list: 'AdsActionStats' }
    field :place_page_name, 'string'
    field :product_group_retailer_id, 'string'
    field :product_retailer_id, 'string'
    field :product_views, 'string'
    field :purchase_per_landing_page_view, 'string'
    field :purchase_roas, { list: 'AdsActionStats' }
    field :purchases_per_link_click, 'string'
    field :qualifying_question_qualify_answer_rate, 'string'
    field :quality_ranking, 'string'
    field :reach, 'string'
    field :result_rate, { list: 'object' }
    field :result_values_performance_indicator, 'string'
    field :results, { list: 'object' }
    field :shops_assisted_purchases, 'string'
    field :social_spend, 'string'
    field :spend, 'string'
    field :total_card_view, 'string'
    field :total_postbacks, 'string'
    field :total_postbacks_detailed, { list: 'AdsActionStats' }
    field :total_postbacks_detailed_v4, { list: 'AdsActionStats' }
    field :unique_actions, { list: 'AdsActionStats' }
    field :unique_clicks, 'string'
    field :unique_conversions, { list: 'AdsActionStats' }
    field :unique_ctr, 'string'
    field :unique_inline_link_click_ctr, 'string'
    field :unique_inline_link_clicks, 'string'
    field :unique_link_clicks_ctr, 'string'
    field :unique_outbound_clicks, { list: 'AdsActionStats' }
    field :unique_outbound_clicks_ctr, { list: 'AdsActionStats' }
    field :unique_video_continuous_2_sec_watched_actions, { list: 'AdsActionStats' }
    field :unique_video_view_15_sec, { list: 'AdsActionStats' }
    field :updated_time, 'string'
    field :video_15_sec_watched_actions, { list: 'AdsActionStats' }
    field :video_30_sec_watched_actions, { list: 'AdsActionStats' }
    field :video_avg_time_watched_actions, { list: 'AdsActionStats' }
    field :video_continuous_2_sec_watched_actions, { list: 'AdsActionStats' }
    field :video_p100_watched_actions, { list: 'AdsActionStats' }
    field :video_p25_watched_actions, { list: 'AdsActionStats' }
    field :video_p50_watched_actions, { list: 'AdsActionStats' }
    field :video_p75_watched_actions, { list: 'AdsActionStats' }
    field :video_p95_watched_actions, { list: 'AdsActionStats' }
    field :video_play_actions, { list: 'AdsActionStats' }
    field :video_play_curve_actions, { list: 'AdsHistogramStats' }
    field :video_play_retention_0_to_15s_actions, { list: 'AdsHistogramStats' }
    field :video_play_retention_20_to_60s_actions, { list: 'AdsHistogramStats' }
    field :video_play_retention_graph_actions, { list: 'AdsHistogramStats' }
    field :video_thruplay_watched_actions, { list: 'AdsActionStats' }
    field :video_time_watched_actions, { list: 'AdsActionStats' }
    field :video_view_per_impression, { list: 'AdsActionStats' }
    field :website_ctr, { list: 'AdsActionStats' }
    field :website_purchase_roas, { list: 'AdsActionStats' }
    field :wish_bid, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
