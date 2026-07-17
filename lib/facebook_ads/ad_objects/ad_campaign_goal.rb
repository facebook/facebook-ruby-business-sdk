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

  class AdCampaignGoal < AdObject

    field :engaged_audiences_audience_label_exclusions, { list: 'string' }
    field :engaged_audiences_audience_label_inclusions, { list: 'string' }
    field :engaged_audiences_exclusions, { list: 'string' }
    field :engaged_audiences_inclusions, { list: 'string' }
    field :existing_customers_audience_label_exclusions, { list: 'string' }
    field :existing_customers_audience_label_inclusions, { list: 'string' }
    field :existing_customers_exclusions, { list: 'string' }
    field :existing_customers_inclusions, { list: 'string' }
    field :is_ca_expansion_enabled, 'bool'
    field :is_lookalike_inclusion_enabled, 'bool'
    field :lookalike_inclusions, { list: 'string' }
    field :type, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
