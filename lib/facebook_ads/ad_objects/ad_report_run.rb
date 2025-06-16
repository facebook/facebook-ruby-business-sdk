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

  class AdReportRun < AdObject

    field :account_id, 'string'
    field :async_percent_completion, 'int'
    field :async_report_url, 'string'
    field :async_status, 'string'
    field :date_start, 'string'
    field :date_stop, 'string'
    field :emails, { list: 'string' }
    field :error_code, 'int'
    field :friendly_name, 'string'
    field :id, 'string'
    field :is_async_export, 'int'
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
    field :limit, 'int'
    field :product_id_limit, 'int'
    field :sort, { list: 'string' }
    field :summary, { list: 'string' }
    field :summary_action_breakdowns, { list: 'adaccountinsights_summary_action_breakdowns_enum_param' }
    field :time_increment, 'string'
    field :time_range, 'hash'
    field :time_ranges, { list: 'hash' }
    field :use_account_attribution_setting, 'bool'
    field :use_unified_attribution_setting, 'bool'
    has_no_post
    has_no_delete

    has_edge :insights do |edge|
      edge.get 'AdsInsights'
    end

  end
end
