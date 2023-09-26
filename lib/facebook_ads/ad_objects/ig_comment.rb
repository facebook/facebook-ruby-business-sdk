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

  class IgComment < AdObject

    field :from, 'IgCommentFromUser'
    field :hidden, 'bool'
    field :id, 'string'
    field :like_count, 'int'
    field :media, 'IgMedia'
    field :parent_id, 'string'
    field :text, 'string'
    field :timestamp, 'datetime'
    field :user, 'IgUser'
    field :username, 'string'

    has_edge :replies do |edge|
      edge.get 'IgComment'
      edge.post 'IgComment' do |api|
        api.has_param :message, 'string'
      end
    end

  end
end
