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
    INSTREAM_PACKAGES = [
      "NORMAL",
      "PREMIUM",
      "SPORTS",
      "ENTERTAINMENT",
      "BEAUTY",
    ]

    STATUS = [
      "EXPIRED",
      "DRAFT",
      "PENDING",
      "ACTIVE",
      "COMPLETED",
    ]


    field :account_id, 'int'
    field :campaign_group_id, 'int'
    field :campaign_id, 'string'
    field :campaign_time_start, 'datetime'
    field :campaign_time_stop, 'datetime'
    field :curve_budget_reach, 'object'
    field :daily_impression_curve, { list: 'double' }
    field :destination_id, 'string'
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
    field :frequency_cap, 'int'
    field :frequency_distribution, { list: 'double' }
    field :frequency_distribution_map, { list: 'object' }
    field :frequency_distribution_map_agg, { list: 'object' }
    field :grp_dmas_audience_size, 'double'
    field :holdout_percentage, 'int'
    field :id, 'string'
    field :instagram_destination_id, 'string'
    field :interval_frequency_cap, 'int'
    field :interval_frequency_cap_reset_period, 'int'
    field :is_io, 'bool'
    field :name, 'string'
    field :pause_periods, { list: 'object' }
    field :placement_breakdown, 'object'
    field :prediction_mode, 'int'
    field :prediction_progress, 'int'
    field :reservation_status, 'int'
    field :status, 'int'
    field :story_event_type, 'int'
    field :target_audience_size, 'int'
    field :target_spec, 'Targeting'
    field :time_created, 'datetime'
    field :time_updated, 'datetime'
    field :budget, 'int'
    field :day_parting_schedule, { list: 'object' }
    field :destination_ids, { list: 'string' }
    field :end_time, 'int'
    field :instream_packages, { list: { enum: -> { INSTREAM_PACKAGES }} }
    field :num_curve_points, 'int'
    field :objective, 'string'
    field :reach, 'int'
    field :rf_prediction_id_to_share, 'string'
    field :start_time, 'int'
    field :stop_time, 'int'
    has_no_post
    has_no_delete

  end
end
