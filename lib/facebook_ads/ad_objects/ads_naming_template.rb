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

  class AdsNamingTemplate < AdObject
    LEVEL = [
      "ADGROUP",
      "AD_ACCOUNT",
      "CAMPAIGN",
      "CAMPAIGN_GROUP",
      "OPPORTUNITIES",
      "PRIVACY_INFO_CENTER",
      "TOPLINE",
      "UNIQUE_ADCREATIVE",
    ]


    field :api_fields, { list: { list: 'map<string, list<map<string, string>>>' } }
    field :api_version, 'string'
    field :field_order, { list: 'string' }
    field :id, 'string'
    field :level, { enum: -> { LEVEL }}
    field :separator, 'string'
    field :template_version, 'string'
    field :user_defined_fields, { list: { list: 'map<string, list<string>>' } }
    field :value_separator, 'string'
    has_no_post
    has_no_delete

  end
end
