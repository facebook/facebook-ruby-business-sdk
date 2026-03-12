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

  class ProductFeedUploadGet < AdObject
    INPUT_METHOD = [
      "GOOGLE_SHEETS_FETCH",
      "MANUAL_UPLOAD",
      "REUPLOAD_EXISTING",
      "REUPLOAD_LAST_FILE",
      "SERVER_FETCH",
      "USER_INITIATED_SERVER_FETCH",
    ]


    field :end_time, 'string'
    field :error_count, 'int'
    field :error_report, 'object'
    field :errors, 'object'
    field :filename, 'string'
    field :id, 'string'
    field :input_method, { enum: -> { INPUT_METHOD }}
    field :num_deleted_items, 'int'
    field :num_detected_items, 'int'
    field :num_invalid_items, 'int'
    field :num_persisted_items, 'int'
    field :progresses, 'object'
    field :start_time, 'string'
    field :upload_complete, 'bool'
    field :url, 'string'
    field :warning_count, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
