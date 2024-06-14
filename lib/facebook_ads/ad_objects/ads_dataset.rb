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

  class AdsDataset < AdObject

    field :can_proxy, 'bool'
    field :collection_rate, 'double'
    field :config, 'string'
    field :creation_time, 'datetime'
    field :creator, 'User'
    field :dataset_id, 'string'
    field :description, 'string'
    field :duplicate_entries, 'int'
    field :enable_auto_assign_to_accounts, 'bool'
    field :enable_automatic_events, 'bool'
    field :enable_automatic_matching, 'bool'
    field :enable_real_time_event_log, 'bool'
    field :event_stats, 'string'
    field :event_time_max, 'int'
    field :event_time_min, 'int'
    field :first_party_cookie_status, 'string'
    field :has_bapi_domains, 'bool'
    field :has_catalog_microdata_activity, 'bool'
    field :has_ofa_redacted_keys, 'bool'
    field :has_sent_pii, 'bool'
    field :id, 'string'
    field :is_consolidated_container, 'bool'
    field :is_created_by_business, 'bool'
    field :is_crm, 'bool'
    field :is_eligible_for_sharing_to_ad_account, 'bool'
    field :is_eligible_for_sharing_to_business, 'bool'
    field :is_eligible_for_value_optimization, 'bool'
    field :is_mta_use, 'bool'
    field :is_restricted_use, 'bool'
    field :is_unavailable, 'bool'
    field :last_fired_time, 'datetime'
    field :last_upload_app, 'string'
    field :last_upload_app_changed_time, 'int'
    field :last_upload_time, 'int'
    field :late_upload_reminder_eligibility, 'bool'
    field :match_rate_approx, 'int'
    field :matched_entries, 'int'
    field :name, 'string'
    field :no_ads_tracked_for_weekly_uploaded_events_reminder_eligibility, 'bool'
    field :num_active_ad_set_tracked, 'int'
    field :num_recent_offline_conversions_uploaded, 'int'
    field :num_uploads, 'int'
    field :owner_ad_account, 'AdAccount'
    field :owner_business, 'Business'
    field :percentage_of_late_uploads_in_external_suboptimal_window, 'int'
    field :permissions, 'OfflineConversionDataSetPermissions'
    field :server_last_fired_time, 'datetime'
    field :show_automatic_events, 'bool'
    field :upload_rate, 'double'
    field :upload_reminder_eligibility, 'bool'
    field :usage, 'OfflineConversionDataSetUsage'
    field :valid_entries, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
