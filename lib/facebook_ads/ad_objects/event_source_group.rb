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

  class EventSourceGroup < AdObject

    field :business, 'Business'
    field :event_sources, { list: 'ExternalEventSource' }
    field :id, 'string'
    field :name, 'string'
    field :owner_business, 'Business'
    has_no_delete

    has_edge :shared_accounts do |edge|
      edge.get 'AdAccount'
      edge.post 'EventSourceGroup' do |api|
        api.has_param :accounts, { list: 'string' }
      end
    end

  end
end
