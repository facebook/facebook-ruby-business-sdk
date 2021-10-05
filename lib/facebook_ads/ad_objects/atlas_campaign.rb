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

  class AtlasCampaign < AdObject

    field :ad_platform, 'object'
    field :alias, 'string'
    field :cost_per_1k_impressions, 'double'
    field :cost_per_click, 'double'
    field :cost_per_visit, 'double'
    field :created_by, 'object'
    field :created_date, 'datetime'
    field :even_credit_convs, 'double'
    field :even_credit_convs_per_1k_impress, 'double'
    field :even_credit_convs_per_click, 'double'
    field :even_credit_convs_per_visit, 'double'
    field :even_credit_cpa, 'double'
    field :even_credit_revenue, 'double'
    field :even_credit_roas, 'double'
    field :first_click_convs, 'double'
    field :first_click_convs_per_1k_impress, 'double'
    field :first_click_convs_per_click, 'double'
    field :first_click_convs_per_visit, 'double'
    field :first_click_cpa, 'double'
    field :first_click_revenue, 'double'
    field :first_click_roas, 'double'
    field :first_touch_convs, 'double'
    field :first_touch_convs_per_1k_impress, 'double'
    field :first_touch_convs_per_click, 'double'
    field :first_touch_convs_per_visit, 'double'
    field :first_touch_cpa, 'double'
    field :first_touch_revenue, 'double'
    field :first_touch_roas, 'double'
    field :id, 'string'
    field :is_archived, 'bool'
    field :last_click_convs, 'double'
    field :last_click_convs_per_1k_impress, 'double'
    field :last_click_convs_per_click, 'double'
    field :last_click_convs_per_visit, 'double'
    field :last_click_cpa, 'double'
    field :last_click_revenue, 'double'
    field :last_click_roas, 'double'
    field :last_click_with_extrapolation_convs, 'double'
    field :last_click_with_extrapolation_convs_per_100_clicks, 'double'
    field :last_click_with_extrapolation_convs_per_1k_impress, 'double'
    field :last_click_with_extrapolation_convs_per_click, 'double'
    field :last_click_with_extrapolation_convs_per_visit, 'double'
    field :last_click_with_extrapolation_cpa, 'double'
    field :last_click_with_extrapolation_revenue, 'double'
    field :last_click_with_extrapolation_roas, 'double'
    field :last_click_with_extrapolation_unattributed, 'double'
    field :last_modified_by, 'object'
    field :last_modified_date, 'datetime'
    field :last_touch_convs, 'double'
    field :last_touch_convs_per_1k_impress, 'double'
    field :last_touch_convs_per_click, 'double'
    field :last_touch_convs_per_visit, 'double'
    field :last_touch_cpa, 'double'
    field :last_touch_revenue, 'double'
    field :last_touch_roas, 'double'
    field :name, 'string'
    field :net_media_cost, 'double'
    field :positional_30fl_convs, 'double'
    field :positional_30fl_convs_per_1k_impress, 'double'
    field :positional_30fl_convs_per_click, 'double'
    field :positional_30fl_convs_per_visit, 'double'
    field :positional_30fl_cpa, 'double'
    field :positional_30fl_revenue, 'double'
    field :positional_30fl_roas, 'double'
    field :positional_40fl_convs, 'double'
    field :positional_40fl_convs_per_1k_impress, 'double'
    field :positional_40fl_convs_per_click, 'double'
    field :positional_40fl_convs_per_visit, 'double'
    field :positional_40fl_cpa, 'double'
    field :positional_40fl_revenue, 'double'
    field :positional_40fl_roas, 'double'
    field :report_click_through_rate, 'double'
    field :report_clicks, 'int'
    field :report_impressions, 'int'
    field :report_visits, 'int'
    field :time_decay_1day_convs, 'double'
    field :time_decay_1day_convs_per_1k_impress, 'double'
    field :time_decay_1day_convs_per_click, 'double'
    field :time_decay_1day_convs_per_visit, 'double'
    field :time_decay_1day_cpa, 'double'
    field :time_decay_1day_revenue, 'double'
    field :time_decay_1day_roas, 'double'
    field :time_decay_7day_convs, 'double'
    field :time_decay_7day_convs_per_1k_impress, 'double'
    field :time_decay_7day_convs_per_click, 'double'
    field :time_decay_7day_convs_per_visit, 'double'
    field :time_decay_7day_cpa, 'double'
    field :time_decay_7day_revenue, 'double'
    field :time_decay_7day_roas, 'double'
    field :type, 'string'
    has_no_post
    has_no_delete

    has_edge :ad_sets do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :metric_scope, 'hash'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :business_unit do |edge|
      edge.get 'BusinessUnit'
    end

    has_edge :metrics_breakdown do |edge|
      edge.get do |api|
        api.has_param :dimensions, { list: { enum: %w{AD_ID AD_SET_ID CAMPAIGN_ID DEVICE_TYPE SOURCE_CHANNEL }} }
        api.has_param :granularity, { enum: %w{DAY HOUR MONTH WEEK_SUNDAY YEAR }}
        api.has_param :metric_scope, 'hash'
        api.has_param :order_by, { list: 'hash' }
      end
    end

    has_edge :sources do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :metric_scope, 'hash'
        api.has_param :order_by, 'string'
      end
    end

  end
end
