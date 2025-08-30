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

  class LiveVideoAdBreakConfig < AdObject

    field :default_ad_break_duration, 'int'
    field :failure_reason_polling_interval, 'int'
    field :first_break_eligible_secs, 'int'
    field :guide_url, 'string'
    field :is_eligible_to_onboard, 'bool'
    field :is_enabled, 'bool'
    field :onboarding_url, 'string'
    field :preparing_duration, 'int'
    field :time_between_ad_breaks_secs, 'int'
    field :viewer_count_threshold, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
