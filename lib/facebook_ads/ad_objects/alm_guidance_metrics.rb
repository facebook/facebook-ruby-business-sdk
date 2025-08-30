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

  class AlmGuidanceMetrics < AdObject

    field :ad_account_id, 'string'
    field :adopted_objects, { list: 'object' }
    field :guidance_name, 'string'
    field :guidance_type, 'string'
    field :l28_adoption, 'int'
    field :l28_available, 'int'
    field :l28_click, 'int'
    field :l28_conversion, 'int'
    field :l28_has_click, 'bool'
    field :l28_has_impression, 'bool'
    field :l28_impression, 'int'
    field :l28_is_actioned, 'bool'
    field :l28_is_adopted, 'bool'
    field :l28_is_available, 'bool'
    field :l28_is_pitched, 'bool'
    field :l28_pitch, 'int'
    field :l28d_adopted_revenue, 'double'
    field :last_actioned_ds, 'string'
    field :last_adopted_ds, 'string'
    field :last_pitch_ds, 'string'
    field :parent_advertiser_id, 'string'
    field :report_ds, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
