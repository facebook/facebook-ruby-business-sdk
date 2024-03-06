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

  class AnalyticsSegment < AdObject

    field :custom_audience_ineligiblity_reasons, { list: 'string' }
    field :description, 'string'
    field :estimated_custom_audience_size, 'int'
    field :event_info_rules, { list: 'object' }
    field :event_rules, { list: 'object' }
    field :filter_set, 'string'
    field :has_demographic_rules, 'bool'
    field :id, 'string'
    field :is_all_user, 'bool'
    field :is_eligible_for_push_campaign, 'bool'
    field :is_internal, 'bool'
    field :name, 'string'
    field :percentile_rules, { list: 'object' }
    field :time_last_seen, 'int'
    field :time_last_updated, 'int'
    field :user_property_rules, { list: 'object' }
    field :web_param_rules, { list: 'object' }
    has_no_post
    has_no_delete

  end
end
