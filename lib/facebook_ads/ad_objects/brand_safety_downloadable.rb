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

  class BrandSafetyDownloadable < AdObject

    field :account_context_id, 'string'
    field :async_job_percent_complete, 'int'
    field :async_job_status, 'string'
    field :file_name, 'string'
    field :id, 'string'
    field :request_surface, 'string'
    field :url, 'string'
    has_no_post
    has_no_delete

  end
end
