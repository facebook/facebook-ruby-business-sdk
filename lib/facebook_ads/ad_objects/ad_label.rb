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

  class AdLabel < AdObject

    field :account, 'AdAccount'
    field :created_time, 'datetime'
    field :id, 'string'
    field :name, 'string'
    field :updated_time, 'datetime'

    has_edge :adcreatives do |edge|
      edge.get 'AdCreative'
    end

    has_edge :ads do |edge|
      edge.get 'Ad'
    end

    has_edge :adsets do |edge|
      edge.get 'AdSet'
    end

    has_edge :campaigns do |edge|
      edge.get 'Campaign'
    end

  end
end
