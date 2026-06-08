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

  class ProductCatalogCheckBatchRequestStatus < AdObject

    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

    has_edge :check_batch_request_status do |edge|
      edge.get 'ProductCatalogCheckBatchRequestStatusGet' do |api|
        api.has_param :after, 'string'
        api.has_param :before, 'string'
        api.has_param :error_priority, { enum: -> { ProductCatalogCheckBatchRequestStatusGet::ERROR_PRIORITY }}
        api.has_param :fields, 'string'
        api.has_param :handle, 'string'
        api.has_param :limit, 'int'
        api.has_param :load_ids_of_invalid_requests, 'bool'
      end
    end

  end
end
