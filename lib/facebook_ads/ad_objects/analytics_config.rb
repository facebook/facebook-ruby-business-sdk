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

  class AnalyticsConfig < AdObject

    field :analytics_access_for_authorized_ad_account, 'bool'
    field :breakdowns_config, { list: 'object' }
    field :builtin_fields_config, { list: 'object' }
    field :deprecated_events_config, { list: 'object' }
    field :events_config, { list: 'object' }
    field :ios_purchase_validation_secret, 'string'
    field :is_any_role_able_to_see_restricted_insights, 'bool'
    field :is_implicit_purchase_logging_on_android_supported, 'bool'
    field :is_implicit_purchase_logging_on_ios_supported, 'bool'
    field :is_track_ios_app_uninstall_supported, 'bool'
    field :journey_backfill_status, 'string'
    field :journey_conversion_events, { list: 'string' }
    field :journey_enabled, 'bool'
    field :journey_impacting_change_time, 'datetime'
    field :journey_timeout, 'string'
    field :latest_sdk_versions, 'hash'
    field :log_android_implicit_purchase_events, 'bool'
    field :log_automatic_analytics_events, 'bool'
    field :log_implicit_purchase_events, 'bool'
    field :prev_journey_conversion_events, { list: 'string' }
    field :query_approximation_accuracy_level, 'string'
    field :query_currency, 'string'
    field :query_timezone, 'string'
    field :recent_events_update_time, 'datetime'
    field :session_timeout_interval, 'int'
    field :track_ios_app_uninstall, 'bool'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
