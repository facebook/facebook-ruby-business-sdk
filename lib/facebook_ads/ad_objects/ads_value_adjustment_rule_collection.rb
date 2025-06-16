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

  class AdsValueAdjustmentRuleCollection < AdObject
    PRODUCT_TYPE = [
      "AUDIENCE",
      "LEADGEN_ADS",
      "OMNI_CHANNEL",
    ]

    STATUS = [
      "ACTIVE",
      "DELETED",
    ]


    field :id, 'string'
    field :is_default_setting, 'bool'
    field :name, 'string'
    field :product_type, 'string'
    field :status, 'string'
    field :rules, { list: 'hash' }
    has_no_delete

    has_edge :delete_rule_set do |edge|
      edge.post 'AdsValueAdjustmentRuleCollection'
    end

    has_edge :rules do |edge|
      edge.get
    end

  end
end
