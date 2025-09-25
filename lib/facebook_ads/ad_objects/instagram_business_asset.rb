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

  class InstagramBusinessAsset < AdObject
    PERMITTED_TASKS = [
      "ADVERTISE",
      "ANALYZE",
      "COMMUNITY_ACTIVITY",
      "CONTENT",
      "MESSAGES",
    ]

    TASKS = [
      "ADVERTISE",
      "ANALYZE",
      "COMMUNITY_ACTIVITY",
      "CONTENT",
      "MESSAGES",
    ]


    field :id, 'string'
    field :ig_user_id, 'string'
    field :ig_username, 'string'
    has_no_post
    has_no_delete

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
      edge.post 'InstagramBusinessAsset' do |api|
        api.has_param :business, 'string'
        api.has_param :permitted_tasks, { list: { enum: -> { InstagramBusinessAsset::PERMITTED_TASKS }} }
      end
    end

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'InstagramBusinessAsset' do |api|
        api.has_param :tasks, { list: { enum: -> { InstagramBusinessAsset::TASKS }} }
        api.has_param :user, 'int'
      end
    end

  end
end
