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

  class AdReportSpec < AdObject
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

    CREATION_SOURCE = [
      "adsManagerReporting",
      "newAdsManager",
      "adsExcelAddin",
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

    FORMAT = [
      "JSON",
      "CSV",
      "XLS",
      "XLSX",
    ]


    field :account_id, 'string'
    field :actions_group_by, { list: 'string' }
    field :creation_source, 'string'
    field :data_columns, { list: 'string' }
    field :date_preset, 'string'
    field :export_columns, { list: 'string' }
    field :filters, { list: 'object' }
    field :format_version, 'int'
    field :id, 'string'
    field :insights_section, 'object'
    field :name, 'string'
    field :report_schedule, 'object'
    field :report_schedule_id, 'string'
    field :sort_by, 'string'
    field :sort_dir, 'string'
    field :time_increment, 'string'
    field :time_interval, 'object'
    field :time_ranges, { list: 'object' }
    field :format, { enum: -> { FORMAT }}
    field :report_run_id, 'string'
    field :user_report, 'bool'
    field :business_id, 'string'
    field :limit, 'int'
    field :bypass_async, 'bool'

  end
end
