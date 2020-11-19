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

  class AdReportRun < AdObject

    field :account_id, 'string'
    field :async_percent_completion, 'int'
    field :async_status, 'string'
    field :date_start, 'string'
    field :date_stop, 'string'
    field :emails, { list: 'string' }
    field :friendly_name, 'string'
    field :id, 'string'
    field :is_bookmarked, 'bool'
    field :is_running, 'bool'
    field :schedule_id, 'string'
    field :time_completed, 'int'
    field :time_ref, 'int'
    field :action_attribution_windows, { list: 'adaccountinsights_action_attribution_windows_enum_param' }
    field :action_breakdowns, { list: 'adaccountinsights_action_breakdowns_enum_param' }
    field :action_report_time, 'adaccountinsights_action_report_time_enum_param'
    field :breakdowns, { list: 'adaccountinsights_breakdowns_enum_param' }
    field :date_preset, 'adaccountinsights_date_preset_enum_param'
    field :default_summary, 'bool'
    field :export_columns, { list: 'string' }
    field :export_format, 'string'
    field :export_name, 'string'
    field :fields, { list: 'string' }
    field :filtering, { list: 'object' }
    field :level, 'adaccountinsights_level_enum_param'
    field :product_id_limit, 'int'
    field :sort, { list: 'string' }
    field :summary, { list: 'string' }
    field :summary_action_breakdowns, { list: 'adaccountinsights_summary_action_breakdowns_enum_param' }
    field :time_increment, 'string'
    field :time_range, 'object'
    field :time_ranges, { list: 'object' }
    field :use_account_attribution_setting, 'bool'
    has_no_post
    has_no_delete

    has_edge :insights do |edge|
      edge.get 'AdsInsights'
    end

  end
end
