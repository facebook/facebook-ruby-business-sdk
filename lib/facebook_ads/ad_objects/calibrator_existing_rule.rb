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

  class CalibratorExistingRule < AdObject

    field :_7d_volume, 'int'
    field :creation_source, 'string'
    field :creation_time, 'datetime'
    field :creator, 'string'
    field :event_type, 'string'
    field :id, 'string'
    field :rule, 'string'
    field :rule_type, 'string'
    field :sample_urls, { list: 'string' }
    field :status, 'string'
    field :transforms, { list: 'string' }
    has_no_post
    has_no_delete

  end
end
