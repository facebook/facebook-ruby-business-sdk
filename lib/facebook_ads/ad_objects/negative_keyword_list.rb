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

  class NegativeKeywordList < AdObject

    field :applied_active_ad_campaign_groups, { list: 'hash' }
    field :applied_inactive_ad_campaign_groups, { list: 'hash' }
    field :creator_id, 'string'
    field :id, 'string'
    field :is_fully_reviewed, 'bool'
    field :last_update_time, 'datetime'
    field :last_update_user_id, 'string'
    field :list_name, 'string'
    field :total_approved_keyword_count, 'int'
    field :total_declined_keyword_count, 'int'
    field :total_negative_keyword_count, 'int'
    field :total_validated_keyword_count, 'int'
    has_no_delete

  end
end
