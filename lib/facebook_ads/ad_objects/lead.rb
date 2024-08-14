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

  class Lead < AdObject

    field :ad_id, 'string'
    field :ad_name, 'string'
    field :adset_id, 'string'
    field :adset_name, 'string'
    field :campaign_id, 'string'
    field :campaign_name, 'string'
    field :created_time, 'datetime'
    field :custom_disclaimer_responses, { list: 'UserLeadGenDisclaimerResponse' }
    field :field_data, { list: 'UserLeadGenFieldData' }
    field :form_id, 'string'
    field :home_listing, 'HomeListing'
    field :id, 'string'
    field :is_organic, 'bool'
    field :partner_name, 'string'
    field :platform, 'string'
    field :post, 'Link'
    field :post_submission_check_result, 'LeadGenPostSubmissionCheckResult'
    field :retailer_item_id, 'string'
    field :vehicle, 'Vehicle'
    has_no_post

  end
end
