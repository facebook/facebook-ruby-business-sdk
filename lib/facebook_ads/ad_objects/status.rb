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

  class Status < AdObject

    field :event, 'Event'
    field :from, 'object'
    field :id, 'string'
    field :message, 'string'
    field :place, 'Place'
    field :updated_time, 'datetime'
    has_no_post
    has_no_delete

    has_edge :likes do |edge|
      edge.post 'Status' do |api|
        api.has_param :feedback_source, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :tracking, 'string'
      end
    end

  end
end
