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
      "SPANISH",
      "SPORTS",
    ]


    field :account_id, 'int'
    field :activity_status, 'ReachFrequencyActivity'
    field :ad_formats, { list: 'ReachFrequencyAdFormat' }
    field :auction_entry_option_index, 'int'
    field :audience_size_lower_bound, 'int'
    field :audience_size_upper_bound, 'int'
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
    field :daily_impression_curve_map, { list: 'map<unsigned int, list<float>>' }
    field :day_parting_schedule, { list: 'ReachFrequencyDayPart' }
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
    field :feed_ratio_0000, 'int'
    field :frequency_cap, 'int'
    field :frequency_distribution_map, { list: 'map<unsigned int, list<float>>' }
    field :frequency_distribution_map_agg, { list: 'map<unsigned int, list<unsigned int>>' }
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
    field :odax_objective, 'int'
    field :odax_objective_name, 'string'
    field :optimization_goal, 'int'
    field :optimization_goal_name, 'string'
    field :pause_periods, { list: 'object' }
    field :placement_breakdown, 'ReachFrequencyEstimatesPlacementBreakdown'
    field :placement_breakdown_map, { list: 'map<unsigned int, ReachFrequencyEstimatesPlacementBreakdown>' }
    field :plan_name, 'string'
    field :plan_type, 'string'
    field :prediction_mode, 'int'
    field :prediction_progress, 'int'
    field :reference_id, 'string'
    field :reservation_status, 'int'
    field :start_time, 'datetime'
    field :status, 'int'
    field :story_event_type, 'int'
    field :target_cpm, 'int'
    field :target_spec, 'Targeting'
    field :time_created, 'datetime'
    field :time_updated, 'datetime'
    field :timezone_id, 'int'
    field :timezone_name, 'string'
    field :topline_id, 'int'
    field :video_view_length_constraint, 'int'
    field :viewtag, 'string'
    field :action, { enum: -> { ACTION }}
    field :budget, 'int'
    field :deal_id, 'string'
    field :destination_ids, { list: 'string' }
    field :exceptions, 'bool'
    field :existing_campaign_id, 'string'
    field :grp_buying, 'bool'
    field :impression, 'int'
    field :is_balanced_frequency, 'bool'
    field :is_full_view, 'bool'
    field :is_reach_and_frequency_io_buying, 'bool'
    field :num_curve_points, 'int'
    field :reach, 'int'
    field :rf_prediction_id, 'string'
    field :rf_prediction_id_to_release, 'string'
    field :rf_prediction_id_to_share, 'string'
    field :stop_time, 'int'
    field :target_frequency, 'int'
    field :target_frequency_reset_period, 'int'
    has_no_post
    has_no_delete

  end
end
