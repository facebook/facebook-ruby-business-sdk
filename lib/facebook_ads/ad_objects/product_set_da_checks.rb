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

  class ProductSetDaChecks < AdObject

    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

    has_edge :da_checks do |edge|
      edge.get 'ProductSetDaChecksGet' do |api|
        api.has_param :capabilities, { list: { enum: -> { ProductSetDaChecksGet::CAPABILITIES }} }
        api.has_param :categories, { list: { enum: -> { ProductSetDaChecksGet::CATEGORIES }} }
        api.has_param :checks, { list: 'string' }
        api.has_param :connection_method, { enum: -> { ProductSetDaChecksGet::CONNECTION_METHOD }}
        api.has_param :features, { list: { enum: -> { ProductSetDaChecksGet::FEATURES }} }
        api.has_param :fields, 'string'
        api.has_param :with_issue_only, 'bool'
      end
    end

  end
end
