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

  class AdsInsights < AdObject
    ACTION_ATTRIBUTION_WINDOWS = [
      "1d_view",
      "7d_view",
      "28d_view",
      "1d_click",
      "7d_click",
      "28d_click",
      "default",
    ]

    ACTION_BREAKDOWNS = [
      "action_canvas_component_name",
      "action_carousel_card_id",
      "action_carousel_card_name",
      "action_destination",
      "action_device",
      "action_link_click_destination",
      "action_reaction",
      "action_target_id",
      "action_type",
      "action_video_sound",
      "action_video_type",
    ]

    ACTION_REPORT_TIME = [
      "impression",
      "conversion",
    ]

    BREAKDOWNS = [
      "age",
      "country",
      "dma",
      "gender",
      "frequency_value",
      "hourly_stats_aggregated_by_advertiser_time_zone",
      "hourly_stats_aggregated_by_audience_time_zone",
      "impression_device",
      "place_page_id",
      "publisher_platform",
      "platform_position",
      "device_platform",
      "product_id",
      "region",
      "ad_format_asset",
      "body_asset",
      "call_to_action_asset",
      "description_asset",
      "image_asset",
      "link_url_asset",
      "title_asset",
      "video_asset",
    ]

    DATE_PRESET = [
      "today",
      "yesterday",
      "this_month",
      "last_month",
      "this_quarter",
      "lifetime",
      "last_3d",
      "last_7d",
      "last_14d",
      "last_28d",
      "last_30d",
      "last_90d",
      "last_week_mon_sun",
      "last_week_sun_sat",
      "last_quarter",
      "last_year",
      "this_week_mon_today",
      "this_week_sun_today",
      "this_year",
    ]

    LEVEL = [
      "ad",
      "adset",
      "campaign",
      "account",
    ]

    SUMMARY_ACTION_BREAKDOWNS = [
      "action_canvas_component_name",
      "action_carousel_card_id",
      "action_carousel_card_name",
      "action_destination",
      "action_device",
      "action_link_click_destination",
      "action_reaction",
      "action_target_id",
      "action_type",
      "action_video_sound",
      "action_video_type",
    ]

    SUMMARY = [
      "id",
      "account_id",
      "async_percent_completion",
      "async_status",
      "date_start",
      "date_stop",
      "emails",
      "friendly_name",
      "is_bookmarked",
      "is_running",
      "schedule_id",
      "time_completed",
      "time_ref",
    ]


    field :account_currency, 'string'
    field :account_id, 'string'
    field :account_name, 'string'
    field :action_values, { list: 'AdsActionStats' }
    field :actions, { list: 'AdsActionStats' }
    field :ad_id, 'string'
    field :ad_name, 'string'
    field :adset_id, 'string'
    field :adset_name, 'string'
    field :buying_type, 'string'
    field :call_to_action_clicks, 'string'
    field :campaign_id, 'string'
    field :campaign_name, 'string'
    field :canvas_avg_view_percent, 'string'
    field :canvas_avg_view_time, 'string'
    field :clicks, 'string'
    field :cost_per_10_sec_video_view, { list: 'AdsActionStats' }
    field :cost_per_action_type, { list: 'AdsActionStats' }
    field :cost_per_estimated_ad_recallers, 'string'
    field :cost_per_inline_link_click, 'string'
    field :cost_per_inline_post_engagement, 'string'
    field :cost_per_outbound_click, { list: 'AdsActionStats' }
    field :cost_per_total_action, 'string'
    field :cost_per_unique_action_type, { list: 'AdsActionStats' }
    field :cost_per_unique_click, 'string'
    field :cost_per_unique_inline_link_click, 'string'
    field :cost_per_unique_outbound_click, { list: 'AdsActionStats' }
    field :cpc, 'string'
    field :cpm, 'string'
    field :cpp, 'string'
    field :ctr, 'string'
    field :date_start, 'string'
    field :date_stop, 'string'
    field :estimated_ad_recall_rate, 'string'
    field :estimated_ad_recallers, 'string'
    field :frequency, 'string'
    field :impressions, 'string'
    field :inline_link_click_ctr, 'string'
    field :inline_link_clicks, 'string'
    field :inline_post_engagement, 'string'
    field :mobile_app_purchase_roas, { list: 'AdsActionStats' }
    field :objective, 'string'
    field :outbound_clicks, { list: 'AdsActionStats' }
    field :outbound_clicks_ctr, { list: 'AdsActionStats' }
    field :place_page_name, 'string'
    field :reach, 'string'
    field :relevance_score, 'AdgroupRelevanceScore'
    field :social_clicks, 'string'
    field :social_impressions, 'string'
    field :social_reach, 'string'
    field :social_spend, 'string'
    field :spend, 'string'
    field :total_action_value, 'string'
    field :total_actions, 'string'
    field :total_unique_actions, 'string'
    field :unique_actions, { list: 'AdsActionStats' }
    field :unique_clicks, 'string'
    field :unique_ctr, 'string'
    field :unique_inline_link_click_ctr, 'string'
    field :unique_inline_link_clicks, 'string'
    field :unique_link_clicks_ctr, 'string'
    field :unique_outbound_clicks, { list: 'AdsActionStats' }
    field :unique_outbound_clicks_ctr, { list: 'AdsActionStats' }
    field :unique_social_clicks, 'string'
    field :video_10_sec_watched_actions, { list: 'AdsActionStats' }
    field :video_30_sec_watched_actions, { list: 'AdsActionStats' }
    field :video_avg_percent_watched_actions, { list: 'AdsActionStats' }
    field :video_avg_time_watched_actions, { list: 'AdsActionStats' }
    field :video_p100_watched_actions, { list: 'AdsActionStats' }
    field :video_p25_watched_actions, { list: 'AdsActionStats' }
    field :video_p50_watched_actions, { list: 'AdsActionStats' }
    field :video_p75_watched_actions, { list: 'AdsActionStats' }
    field :video_p95_watched_actions, { list: 'AdsActionStats' }
    field :website_ctr, { list: 'AdsActionStats' }
    field :website_purchase_roas, { list: 'AdsActionStats' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
