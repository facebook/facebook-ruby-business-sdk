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

  class AdAsyncRequestSet < AdObject
    NOTIFICATION_MODE = [
      "OFF",
      "ON_COMPLETE",
    ]


    field :canceled_count, 'int'
    field :created_time, 'datetime'
    field :error_count, 'int'
    field :id, 'string'
    field :in_progress_count, 'int'
    field :initial_count, 'int'
    field :is_completed, 'bool'
    field :name, 'string'
    field :notification_mode, { enum: -> { NOTIFICATION_MODE }}
    field :notification_result, 'AdAsyncRequestSetNotificationResult'
    field :notification_status, 'string'
    field :notification_uri, 'string'
    field :owner_id, 'string'
    field :success_count, 'int'
    field :total_count, 'int'
    field :updated_time, 'datetime'
    field :ad_specs, { list: 'hash' }

    has_edge :requests do |edge|
      edge.get 'AdAsyncRequest' do |api|
        api.has_param :statuses, { list: { enum: -> { AdAsyncRequest::STATUSES }} }
      end
    end

  end
end
