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

  class CanvasTemplate < AdObject

    field :channels, { list: 'map<string, list<map<string, string>>>' }
    field :description, 'string'
    field :document, 'Canvas'
    field :id, 'string'
    field :is_multi_tab_supportable, 'bool'
    field :is_new, 'bool'
    field :name, 'string'
    field :objectives, { list: 'hash' }
    field :owner_id, 'User'
    field :required_capabilities, { list: 'string' }
    field :snapshot_photo, 'Photo'
    field :status, 'string'
    field :sub_verticals, { list: 'string' }
    field :verticals, { list: 'hash' }
    has_no_post
    has_no_delete

  end
end
