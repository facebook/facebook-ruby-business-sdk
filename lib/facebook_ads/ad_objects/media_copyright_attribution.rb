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

  class MediaCopyrightAttribution < AdObject

    field :attribution_ig_target_id, 'string'
    field :attribution_target_email_address, 'string'
    field :attribution_target_id, 'string'
    field :attribution_target_name, 'string'
    field :attribution_type, 'string'
    field :attribution_uri, 'string'
    field :copyright_count, 'int'
    field :creation_time, 'datetime'
    field :creator, 'Profile'
    field :id, 'string'
    field :is_enabled, 'bool'
    field :link_title, 'string'
    field :match_count, 'int'
    field :status, 'string'
    field :title, 'string'
    has_no_post
    has_no_delete

  end
end
