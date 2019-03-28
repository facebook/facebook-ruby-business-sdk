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

  class ReachFrequencyPrediction < AdObject
    ACTION = [
      "cancel",
      "quote",
      "reserve",
    ]

    BUYING_TYPE = [
      "AUCTION",
      "DEPRECATED_REACH_BLOCK",
      "FIXED_CPM",
      "MIXED",
      "REACHBLOCK",
      "RESEARCH_POLL",
      "RESERVED",
    ]

    INSTREAM_PACKAGES = [
      "BEAUTY",
      "ENTERTAINMENT",
      "FOOD",
      "NORMAL",
      "PREMIUM",
      "REGULAR_ANIMALS_PETS",
      "REGULAR_FOOD",
      "REGULAR_GAMES",
      "REGULAR_POLITICS",
      "REGULAR_SPORTS",
      "REGULAR_STYLE",
      "REGULAR_TV_MOVIES",
      "SPORTS",
    ]

    STATUS = [
      "ACTIVE",
      "COMPLETED",
      "DRAFT",
      "EXPIRED",
      "PENDING",
    ]


    field :account_id, 'int'
    field :activity_status, 'ReachFrequencyActivity'
    field :ad_formats, { list: 'ReachFrequencyAdFormat' }
    field :auction_entry_option_index, 'int'
    field :business_id, 'int'
    field :buying_type, 'string'
    field :campaign_group_id, 'int'
    field :campaign_id, 'string'
    field :campaign_time_start, 'datetime'
    field :campaign_time_stop, 'datetime'
    field :currency, 'string'
    field :curve_budget_reach, 'ReachFrequencyEstimatesCurve'
    field :curve_reach, { list: 'int' }
    field :daily_grp_curve, { list: 'double' }
    field :daily_impression_curve, { list: 'double' }
    field :daily_impression_curve_map, 'map<unsigned int, list<float>>'
    field :day_parting_schedule, { list: 'ReachFrequencyDayPart' }
    field :demo_breakdown, 'ReachFrequencyEstimatesDemoBreakdown'
    field :destination_id, 'string'
    field :end_time, 'datetime'
    field :expiration_time, 'datetime'
    field :external_budget, 'int'
    field :external_impression, 'int'
    field :external_maximum_budget, 'int'
    field :external_maximum_impression, 'string'
    field :external_maximum_reach, 'int'
    field :external_minimum_budget, 'int'
    field :external_minimum_impression, 'int'
    field :external_minimum_reach, 'int'
    field :external_reach, 'int'
    field :external_values_breakdown, 'string'
    field :feed_ratio_0000, 'int'
    field :frequency_cap, 'int'
    field :frequency_distribution, { list: 'double' }
    field :frequency_distribution_map, 'map<unsigned int, list<float>>'
    field :frequency_distribution_map_agg, 'map<unsigned int, list<unsigned int>>'
    field :full_view_ratio_00, 'int'
    field :grp_audience_size, 'double'
    field :grp_avg_probability_map, 'string'
    field :grp_country_audience_size, 'double'
    field :grp_curve, { list: 'double' }
    field :grp_dmas_audience_size, 'double'
    field :grp_filtering_threshold_00, 'int'
    field :grp_points, 'double'
    field :grp_ratio, 'double'
    field :grp_reach_ratio, 'double'
    field :grp_status, 'string'
    field :holdout_percentage, 'int'
    field :id, 'string'
    field :impression_curve, { list: 'int' }
    field :instagram_destination_id, 'string'
    field :instream_packages, { list: 'string' }
    field :interval_frequency_cap, 'int'
    field :interval_frequency_cap_reset_period, 'int'
    field :is_bonus_media, 'int'
    field :is_conversion_goal, 'int'
    field :is_higher_average_frequency, 'bool'
    field :is_io, 'bool'
    field :is_reserved_buying, 'int'
    field :is_trp, 'bool'
    field :name, 'string'
    field :objective, 'int'
    field :objective_name, 'string'
    field :pause_periods, { list: 'object' }
    field :placement_breakdown, 'ReachFrequencyEstimatesPlacementBreakdown'
    field :placement_breakdown_map, 'map<unsigned int, ReachFrequencyEstimatesPlacementBreakdown>'
    field :plan_name, 'string'
    field :plan_type, 'string'
    field :prediction_mode, 'int'
    field :prediction_progress, 'int'
    field :reference_id, 'string'
    field :reservation_status, 'int'
    field :start_time, 'datetime'
    field :status, 'int'
    field :story_event_type, 'int'
    field :target_audience_size, 'int'
    field :target_cpm, 'int'
    field :target_spec, 'Targeting'
    field :time_created, 'datetime'
    field :time_updated, 'datetime'
    field :timezone_id, 'int'
    field :timezone_name, 'string'
    field :topline_id, 'int'
    field :tv_viewer_cluster_map, 'map<unsigned int, Object>'
    field :video_view_benchmark_map, 'hash'
    field :video_view_length_constraint, 'int'
    field :viewtag, 'string'
    field :action, { enum: -> { ACTION }}
    field :stop_time, 'int'
    field :reach, 'int'
    field :impression, 'int'
    field :budget, 'int'
    field :deal_id, 'string'
    field :destination_ids, { list: 'string' }
    field :rf_prediction_id, 'string'
    field :rf_prediction_id_to_release, 'string'
    field :rf_prediction_id_to_share, 'string'
    field :num_curve_points, 'int'
    field :grp_buying, 'bool'
    field :is_full_view, 'bool'
    field :is_reach_and_frequency_io_buying, 'bool'
    field :existing_campaign_id, 'string'
    field :exceptions, 'bool'
    has_no_post
    has_no_delete

  end
end
