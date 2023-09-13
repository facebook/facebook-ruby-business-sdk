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

  class BroadTargetingCategories < AdObject

    field :category_description, 'string'
    field :id, 'string'
    field :name, 'string'
    field :parent_category, 'string'
    field :path, { list: 'string' }
    field :size_lower_bound, 'int'
    field :size_upper_bound, 'int'
    field :source, 'string'
    field :type, 'int'
    field :type_name, 'string'
    field :untranslated_name, 'string'
    field :untranslated_parent_name, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
