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

  class ProductItemLocalInfo < AdObject

    field :availability_circle_origin, 'ProductItemLocalInfoLatLongShape'
    field :availability_circle_radius, 'double'
    field :availability_circle_radius_unit, 'string'
    field :availability_polygon_coordinates, { list: 'ProductItemLocalInfoLatLongShape' }
    field :availability_postal_codes, { list: 'string' }
    field :availability_source, 'string'
    field :id, 'string'
    field :inferred_circle_origin, 'ProductItemLocalInfoLatLongShape'
    field :inferred_circle_radius, 'double'
    has_no_post
    has_no_delete

  end
end
