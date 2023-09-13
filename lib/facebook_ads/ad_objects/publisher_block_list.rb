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

  class PublisherBlockList < AdObject

    field :app_publishers, { list: 'object' }
    field :business_owner_id, 'string'
    field :id, 'string'
    field :is_auto_blocking_on, 'bool'
    field :is_eligible_at_campaign_level, 'bool'
    field :last_update_time, 'datetime'
    field :last_update_user, 'string'
    field :name, 'string'
    field :owner_ad_account_id, 'string'
    field :web_publishers, { list: 'object' }

    has_edge :append_publisher_urls do |edge|
      edge.post do |api|
        api.has_param :publisher_urls, { list: 'string' }
      end
    end

    has_edge :paged_web_publishers do |edge|
      edge.get do |api|
        api.has_param :draft_id, 'string'
      end
    end

  end
end
