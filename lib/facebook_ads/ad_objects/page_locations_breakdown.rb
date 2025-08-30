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

  class PageLocationsBreakdown < AdObject

    field :location_id, 'string'
    field :location_name, 'string'
    field :location_type, 'string'
    field :num_pages, 'int'
    field :num_pages_eligible_for_store_visit_reporting, 'int'
    field :num_unpublished_or_closed_pages, 'int'
    field :parent_country_code, 'string'
    field :parent_region_id, 'int'
    field :parent_region_name, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
