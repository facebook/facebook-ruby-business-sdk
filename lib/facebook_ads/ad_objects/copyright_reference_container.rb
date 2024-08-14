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

  class CopyrightReferenceContainer < AdObject

    field :content_type, 'string'
    field :copyright_creation_time, 'datetime'
    field :download_hd_url, 'string'
    field :duration_in_sec, 'double'
    field :id, 'string'
    field :iswc, 'string'
    field :metadata, 'object'
    field :published_time, 'datetime'
    field :thumbnail_url, 'string'
    field :title, 'string'
    field :universal_content_id, 'string'
    field :writer_names, { list: 'string' }
    has_no_get
    has_no_post
    has_no_delete

  end
end
