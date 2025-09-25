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

  class AdCustomDerivedMetrics < AdObject
    SCOPE = [
      "ACCOUNT",
      "BUSINESS",
      "BUSINESS_ASSET_GROUP",
    ]


    field :ad_account_id, 'string'
    field :business, 'Business'
    field :creation_time, 'datetime'
    field :creator, 'Profile'
    field :custom_derived_metric_type, 'string'
    field :deletion_time, 'datetime'
    field :deletor, 'Profile'
    field :description, 'string'
    field :format_type, 'string'
    field :formula, 'string'
    field :has_attribution_windows, 'bool'
    field :has_inline_attribution_window, 'bool'
    field :id, 'string'
    field :name, 'string'
    field :permission, 'string'
    field :saved_report_id, 'string'
    field :scope, 'string'
    has_no_post
    has_no_delete

  end
end
