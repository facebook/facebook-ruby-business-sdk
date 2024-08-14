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

  class PageUserMessageThreadLabel < AdObject

    field :id, 'string'
    field :page_label_name, 'string'
    has_no_post

    has_edge :label do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.post 'PageUserMessageThreadLabel' do |api|
        api.has_param :user, 'int'
      end
    end

  end
end
