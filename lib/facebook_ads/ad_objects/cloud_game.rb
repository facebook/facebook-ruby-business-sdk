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

  class CloudGame < AdObject

    field :id, 'string'
    field :name, 'string'
    field :owner, 'Profile'
    field :playable_ad_file_size, 'int'
    field :playable_ad_orientation, 'string'
    field :playable_ad_package_name, 'string'
    field :playable_ad_reject_reason, 'string'
    field :playable_ad_status, 'string'
    field :playable_ad_upload_time, 'datetime'
    has_no_post
    has_no_delete

  end
end
