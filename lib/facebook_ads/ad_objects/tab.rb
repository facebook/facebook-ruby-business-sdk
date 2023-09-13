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

  class Tab < AdObject

    field :application, 'Application'
    field :custom_image_url, 'string'
    field :custom_name, 'string'
    field :id, 'string'
    field :image_url, 'string'
    field :is_non_connection_landing_tab, 'bool'
    field :is_permanent, 'bool'
    field :link, 'string'
    field :name, 'string'
    field :position, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
