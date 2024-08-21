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

  class AdProposal < AdObject

    field :ad_proposal_type_name, 'string'
    field :adaccount, 'AdAccount'
    field :creation_time, 'datetime'
    field :creator, 'User'
    field :delivery_interface, 'string'
    field :expiration_time, 'datetime'
    field :has_conflict, 'bool'
    field :id, 'string'
    field :kpi_metric, 'string'
    field :message, 'string'
    field :name, 'string'
    field :proposal_dts_template, 'string'
    field :proposal_template_name, 'string'
    field :recommendation, 'string'
    field :review_time, 'datetime'
    field :reviewed_by, 'User'
    field :send_time, 'datetime'
    field :status, 'string'
    field :use_testing, 'bool'
    has_no_post
    has_no_delete

  end
end
