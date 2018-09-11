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

  class AdsReportBuilder < AdObject
    ATTRIBUTION_WINDOWS = [
      "1d_view",
      "7d_view",
      "28d_view",
      "1d_click",
      "7d_click",
      "28d_click",
      "default",
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

    DIMENSION_GROUPS = [
      "age",
      "country",
      "gender",
      "region",
      "region_id",
      "dma",
      "impression_device",
      "publisher_platform",
      "device_platform",
      "platform_position",
      "activity_recency",
      "place_page_id",
      "household_composition",
      "household_income",
      "product_id",
      "frequency_value",
      "hourly_stats_aggregated_by_advertiser_time_zone",
      "hourly_stats_aggregated_by_audience_time_zone",
      "ad_variation",
      "image_asset",
      "image_asset_value",
      "video_asset",
      "video_asset_value",
      "link_url_asset",
      "link_url_asset_value",
      "body_asset",
      "body_asset_value",
      "title_asset",
      "title_asset_value",
      "description_asset",
      "description_asset_value",
      "call_to_action_asset",
      "call_to_action_asset_value",
      "action_device",
      "action_reaction",
      "action_destination",
      "action_event_channel",
      "action_link_click_destination",
      "action_video_type",
      "action_video_sound",
      "action_carousel_card_id",
      "action_carousel_card_name",
      "action_canvas_component_id",
      "action_canvas_component_name",
      "ad_id",
      "ad_name",
      "adset_id",
      "adset_name",
      "campaign_id",
      "campaign_name",
      "creative_fingerprint",
      "adset_bid_type",
      "adset_bid_value",
      "budget_type",
      "budget_value",
      "adset_budget_type",
      "adset_budget_value",
      "campaign_budget_type",
      "campaign_budget_value",
      "buying_type",
      "delivery_info",
      "objective",
      "delivery_start",
      "delivery_end",
      "ad_delivery",
      "adset_delivery",
      "campaign_delivery",
      "days_1",
      "days_7",
      "days_14",
      "monthly",
      "all_days",
    ]

    DIMENSIONS = [
      "age",
      "country",
      "gender",
      "region",
      "region_id",
      "dma",
      "impression_device",
      "publisher_platform",
      "device_platform",
      "platform_position",
      "activity_recency",
      "place_page_id",
      "household_composition",
      "household_income",
      "product_id",
      "frequency_value",
      "hourly_stats_aggregated_by_advertiser_time_zone",
      "hourly_stats_aggregated_by_audience_time_zone",
      "ad_variation",
      "image_asset",
      "image_asset_value",
      "video_asset",
      "video_asset_value",
      "link_url_asset",
      "link_url_asset_value",
      "body_asset",
      "body_asset_value",
      "title_asset",
      "title_asset_value",
      "description_asset",
      "description_asset_value",
      "call_to_action_asset",
      "call_to_action_asset_value",
      "action_device",
      "action_reaction",
      "action_destination",
      "action_event_channel",
      "action_link_click_destination",
      "action_video_type",
      "action_video_sound",
      "action_carousel_card_id",
      "action_carousel_card_name",
      "action_canvas_component_id",
      "action_canvas_component_name",
      "ad_id",
      "ad_name",
      "adset_id",
      "adset_name",
      "campaign_id",
      "campaign_name",
      "creative_fingerprint",
      "adset_bid_type",
      "adset_bid_value",
      "budget_type",
      "budget_value",
      "adset_budget_type",
      "adset_budget_value",
      "campaign_budget_type",
      "campaign_budget_value",
      "buying_type",
      "delivery_info",
      "objective",
      "delivery_start",
      "delivery_end",
      "ad_delivery",
      "adset_delivery",
      "campaign_delivery",
      "days_1",
      "days_7",
      "days_14",
      "monthly",
      "all_days",
    ]


    field :headers, 'object'
    field :rows, { list: 'object' }
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
