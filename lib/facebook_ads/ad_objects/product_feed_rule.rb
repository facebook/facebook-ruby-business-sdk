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

  class ProductFeedRule < AdObject
    RULE_TYPE = [
      "fallback_rule",
      "letter_case_rule",
      "mapping_rule",
      "regex_replace_rule",
      "value_mapping_rule",
    ]


    field :attribute, 'string'
    field :id, 'string'
    field :params, { list: 'hash' }
    field :rule_type, 'string'

  end
end
