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

  class ProductSetProducts < AdObject

    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

    has_edge :products do |edge|
      edge.get 'ProductSetProductsGet' do |api|
        api.has_param :after, 'string'
        api.has_param :before, 'string'
        api.has_param :dedupe_by_group_id_for_small_catalogs, 'string'
        api.has_param :dedupe_items_by_group, 'string'
        api.has_param :display_format, { enum: -> { ProductSetProductsGet::DISPLAY_FORMAT }}
        api.has_param :enable_typeahead, 'string'
        api.has_param :error_priority, { enum: -> { ProductSetProductsGet::ERROR_PRIORITY }}
        api.has_param :error_type, { enum: -> { ProductSetProductsGet::ERROR_TYPE }}
        api.has_param :fields, 'string'
        api.has_param :filter, 'string'
        api.has_param :limit, 'int'
        api.has_param :sort, 'string'
        api.has_param :summary, 'string'
      end
    end

  end
end
