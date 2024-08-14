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

  class AdDraft < AdObject

    field :account_id, 'string'
    field :api_version, 'string'
    field :async_request_set, 'AdAsyncRequestSet'
    field :author_id, 'string'
    field :created_by, 'string'
    field :draft_version, 'string'
    field :id, 'string'
    field :is_active, 'bool'
    field :name, 'string'
    field :ownership_type, 'string'
    field :publish_status, 'object'
    field :state, 'string'
    field :summary, 'string'
    field :time_created, 'datetime'
    field :time_updated, 'datetime'
    has_no_post
    has_no_delete

  end
end
