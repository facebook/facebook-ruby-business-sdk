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

  class LifeEvent < AdObject

    field :description, 'string'
    field :end_time, 'datetime'
    field :from, 'Page'
    field :id, 'string'
    field :is_hidden, 'bool'
    field :start_time, 'datetime'
    field :title, 'string'
    field :updated_time, 'datetime'
    has_no_post
    has_no_delete

    has_edge :likes do |edge|
      edge.get 'Profile'
    end

  end
end
