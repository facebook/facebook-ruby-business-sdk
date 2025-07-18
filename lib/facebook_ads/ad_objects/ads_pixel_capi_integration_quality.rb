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

  class AdsPixelCapiIntegrationQuality < AdObject

    field :acr, 'object'
    field :data_freshness, 'object'
    field :dedupe_key_feedback, { list: 'object' }
    field :event_coverage, 'object'
    field :event_match_quality, 'object'
    field :event_name, 'string'
    field :event_potential_aly_acr_increase, 'object'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
