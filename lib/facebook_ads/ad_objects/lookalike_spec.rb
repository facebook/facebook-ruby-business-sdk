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

  class LookalikeSpec < AdObject

    field :country, 'string'
    field :is_financial_service, 'bool'
    field :origin, { list: 'object' }
    field :origin_event_name, 'string'
    field :origin_event_source_name, 'string'
    field :origin_event_source_type, 'string'
    field :product_set_name, 'string'
    field :ratio, 'double'
    field :starting_ratio, 'double'
    field :target_countries, { list: 'string' }
    field :target_country_names, { list: 'string' }
    field :type, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
