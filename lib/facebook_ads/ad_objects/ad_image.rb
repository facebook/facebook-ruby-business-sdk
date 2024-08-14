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

  class AdImage < AdObject
    STATUS = [
      "ACTIVE",
      "DELETED",
      "INTERNAL",
    ]


    field :account_id, 'string'
    field :created_time, 'datetime'
    field :creatives, { list: 'string' }
    field :hash, 'string'
    field :height, 'int'
    field :id, 'string'
    field :is_associated_creatives_in_adgroups, 'bool'
    field :name, 'string'
    field :original_height, 'int'
    field :original_width, 'int'
    field :owner_business, 'Business'
    field :permalink_url, 'string'
    field :status, { enum: -> { STATUS }}
    field :updated_time, 'datetime'
    field :url, 'string'
    field :url_128, 'string'
    field :width, 'int'
    field :bytes, 'string'
    field :copy_from, 'object'
    has_no_post
    has_no_delete

  end
end
