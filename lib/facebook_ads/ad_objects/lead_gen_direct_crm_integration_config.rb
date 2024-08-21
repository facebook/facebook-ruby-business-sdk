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

  class LeadGenDirectCrmIntegrationConfig < AdObject

    field :auth_id, 'string'
    field :creation_time, 'datetime'
    field :id, 'string'
    field :lead_gen_data, 'LeadgenForm'
    field :matched_fields, { list: 'hash' }
    field :matched_fields_labels, { list: 'hash' }
    field :resources, { list: 'hash' }
    field :third_party_app_id, 'string'
    has_no_post
    has_no_delete

  end
end
