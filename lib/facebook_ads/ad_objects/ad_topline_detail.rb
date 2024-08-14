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

  class AdToplineDetail < AdObject

    field :active_status, 'int'
    field :ad_account_id, 'string'
    field :flight_end_date, 'datetime'
    field :flight_start_date, 'datetime'
    field :id, 'string'
    field :io_number, 'int'
    field :line_number, 'int'
    field :price, 'double'
    field :quantity, 'double'
    field :sf_detail_line_id, 'string'
    field :subline_id, 'string'
    field :targets, 'string'
    field :time_created, 'datetime'
    field :time_updated, 'datetime'
    has_no_post
    has_no_delete

  end
end
