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
    ENTRY_POINT = [
      "ADVERTISING_SETTINGS",
      "L2_CONVERSION_LOCATION",
      "L2_GLOBAL",
      "L2_NCA_GOAL",
      "L2_PLACEMENT",
    ]

    PRODUCT_TYPE = [
      "AUDIENCE",
      "LEADGEN_ADS",
      "OMNI_CHANNEL",
    ]

    STATUS = [
      "ACTIVE",
      "DELETED",
      "DRAFT",
    ]


    field :id, 'string'
    field :is_default_setting, 'bool'
    field :last_attach_time, 'datetime'
    field :name, 'string'
    field :product_type, 'string'
    field :status, 'string'
    field :entry_point, { enum: -> { ENTRY_POINT }}
    field :rules, { list: 'hash' }
    has_no_delete

    has_edge :delete_rule_set do |edge|
      edge.post 'AdsValueAdjustmentRuleCollection' do |api|
        api.has_param :status, { enum: -> { AdsValueAdjustmentRuleCollection::STATUS }}
      end
    end

    has_edge :rules do |edge|
      edge.get
    end

  end
end
