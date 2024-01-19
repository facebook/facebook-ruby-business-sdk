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

  class CtxPartnerAppWelcomeMessageFlow < AdObject

    field :compatible_platforms, { list: 'string' }
    field :eligible_platforms, { list: 'string' }
    field :id, 'string'
    field :is_used_in_ad, 'bool'
    field :last_update_time, 'datetime'
    field :name, 'string'
    field :welcome_message_flow, 'string'
    has_no_post
    has_no_delete

  end
end
