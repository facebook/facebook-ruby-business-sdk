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

  class AdAccountAds < AdObject

    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

    has_edge :ads do |edge|
      edge.get 'AdAccountAdsGet' do |api|
        api.has_param :after, 'string'
        api.has_param :before, 'string'
        api.has_param :date_format, 'string'
        api.has_param :effective_status, 'string'
        api.has_param :fields, 'string'
        api.has_param :filtering, 'string'
        api.has_param :limit, 'int'
        api.has_param :remove_pinned_sort, 'string'
        api.has_param :sort, 'string'
        api.has_param :summary, 'string'
        api.has_param :timezone, 'string'
        api.has_param :updated_since, 'string'
      end
    end

  end
end
