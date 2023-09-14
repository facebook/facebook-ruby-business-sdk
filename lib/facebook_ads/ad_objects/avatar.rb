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

  class Avatar < AdObject

    field :id, 'string'
    has_no_post
    has_no_delete

    has_edge :models do |edge|
      edge.get do |api|
        api.has_param :client_name, 'string'
        api.has_param :client_version, 'string'
        api.has_param :force_generate, 'bool'
        api.has_param :platform, 'string'
        api.has_param :profile, 'string'
        api.has_param :sdk_version, 'string'
      end
    end

  end
end
