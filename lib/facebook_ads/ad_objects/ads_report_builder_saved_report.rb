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

  class AdsReportBuilderSavedReport < AdObject

    field :action_report_time, 'string'
    field :ad_account_id, 'string'
    field :attribution_windows, { list: 'string' }
    field :comparison_date_interval, 'object'
    field :creation_source, 'string'
    field :creation_time, 'datetime'
    field :currency, 'string'
    field :date_interval, 'object'
    field :date_preset, 'string'
    field :default_attribution_windows, { list: 'string' }
    field :dimension_groups, { list: { list: 'string' } }
    field :dimensions, { list: 'string' }
    field :filtering, { list: 'string' }
    field :formatting, { list: 'map<string, list<Object>>' }
    field :id, 'string'
    field :last_access_by, 'Profile'
    field :last_access_time, 'datetime'
    field :last_report_snapshot_id, 'string'
    field :last_report_snapshot_time, 'datetime'
    field :last_shared_report_expiration, 'datetime'
    field :limit, 'int'
    field :locked_dimensions, 'int'
    field :metrics, { list: 'string' }
    field :report_name, 'string'
    field :report_snapshot_async_percent_completion, 'int'
    field :report_snapshot_async_status, 'string'
    field :schedule_frequency, 'string'
    field :scope, 'string'
    field :show_deprecate_aw_banner, 'bool'
    field :sorting, { list: 'object' }
    field :start_date, 'string'
    field :status, 'string'
    field :subscribers, { list: 'string' }
    field :update_by, 'Profile'
    field :update_time, 'datetime'
    field :user, 'Profile'
    field :user_dimensions, { list: 'string' }
    field :user_metrics, { list: 'string' }
    field :view_type, 'string'
    has_no_post
    has_no_delete

  end
end
