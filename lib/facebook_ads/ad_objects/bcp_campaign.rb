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

  class BcpCampaign < AdObject

    field :ads_permission_required, 'bool'
    field :application_deadline, 'string'
    field :campaign_goal, 'string'
    field :campaign_goal_other, 'string'
    field :content_delivery_deadline, 'string'
    field :content_delivery_start_date, 'string'
    field :content_requirements, { list: 'map<string, unsigned int>' }
    field :content_requirements_description, 'string'
    field :currency, 'string'
    field :deal_negotiation_type, 'string'
    field :description, 'string'
    field :has_free_product, 'bool'
    field :id, 'string'
    field :name, 'string'
    field :payment_amount_for_ads, 'int'
    field :payment_amount_for_content, 'int'
    field :payment_description, 'string'
    has_no_post
    has_no_delete

  end
end
