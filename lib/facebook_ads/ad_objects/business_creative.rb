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

  class BusinessCreative < AdObject

    field :creation_time, 'datetime'
    field :duration, 'int'
    field :hash, 'string'
    field :height, 'int'
    field :id, 'string'
    field :name, 'string'
    field :thumbnail, 'string'
    field :type, 'string'
    field :url, 'string'
    field :video_id, 'string'
    field :width, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
