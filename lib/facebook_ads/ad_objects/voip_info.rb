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

  class VoipInfo < AdObject

    field :has_mobile_app, 'bool'
    field :has_permission, 'bool'
    field :is_callable, 'bool'
    field :is_callable_webrtc, 'bool'
    field :is_pushable, 'bool'
    field :reason_code, 'int'
    field :reason_description, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
