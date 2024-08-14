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

  class CopyrightMediaMisuse < AdObject

    field :audio_segments, { list: 'object' }
    field :creation_time, 'datetime'
    field :disabled_audio_segments, { list: 'object' }
    field :disabled_video_segments, { list: 'object' }
    field :entire_file_issue, 'bool'
    field :entire_file_issue_reasons, { list: 'string' }
    field :expiration_time, 'datetime'
    field :id, 'string'
    field :media_asset_id, 'string'
    field :reasons, { list: 'string' }
    field :requested_audio_segments, { list: 'object' }
    field :requested_video_segments, { list: 'object' }
    field :resolution_type, 'string'
    field :status, 'string'
    field :update_time, 'datetime'
    field :video_copyright, 'VideoCopyright'
    field :video_segments, { list: 'object' }
    has_no_post
    has_no_delete

  end
end
