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

  class UnifiedThread < AdObject
    PLATFORM = [
      "INSTAGRAM",
      "MESSENGER",
    ]


    field :can_reply, 'bool'
    field :folder, 'string'
    field :former_participants, 'object'
    field :id, 'string'
    field :is_subscribed, 'bool'
    field :link, 'string'
    field :linked_group, 'Group'
    field :message_count, 'int'
    field :name, 'string'
    field :participants, 'object'
    field :scoped_thread_key, 'string'
    field :senders, 'object'
    field :snippet, 'string'
    field :subject, 'string'
    field :unread_count, 'int'
    field :updated_time, 'datetime'
    field :wallpaper, 'string'
    has_no_post
    has_no_delete

    has_edge :messages do |edge|
      edge.get do |api|
        api.has_param :source, { enum: %w{ALL PARTICIPANTS }}
      end
    end

  end
end
