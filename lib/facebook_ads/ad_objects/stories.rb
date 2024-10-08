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

  class Stories < AdObject
    STATUS = [
      "ARCHIVED",
      "PUBLISHED",
    ]


    field :creation_time, 'string'
    field :media_id, 'string'
    field :media_type, 'string'
    field :post_id, 'string'
    field :status, 'string'
    field :url, 'string'
    field :id, 'string'
    has_no_post
    has_no_delete

    has_edge :insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :metric, { list: { enum: -> { InsightsResult::METRIC }} }
      end
    end

  end
end
