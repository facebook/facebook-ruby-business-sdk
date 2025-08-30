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

  class ProductFeedUpload < AdObject
    INPUT_METHOD = [
      "Google Sheets Fetch",
      "Manual Upload",
      "Reupload Last File",
      "Server Fetch",
      "User initiated server fetch",
    ]


    field :end_time, 'datetime'
    field :error_count, 'int'
    field :error_report, 'ProductFeedUploadErrorReport'
    field :filename, 'string'
    field :id, 'string'
    field :input_method, { enum: -> { INPUT_METHOD }}
    field :num_deleted_items, 'int'
    field :num_detected_items, 'int'
    field :num_invalid_items, 'int'
    field :num_persisted_items, 'int'
    field :start_time, 'datetime'
    field :url, 'string'
    field :warning_count, 'int'
    has_no_post
    has_no_delete

    has_edge :error_report do |edge|
      edge.post 'ProductFeedUpload'
    end

    has_edge :errors do |edge|
      edge.get 'ProductFeedUploadError' do |api|
        api.has_param :error_priority, { enum: -> { ProductFeedUploadError::ERROR_PRIORITY }}
      end
    end

  end
end
