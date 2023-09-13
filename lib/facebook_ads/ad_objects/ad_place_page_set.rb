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

  class AdPlacePageSet < AdObject
    LOCATION_TYPES = [
      "home",
      "recent",
    ]

    TARGETED_AREA_TYPE = [
      "CUSTOM_RADIUS",
      "MARKETING_AREA",
      "NONE",
    ]


    field :account_id, 'string'
    field :id, 'string'
    field :location_types, { list: 'string' }
    field :name, 'string'
    field :pages_count, 'int'
    field :parent_page, 'Page'
    field :targeted_area_type, 'adaccountad_place_page_sets_targeted_area_type_enum_param'
    has_no_post
    has_no_delete

  end
end
