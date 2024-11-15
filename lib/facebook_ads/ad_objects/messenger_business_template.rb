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

  class MessengerBusinessTemplate < AdObject
    STATUS = [
      "APPROVED",
      "ARCHIVED",
      "DELETED",
      "DISABLED",
      "IN_APPEAL",
      "LIMIT_EXCEEDED",
      "PAUSED",
      "PENDING",
      "PENDING_DELETION",
      "REJECTED",
    ]


    field :category, 'string'
    field :components, { list: 'object' }
    field :creation_time, 'int'
    field :id, 'string'
    field :language, 'string'
    field :language_count, 'int'
    field :last_updated_time, 'datetime'
    field :library_template_name, 'string'
    field :name, 'string'
    field :rejected_reason, 'string'
    field :status, 'string'
    has_no_delete

  end
end
