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

  class BrandRequest < AdObject

    field :ad_countries, { list: 'string' }
    field :additional_contacts, { list: 'string' }
    field :approval_level, 'int'
    field :cells, { list: 'object' }
    field :countries, { list: 'string' }
    field :deny_reason, 'string'
    field :end_time, 'datetime'
    field :estimated_reach, 'int'
    field :id, 'string'
    field :is_multicell, 'bool'
    field :locale, 'string'
    field :max_age, 'int'
    field :min_age, 'int'
    field :questions, { list: 'object' }
    field :region, 'string'
    field :request_status, 'string'
    field :review_date, 'datetime'
    field :start_time, 'datetime'
    field :status, 'string'
    field :submit_date, 'datetime'
    field :total_budget, 'int'
    has_no_post
    has_no_delete

  end
end
