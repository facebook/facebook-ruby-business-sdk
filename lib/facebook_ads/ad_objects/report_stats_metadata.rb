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

  class ReportStatsMetadata < AdObject
    ACTIONS_GROUP_BY = [
      "action_canvas_component_id",
      "action_canvas_component_name",
      "action_carousel_card_id",
      "action_carousel_card_name",
      "action_destination",
      "action_device",
      "action_event_channel",
      "action_target_id",
      "action_type",
      "action_video_sound",
      "action_video_type",
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


    field :cutoff_date_account_data, 'string'
    field :cutoff_date_actions, 'string'
    field :cutoff_date_carousel_action_breakdown, 'string'
    field :cutoff_date_carousel_card_name, 'string'
    field :cutoff_date_demographics, 'string'
    field :cutoff_date_general, 'string'
    field :cutoff_date_placement, 'string'
    field :cutoff_date_relevance_score, 'string'
    field :cutoff_date_video_type_breakdown, 'string'
    field :cutoff_date_website_ctr, 'string'
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
