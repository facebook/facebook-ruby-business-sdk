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

  class IgUserForIgOnlyApi < AdObject

    field :account_type, 'string'
    field :id, 'string'
    field :media_count, 'int'
    field :username, 'string'
    has_no_post
    has_no_delete

    has_edge :live_media do |edge|
      edge.get
    end

    has_edge :media do |edge|
      edge.get do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :stories do |edge|
      edge.get
    end

  end
end
