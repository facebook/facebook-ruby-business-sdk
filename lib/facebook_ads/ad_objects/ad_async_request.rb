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

  class AdAsyncRequest < AdObject
    STATUSES = [
      "CANCELED",
      "CANCELED_DEPENDENCY",
      "ERROR",
      "ERROR_CONFLICTS",
      "ERROR_DEPENDENCY",
      "INITIAL",
      "IN_PROGRESS",
      "PENDING_DEPENDENCY",
      "PROCESS_BY_AD_ASYNC_ENGINE",
      "PROCESS_BY_EVENT_PROCESSOR",
      "SUCCESS",
      "USER_CANCELED",
      "USER_CANCELED_DEPENDENCY",
    ]


    field :async_request_set, 'AdAsyncRequestSet'
    field :created_time, 'datetime'
    field :id, 'string'
    field :input, 'hash'
    field :result, 'hash'
    field :scope_object_id, 'string'
    field :status, 'string'
    field :type, 'string'
    field :updated_time, 'datetime'
    has_no_post

  end
end
