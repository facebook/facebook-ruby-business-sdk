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

  class EventTicketTier < AdObject

    field :currency, 'string'
    field :description, 'string'
    field :end_sales_time, 'datetime'
    field :end_show_time, 'datetime'
    field :fee_settings, 'string'
    field :id, 'string'
    field :maximum_quantity, 'int'
    field :metadata, 'string'
    field :minimum_quantity, 'int'
    field :name, 'string'
    field :price, 'int'
    field :priority, 'int'
    field :retailer_id, 'string'
    field :seating_map_image_url, 'string'
    field :start_sales_time, 'datetime'
    field :start_show_time, 'datetime'
    field :status, 'string'
    field :total_quantity, 'int'
    has_no_post
    has_no_delete

  end
end
