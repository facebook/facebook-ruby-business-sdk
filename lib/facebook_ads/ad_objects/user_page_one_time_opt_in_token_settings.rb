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

  class UserPageOneTimeOptInTokenSettings < AdObject

    field :creation_timestamp, 'int'
    field :next_eligible_time, 'int'
    field :notification_messages_frequency, 'string'
    field :notification_messages_reoptin, 'string'
    field :notification_messages_timezone, 'string'
    field :notification_messages_token, 'string'
    field :recipient_id, 'string'
    field :token_expiry_timestamp, 'int'
    field :topic_title, 'string'
    field :user_token_status, 'string'
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
