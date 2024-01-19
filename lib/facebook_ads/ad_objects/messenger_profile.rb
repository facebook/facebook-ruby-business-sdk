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

  class MessengerProfile < AdObject

    field :account_linking_url, 'string'
    field :commands, { list: 'object' }
    field :get_started, 'object'
    field :greeting, { list: 'object' }
    field :ice_breakers, { list: 'object' }
    field :payment_settings, 'object'
    field :persistent_menu, { list: 'object' }
    field :subject_to_new_eu_privacy_rules, 'bool'
    field :target_audience, 'object'
    field :whitelisted_domains, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
