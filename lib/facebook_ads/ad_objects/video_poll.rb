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

  class VideoPoll < AdObject
    STATUS = [
      "closed",
      "results_open",
      "voting_open",
    ]

    ACTION = [
      "ATTACH_TO_VIDEO",
      "CLOSE",
      "DELETE_POLL",
      "SHOW_RESULTS",
      "SHOW_VOTING",
    ]


    field :close_after_voting, 'bool'
    field :default_open, 'bool'
    field :id, 'string'
    field :question, 'string'
    field :show_gradient, 'bool'
    field :show_results, 'bool'
    field :status, { enum: -> { STATUS }}
    has_no_delete

    has_edge :poll_options do |edge|
      edge.get
    end

  end
end
