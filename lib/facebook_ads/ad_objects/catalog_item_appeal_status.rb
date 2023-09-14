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

  class CatalogItemAppealStatus < AdObject
    STATUS = [
      "This item cannot be appealed as it is either approved or already has an appeal",
      "This item is not rejected for any of channels",
      "We&#39;ve encountered unexpected error while processing this request. Please try again later !",
      "You&#39;ve reached the maximum number of item requests you can make this week. You&#39;ll be able to request item reviews again within the next 7 days.",
      "Your request was received. See information below to learn more.",
    ]


    field :handle, 'string'
    field :item_id, 'int'
    field :status, { enum: -> { STATUS }}
    field :use_cases, { list: 'object' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
