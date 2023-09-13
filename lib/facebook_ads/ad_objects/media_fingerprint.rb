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

  class MediaFingerprint < AdObject
    FINGERPRINT_CONTENT_TYPE = [
      "AM_SONGTRACK",
      "EPISODE",
      "MOVIE",
      "OTHER",
      "SONGTRACK",
    ]


    field :duration_in_sec, 'double'
    field :fingerprint_content_type, 'string'
    field :fingerprint_type, 'string'
    field :id, 'string'
    field :metadata, 'object'
    field :title, 'string'
    field :universal_content_id, 'string'
    has_no_delete

  end
end
