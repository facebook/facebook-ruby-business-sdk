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

  class AtlasCompany < AdObject

    field :created_by, 'object'
    field :created_date, 'datetime'
    field :created_time, 'datetime'
    field :cumulative_edited_date, 'datetime'
    field :id, 'string'
    field :is_mta, 'bool'
    field :last_modified_by, 'object'
    field :last_modified_date, 'datetime'
    field :last_modified_time, 'datetime'
    field :login_security, 'string'
    field :name, 'string'
    field :version, 'string'
    field :visibility_type, 'string'
    has_no_post
    has_no_delete

    has_edge :action_tags do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :advertisers do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :atlas_users do |edge|
      edge.get 'AtlasUser' do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :branches do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :campaigns do |edge|
      edge.get 'AtlasCampaign' do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :channels do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :clients do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :connected_fb_accounts do |edge|
      edge.get
    end

    has_edge :custom_dimensions do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :in_product_metrics_by_campaign do |edge|
      edge.get do |api|
        api.has_param :additional_filter_value_sets, { list: { list: 'string' } }
        api.has_param :columns, { list: { enum: %w{attributed_clicks_count attributed_impressions_count action_tag_id ad_id ad_set_id alias action_requests advertiser_id campaign_id campaign_group_id channel_id click_through_rate click_lookback_window click_lookback_window_in_minutes clicks company_id connection_id conversion_device_type conversion_event_id contributor_device_path_type age_range gender country dma_code dma_name device_os cost_per_1k_impressions cost_per_click cost_per_visit CUSTOM_BUCKET_BOOL_1 CUSTOM_BUCKET_BOOL_2 CUSTOM_BUCKET_BOOL_3 CUSTOM_BUCKET_BOOL_4 CUSTOM_BUCKET_INT_1 CUSTOM_BUCKET_INT_2 CUSTOM_BUCKET_INT_3 CUSTOM_BUCKET_INT_4 CUSTOM_BUCKET_STR_1 CUSTOM_BUCKET_STR_2 CUSTOM_BUCKET_STR_3 CUSTOM_BUCKET_STR_4 device_type days_from_conversion id data_driven_convs data_driven_convs_per_1k_impress data_driven_convs_per_100_clicks data_driven_convs_per_click data_driven_convs_per_visit data_driven_cpa data_driven_nullable_convs data_driven_roas data_driven_revenue dimension_group_ruleset even_credit_convs even_credit_convs_per_1k_impress even_credit_convs_per_100_clicks even_credit_convs_per_click even_credit_convs_per_visit even_credit_cpa even_credit_roas even_credit_revenue fb_identity_frequency fb_identity_reach first_click_convs first_click_revenue first_touch_convs first_touch_revenue first_touchpoints impression impressions last_click_convs last_click_convs_per_1k_impress last_click_convs_per_100_clicks last_click_convs_per_click last_click_convs_per_visit last_click_cpa last_click_roas last_click_revenue last_click_with_extrapolation_convs last_click_with_extrapolation_convs_per_1k_impress last_click_with_extrapolation_convs_per_100_clicks last_click_with_extrapolation_convs_per_click last_click_with_extrapolation_convs_per_visit last_click_with_extrapolation_cpa last_click_with_extrapolation_roas last_click_with_extrapolation_revenue last_click_with_cookies_convs last_click_with_cookies_convs_per_1k_impress last_click_with_cookies_convs_per_100_clicks last_click_with_cookies_convs_per_click last_click_with_cookies_convs_per_visit last_click_with_cookies_cpa last_click_with_cookies_roas last_click_with_cookies_revenue last_touch_convs last_touch_convs_per_1k_impress last_touch_convs_per_100_clicks last_touch_convs_per_click last_touch_convs_per_visit last_touch_cpa last_touch_roas last_touch_revenue first_view_convs first_view_revenue last_view_convs last_view_revenue last_touch_with_extrapolation_convs last_touch_with_extrapolation_convs_per_1k_impress last_touch_with_extrapolation_convs_per_100_clicks last_touch_with_extrapolation_convs_per_click last_touch_with_extrapolation_convs_per_visit last_touch_with_extrapolation_cpa last_touch_with_extrapolation_roas last_touch_with_extrapolation_revenue last_touchpoints lookback_window fraud_impressions metric_conversions metric_desktop_contributors metric_mobile_contributors non_fraud_impressions non_fraud_included_impressions off_screen_impressions positional_20fl_convs positional_20fl_convs_per_1k_impress positional_20fl_convs_per_100_clicks positional_20fl_convs_per_click positional_20fl_convs_per_visit positional_20fl_cpa positional_20fl_roas positional_20fl_revenue positional_30fl_convs positional_30fl_convs_per_1k_impress positional_30fl_convs_per_100_clicks positional_30fl_convs_per_click positional_30fl_convs_per_visit positional_30fl_cpa positional_30fl_roas positional_30fl_revenue positional_40fl_convs positional_40fl_convs_per_1k_impress positional_40fl_convs_per_100_clicks positional_40fl_convs_per_click positional_40fl_convs_per_visit positional_40fl_cpa positional_40fl_roas positional_40fl_revenue measurable_impressions name net_media_cost placement_id publisher_id raw_impressions reach reach_by_frequency_1 reach_by_frequency_2 reach_by_frequency_3 reach_by_frequency_4 reach_by_frequency_5 reach_by_frequency_6 reach_by_frequency_7 reach_by_frequency_8 reach_by_frequency_9 reach_by_frequency_10 reach_by_frequency_11 reach_by_frequency_12 reach_by_frequency_13 reach_by_frequency_14 reach_by_frequency_15_plus reach_excluded_impressions reach_included_impressions reach_frequency report_click_through_rate report_clicks report_impressions report_visits report_visits_for_virtual_column search_clicks source_channel stats_model_convs stats_model_convs_per_1k_impress stats_model_convs_per_100_clicks stats_model_convs_per_click stats_model_convs_per_visit stats_model_cpa stats_model_roas stats_model_revenue sum_legal_price tactic_id time_decay_1day_convs time_decay_1day_convs_per_1k_impress time_decay_1day_convs_per_100_clicks time_decay_1day_convs_per_click time_decay_1day_convs_per_visit time_decay_1day_cpa time_decay_1day_roas time_decay_1day_revenue time_decay_2day_convs time_decay_2day_convs_per_1k_impress time_decay_2day_convs_per_100_clicks time_decay_2day_convs_per_click time_decay_2day_convs_per_visit time_decay_2day_cpa time_decay_2day_roas time_decay_2day_revenue time_decay_7day_convs time_decay_7day_convs_per_1k_impress time_decay_7day_convs_per_100_clicks time_decay_7day_convs_per_click time_decay_7day_convs_per_visit time_decay_7day_cpa time_decay_7day_roas time_decay_7day_revenue time_decay_14day_convs time_decay_14day_convs_per_1k_impress time_decay_14day_convs_per_100_clicks time_decay_14day_convs_per_click time_decay_14day_convs_per_visit time_decay_14day_cpa time_decay_14day_roas time_decay_14day_revenue timestamp total_comparable_conversions total_comparable_revenue total_conversions total_measurable_impressions total_non_fraud_impressions total_raw_impressions total_revenue total_viewable_impressions total_wasted_impressions unique_reach url_without_params version_id view_lookback_window view_lookback_window_in_minutes viewable_impressions wasted_impressions }} }
        api.has_param :date_range, 'object'
        api.has_param :dimension_columns, { list: { enum: %w{attributed_clicks_count attributed_impressions_count action_tag_id ad_id ad_set_id alias action_requests advertiser_id campaign_id campaign_group_id channel_id click_through_rate click_lookback_window click_lookback_window_in_minutes clicks company_id connection_id conversion_device_type conversion_event_id contributor_device_path_type age_range gender country dma_code dma_name device_os cost_per_1k_impressions cost_per_click cost_per_visit CUSTOM_BUCKET_BOOL_1 CUSTOM_BUCKET_BOOL_2 CUSTOM_BUCKET_BOOL_3 CUSTOM_BUCKET_BOOL_4 CUSTOM_BUCKET_INT_1 CUSTOM_BUCKET_INT_2 CUSTOM_BUCKET_INT_3 CUSTOM_BUCKET_INT_4 CUSTOM_BUCKET_STR_1 CUSTOM_BUCKET_STR_2 CUSTOM_BUCKET_STR_3 CUSTOM_BUCKET_STR_4 device_type days_from_conversion id data_driven_convs data_driven_convs_per_1k_impress data_driven_convs_per_100_clicks data_driven_convs_per_click data_driven_convs_per_visit data_driven_cpa data_driven_nullable_convs data_driven_roas data_driven_revenue dimension_group_ruleset even_credit_convs even_credit_convs_per_1k_impress even_credit_convs_per_100_clicks even_credit_convs_per_click even_credit_convs_per_visit even_credit_cpa even_credit_roas even_credit_revenue fb_identity_frequency fb_identity_reach first_click_convs first_click_revenue first_touch_convs first_touch_revenue first_touchpoints impression impressions last_click_convs last_click_convs_per_1k_impress last_click_convs_per_100_clicks last_click_convs_per_click last_click_convs_per_visit last_click_cpa last_click_roas last_click_revenue last_click_with_extrapolation_convs last_click_with_extrapolation_convs_per_1k_impress last_click_with_extrapolation_convs_per_100_clicks last_click_with_extrapolation_convs_per_click last_click_with_extrapolation_convs_per_visit last_click_with_extrapolation_cpa last_click_with_extrapolation_roas last_click_with_extrapolation_revenue last_click_with_cookies_convs last_click_with_cookies_convs_per_1k_impress last_click_with_cookies_convs_per_100_clicks last_click_with_cookies_convs_per_click last_click_with_cookies_convs_per_visit last_click_with_cookies_cpa last_click_with_cookies_roas last_click_with_cookies_revenue last_touch_convs last_touch_convs_per_1k_impress last_touch_convs_per_100_clicks last_touch_convs_per_click last_touch_convs_per_visit last_touch_cpa last_touch_roas last_touch_revenue first_view_convs first_view_revenue last_view_convs last_view_revenue last_touch_with_extrapolation_convs last_touch_with_extrapolation_convs_per_1k_impress last_touch_with_extrapolation_convs_per_100_clicks last_touch_with_extrapolation_convs_per_click last_touch_with_extrapolation_convs_per_visit last_touch_with_extrapolation_cpa last_touch_with_extrapolation_roas last_touch_with_extrapolation_revenue last_touchpoints lookback_window fraud_impressions metric_conversions metric_desktop_contributors metric_mobile_contributors non_fraud_impressions non_fraud_included_impressions off_screen_impressions positional_20fl_convs positional_20fl_convs_per_1k_impress positional_20fl_convs_per_100_clicks positional_20fl_convs_per_click positional_20fl_convs_per_visit positional_20fl_cpa positional_20fl_roas positional_20fl_revenue positional_30fl_convs positional_30fl_convs_per_1k_impress positional_30fl_convs_per_100_clicks positional_30fl_convs_per_click positional_30fl_convs_per_visit positional_30fl_cpa positional_30fl_roas positional_30fl_revenue positional_40fl_convs positional_40fl_convs_per_1k_impress positional_40fl_convs_per_100_clicks positional_40fl_convs_per_click positional_40fl_convs_per_visit positional_40fl_cpa positional_40fl_roas positional_40fl_revenue measurable_impressions name net_media_cost placement_id publisher_id raw_impressions reach reach_by_frequency_1 reach_by_frequency_2 reach_by_frequency_3 reach_by_frequency_4 reach_by_frequency_5 reach_by_frequency_6 reach_by_frequency_7 reach_by_frequency_8 reach_by_frequency_9 reach_by_frequency_10 reach_by_frequency_11 reach_by_frequency_12 reach_by_frequency_13 reach_by_frequency_14 reach_by_frequency_15_plus reach_excluded_impressions reach_included_impressions reach_frequency report_click_through_rate report_clicks report_impressions report_visits report_visits_for_virtual_column search_clicks source_channel stats_model_convs stats_model_convs_per_1k_impress stats_model_convs_per_100_clicks stats_model_convs_per_click stats_model_convs_per_visit stats_model_cpa stats_model_roas stats_model_revenue sum_legal_price tactic_id time_decay_1day_convs time_decay_1day_convs_per_1k_impress time_decay_1day_convs_per_100_clicks time_decay_1day_convs_per_click time_decay_1day_convs_per_visit time_decay_1day_cpa time_decay_1day_roas time_decay_1day_revenue time_decay_2day_convs time_decay_2day_convs_per_1k_impress time_decay_2day_convs_per_100_clicks time_decay_2day_convs_per_click time_decay_2day_convs_per_visit time_decay_2day_cpa time_decay_2day_roas time_decay_2day_revenue time_decay_7day_convs time_decay_7day_convs_per_1k_impress time_decay_7day_convs_per_100_clicks time_decay_7day_convs_per_click time_decay_7day_convs_per_visit time_decay_7day_cpa time_decay_7day_roas time_decay_7day_revenue time_decay_14day_convs time_decay_14day_convs_per_1k_impress time_decay_14day_convs_per_100_clicks time_decay_14day_convs_per_click time_decay_14day_convs_per_visit time_decay_14day_cpa time_decay_14day_roas time_decay_14day_revenue timestamp total_comparable_conversions total_comparable_revenue total_conversions total_measurable_impressions total_non_fraud_impressions total_raw_impressions total_revenue total_viewable_impressions total_wasted_impressions unique_reach url_without_params version_id view_lookback_window view_lookback_window_in_minutes viewable_impressions wasted_impressions }} }
        api.has_param :filter_by, 'string'
        api.has_param :filter_value_sets, { list: { list: 'string' } }
        api.has_param :granularity, { enum: %w{hour day week month year lifetime }}
        api.has_param :join_column, { enum: %w{attributed_clicks_count attributed_impressions_count action_tag_id ad_id ad_set_id alias action_requests advertiser_id campaign_id campaign_group_id channel_id click_through_rate click_lookback_window click_lookback_window_in_minutes clicks company_id connection_id conversion_device_type conversion_event_id contributor_device_path_type age_range gender country dma_code dma_name device_os cost_per_1k_impressions cost_per_click cost_per_visit CUSTOM_BUCKET_BOOL_1 CUSTOM_BUCKET_BOOL_2 CUSTOM_BUCKET_BOOL_3 CUSTOM_BUCKET_BOOL_4 CUSTOM_BUCKET_INT_1 CUSTOM_BUCKET_INT_2 CUSTOM_BUCKET_INT_3 CUSTOM_BUCKET_INT_4 CUSTOM_BUCKET_STR_1 CUSTOM_BUCKET_STR_2 CUSTOM_BUCKET_STR_3 CUSTOM_BUCKET_STR_4 device_type days_from_conversion id data_driven_convs data_driven_convs_per_1k_impress data_driven_convs_per_100_clicks data_driven_convs_per_click data_driven_convs_per_visit data_driven_cpa data_driven_nullable_convs data_driven_roas data_driven_revenue dimension_group_ruleset even_credit_convs even_credit_convs_per_1k_impress even_credit_convs_per_100_clicks even_credit_convs_per_click even_credit_convs_per_visit even_credit_cpa even_credit_roas even_credit_revenue fb_identity_frequency fb_identity_reach first_click_convs first_click_revenue first_touch_convs first_touch_revenue first_touchpoints impression impressions last_click_convs last_click_convs_per_1k_impress last_click_convs_per_100_clicks last_click_convs_per_click last_click_convs_per_visit last_click_cpa last_click_roas last_click_revenue last_click_with_extrapolation_convs last_click_with_extrapolation_convs_per_1k_impress last_click_with_extrapolation_convs_per_100_clicks last_click_with_extrapolation_convs_per_click last_click_with_extrapolation_convs_per_visit last_click_with_extrapolation_cpa last_click_with_extrapolation_roas last_click_with_extrapolation_revenue last_click_with_cookies_convs last_click_with_cookies_convs_per_1k_impress last_click_with_cookies_convs_per_100_clicks last_click_with_cookies_convs_per_click last_click_with_cookies_convs_per_visit last_click_with_cookies_cpa last_click_with_cookies_roas last_click_with_cookies_revenue last_touch_convs last_touch_convs_per_1k_impress last_touch_convs_per_100_clicks last_touch_convs_per_click last_touch_convs_per_visit last_touch_cpa last_touch_roas last_touch_revenue first_view_convs first_view_revenue last_view_convs last_view_revenue last_touch_with_extrapolation_convs last_touch_with_extrapolation_convs_per_1k_impress last_touch_with_extrapolation_convs_per_100_clicks last_touch_with_extrapolation_convs_per_click last_touch_with_extrapolation_convs_per_visit last_touch_with_extrapolation_cpa last_touch_with_extrapolation_roas last_touch_with_extrapolation_revenue last_touchpoints lookback_window fraud_impressions metric_conversions metric_desktop_contributors metric_mobile_contributors non_fraud_impressions non_fraud_included_impressions off_screen_impressions positional_20fl_convs positional_20fl_convs_per_1k_impress positional_20fl_convs_per_100_clicks positional_20fl_convs_per_click positional_20fl_convs_per_visit positional_20fl_cpa positional_20fl_roas positional_20fl_revenue positional_30fl_convs positional_30fl_convs_per_1k_impress positional_30fl_convs_per_100_clicks positional_30fl_convs_per_click positional_30fl_convs_per_visit positional_30fl_cpa positional_30fl_roas positional_30fl_revenue positional_40fl_convs positional_40fl_convs_per_1k_impress positional_40fl_convs_per_100_clicks positional_40fl_convs_per_click positional_40fl_convs_per_visit positional_40fl_cpa positional_40fl_roas positional_40fl_revenue measurable_impressions name net_media_cost placement_id publisher_id raw_impressions reach reach_by_frequency_1 reach_by_frequency_2 reach_by_frequency_3 reach_by_frequency_4 reach_by_frequency_5 reach_by_frequency_6 reach_by_frequency_7 reach_by_frequency_8 reach_by_frequency_9 reach_by_frequency_10 reach_by_frequency_11 reach_by_frequency_12 reach_by_frequency_13 reach_by_frequency_14 reach_by_frequency_15_plus reach_excluded_impressions reach_included_impressions reach_frequency report_click_through_rate report_clicks report_impressions report_visits report_visits_for_virtual_column search_clicks source_channel stats_model_convs stats_model_convs_per_1k_impress stats_model_convs_per_100_clicks stats_model_convs_per_click stats_model_convs_per_visit stats_model_cpa stats_model_roas stats_model_revenue sum_legal_price tactic_id time_decay_1day_convs time_decay_1day_convs_per_1k_impress time_decay_1day_convs_per_100_clicks time_decay_1day_convs_per_click time_decay_1day_convs_per_visit time_decay_1day_cpa time_decay_1day_roas time_decay_1day_revenue time_decay_2day_convs time_decay_2day_convs_per_1k_impress time_decay_2day_convs_per_100_clicks time_decay_2day_convs_per_click time_decay_2day_convs_per_visit time_decay_2day_cpa time_decay_2day_roas time_decay_2day_revenue time_decay_7day_convs time_decay_7day_convs_per_1k_impress time_decay_7day_convs_per_100_clicks time_decay_7day_convs_per_click time_decay_7day_convs_per_visit time_decay_7day_cpa time_decay_7day_roas time_decay_7day_revenue time_decay_14day_convs time_decay_14day_convs_per_1k_impress time_decay_14day_convs_per_100_clicks time_decay_14day_convs_per_click time_decay_14day_convs_per_visit time_decay_14day_cpa time_decay_14day_roas time_decay_14day_revenue timestamp total_comparable_conversions total_comparable_revenue total_conversions total_measurable_impressions total_non_fraud_impressions total_raw_impressions total_revenue total_viewable_impressions total_wasted_impressions unique_reach url_without_params version_id view_lookback_window view_lookback_window_in_minutes viewable_impressions wasted_impressions }}
        api.has_param :order_by, 'string'
        api.has_param :requested_columns, { list: { enum: %w{attributed_clicks_count attributed_impressions_count action_tag_id ad_id ad_set_id alias action_requests advertiser_id campaign_id campaign_group_id channel_id click_through_rate click_lookback_window click_lookback_window_in_minutes clicks company_id connection_id conversion_device_type conversion_event_id contributor_device_path_type age_range gender country dma_code dma_name device_os cost_per_1k_impressions cost_per_click cost_per_visit CUSTOM_BUCKET_BOOL_1 CUSTOM_BUCKET_BOOL_2 CUSTOM_BUCKET_BOOL_3 CUSTOM_BUCKET_BOOL_4 CUSTOM_BUCKET_INT_1 CUSTOM_BUCKET_INT_2 CUSTOM_BUCKET_INT_3 CUSTOM_BUCKET_INT_4 CUSTOM_BUCKET_STR_1 CUSTOM_BUCKET_STR_2 CUSTOM_BUCKET_STR_3 CUSTOM_BUCKET_STR_4 device_type days_from_conversion id data_driven_convs data_driven_convs_per_1k_impress data_driven_convs_per_100_clicks data_driven_convs_per_click data_driven_convs_per_visit data_driven_cpa data_driven_nullable_convs data_driven_roas data_driven_revenue dimension_group_ruleset even_credit_convs even_credit_convs_per_1k_impress even_credit_convs_per_100_clicks even_credit_convs_per_click even_credit_convs_per_visit even_credit_cpa even_credit_roas even_credit_revenue fb_identity_frequency fb_identity_reach first_click_convs first_click_revenue first_touch_convs first_touch_revenue first_touchpoints impression impressions last_click_convs last_click_convs_per_1k_impress last_click_convs_per_100_clicks last_click_convs_per_click last_click_convs_per_visit last_click_cpa last_click_roas last_click_revenue last_click_with_extrapolation_convs last_click_with_extrapolation_convs_per_1k_impress last_click_with_extrapolation_convs_per_100_clicks last_click_with_extrapolation_convs_per_click last_click_with_extrapolation_convs_per_visit last_click_with_extrapolation_cpa last_click_with_extrapolation_roas last_click_with_extrapolation_revenue last_click_with_cookies_convs last_click_with_cookies_convs_per_1k_impress last_click_with_cookies_convs_per_100_clicks last_click_with_cookies_convs_per_click last_click_with_cookies_convs_per_visit last_click_with_cookies_cpa last_click_with_cookies_roas last_click_with_cookies_revenue last_touch_convs last_touch_convs_per_1k_impress last_touch_convs_per_100_clicks last_touch_convs_per_click last_touch_convs_per_visit last_touch_cpa last_touch_roas last_touch_revenue first_view_convs first_view_revenue last_view_convs last_view_revenue last_touch_with_extrapolation_convs last_touch_with_extrapolation_convs_per_1k_impress last_touch_with_extrapolation_convs_per_100_clicks last_touch_with_extrapolation_convs_per_click last_touch_with_extrapolation_convs_per_visit last_touch_with_extrapolation_cpa last_touch_with_extrapolation_roas last_touch_with_extrapolation_revenue last_touchpoints lookback_window fraud_impressions metric_conversions metric_desktop_contributors metric_mobile_contributors non_fraud_impressions non_fraud_included_impressions off_screen_impressions positional_20fl_convs positional_20fl_convs_per_1k_impress positional_20fl_convs_per_100_clicks positional_20fl_convs_per_click positional_20fl_convs_per_visit positional_20fl_cpa positional_20fl_roas positional_20fl_revenue positional_30fl_convs positional_30fl_convs_per_1k_impress positional_30fl_convs_per_100_clicks positional_30fl_convs_per_click positional_30fl_convs_per_visit positional_30fl_cpa positional_30fl_roas positional_30fl_revenue positional_40fl_convs positional_40fl_convs_per_1k_impress positional_40fl_convs_per_100_clicks positional_40fl_convs_per_click positional_40fl_convs_per_visit positional_40fl_cpa positional_40fl_roas positional_40fl_revenue measurable_impressions name net_media_cost placement_id publisher_id raw_impressions reach reach_by_frequency_1 reach_by_frequency_2 reach_by_frequency_3 reach_by_frequency_4 reach_by_frequency_5 reach_by_frequency_6 reach_by_frequency_7 reach_by_frequency_8 reach_by_frequency_9 reach_by_frequency_10 reach_by_frequency_11 reach_by_frequency_12 reach_by_frequency_13 reach_by_frequency_14 reach_by_frequency_15_plus reach_excluded_impressions reach_included_impressions reach_frequency report_click_through_rate report_clicks report_impressions report_visits report_visits_for_virtual_column search_clicks source_channel stats_model_convs stats_model_convs_per_1k_impress stats_model_convs_per_100_clicks stats_model_convs_per_click stats_model_convs_per_visit stats_model_cpa stats_model_roas stats_model_revenue sum_legal_price tactic_id time_decay_1day_convs time_decay_1day_convs_per_1k_impress time_decay_1day_convs_per_100_clicks time_decay_1day_convs_per_click time_decay_1day_convs_per_visit time_decay_1day_cpa time_decay_1day_roas time_decay_1day_revenue time_decay_2day_convs time_decay_2day_convs_per_1k_impress time_decay_2day_convs_per_100_clicks time_decay_2day_convs_per_click time_decay_2day_convs_per_visit time_decay_2day_cpa time_decay_2day_roas time_decay_2day_revenue time_decay_7day_convs time_decay_7day_convs_per_1k_impress time_decay_7day_convs_per_100_clicks time_decay_7day_convs_per_click time_decay_7day_convs_per_visit time_decay_7day_cpa time_decay_7day_roas time_decay_7day_revenue time_decay_14day_convs time_decay_14day_convs_per_1k_impress time_decay_14day_convs_per_100_clicks time_decay_14day_convs_per_click time_decay_14day_convs_per_visit time_decay_14day_cpa time_decay_14day_roas time_decay_14day_revenue timestamp total_comparable_conversions total_comparable_revenue total_conversions total_measurable_impressions total_non_fraud_impressions total_raw_impressions total_revenue total_viewable_impressions total_wasted_impressions unique_reach url_without_params version_id view_lookback_window view_lookback_window_in_minutes viewable_impressions wasted_impressions }} }
        api.has_param :should_include_empty_metrics_rows, 'bool'
        api.has_param :should_include_prior_period, 'bool'
        api.has_param :should_summarize_over_date_range, 'bool'
        api.has_param :time_period, { enum: %w{all_available all_dates custom date_range fifteen_days last_fourteen_days last_hundred_fourty_four_hours last_month last_ninety_days last_quarter last_seven_days last_sixty_days last_thirty_days last_twenty_four_hours last_year month_to_date quarter_to_date seven_days thirty_days this_month_whole_days today week_to_date year_to_date yesterday }}
        api.has_param :view, { enum: %w{none adset/connection/advertiser advertiser advertiser/version advertiser/version/campaign campaign campaign/device campaign/placement campaign/publisher campaign/version campaign/version/publisher company/campaign connection/advertiser connection/advertiser/adset connection/advertiser/campaign connection/advertiser/campaign/placement conversion_event/campaign conversion_event/channel conversion_event/publisher conversion_event/tactic placement placement/advertiser placement/device publisher publisher/campaign publisher/device }}
      end
    end

    has_edge :permissions do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :report_columns do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :report_runs do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :reports do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :roles do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :tactics do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :tracking_connections do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

  end
end
