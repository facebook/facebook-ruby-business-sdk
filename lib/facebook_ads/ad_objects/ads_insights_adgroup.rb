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

  class AdsInsightsAdgroup < AdObject

    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

    has_edge :insights do |edge|
      edge.get 'AdsInsightsAdgroupGet' do |api|
        api.has_param :action_attribution_windows, 'string'
        api.has_param :action_breakdowns, 'string'
        api.has_param :action_report_time, 'string'
        api.has_param :after, 'string'
        api.has_param :am_call_tags, 'string'
        api.has_param :before, 'string'
        api.has_param :breakdowns, 'string'
        api.has_param :comparison_fields, 'string'
        api.has_param :comparison_time_ranges, 'string'
        api.has_param :date_preset, 'string'
        api.has_param :debug_enable_trace, 'bool'
        api.has_param :default_attribution_windows, 'string'
        api.has_param :default_summary, 'bool'
        api.has_param :e2e_scenario_run_id, 'string'
        api.has_param :export_columns, 'string'
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :fields, 'string'
        api.has_param :filtering, 'string'
        api.has_param :flog, 'string'
        api.has_param :graph_cache, 'bool'
        api.has_param :include_zeros, 'bool'
        api.has_param :level, 'string'
        api.has_param :limit, 'int'
        api.has_param :meta_breakdowns, 'string'
        api.has_param :product_id_limit, 'int'
        api.has_param :round_up_level, 'string'
        api.has_param :run_id, 'string'
        api.has_param :saber_setsuna_perf_request_id, 'string'
        api.has_param :sort, 'string'
        api.has_param :summary, 'string'
        api.has_param :summary_action_breakdowns, 'string'
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'string'
        api.has_param :time_ranges, 'string'
        api.has_param :use_account_attribution_setting, 'bool'
        api.has_param :use_unified_attribution_setting, 'bool'
      end
    end

  end
end
