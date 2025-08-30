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

  class AdTopline < AdObject

    field :account_id, 'string'
    field :client_approval_date, 'datetime'
    field :created_by, 'string'
    field :created_date, 'datetime'
    field :description, 'string'
    field :flight_end_date, 'datetime'
    field :flight_start_date, 'datetime'
    field :func_cap_amount, 'string'
    field :func_cap_amount_with_offset, 'string'
    field :func_line_amount, 'string'
    field :func_line_amount_with_offset, 'string'
    field :func_price, 'string'
    field :func_price_with_offset, 'string'
    field :gender, 'string'
    field :id, 'string'
    field :impressions, 'int'
    field :io_number, 'int'
    field :is_bonus_line, 'int'
    field :keywords, 'string'
    field :last_updated_by, 'string'
    field :last_updated_date, 'datetime'
    field :line_number, 'int'
    field :line_position, 'int'
    field :line_type, 'string'
    field :location, 'string'
    field :max_age, 'string'
    field :max_budget, 'string'
    field :min_age, 'string'
    field :price_per_trp, 'string'
    field :product_type, 'string'
    field :rev_assurance_approval_date, 'datetime'
    field :targets, 'string'
    field :trp_updated_time, 'int'
    field :trp_value, 'string'
    field :uom, 'string'
    has_no_post
    has_no_delete

  end
end
