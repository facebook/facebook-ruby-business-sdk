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

  class AdsPixelMicrodataStats < AdObject

    field :allowed_domains, { list: 'string' }
    field :errors_stats_for_time_ranges, { list: 'object' }
    field :has_valid_events, 'bool'
    field :suggested_allowed_domains_count_max, 'int'
    field :suggested_trusted_domains, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
