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

  class OpenBridgeConfiguration < AdObject

    field :active, 'bool'
    field :browser_agent, { list: 'string' }
    field :cloud_provider, 'string'
    field :cloud_region, 'string'
    field :destination_id, 'string'
    field :endpoint, 'string'
    field :fallback_domain, 'string'
    field :first_party_domain, 'string'
    field :host_business_id, 'string'
    field :id, 'string'
    field :instance_id, 'string'
    field :instance_version, 'string'
    field :is_sgw_instance, 'bool'
    field :is_sgw_pixel_from_meta_pixel, 'bool'
    field :partner_name, 'string'
    field :pixel_id, 'string'
    field :sgw_account_id, 'string'
    field :sgw_instance_url, 'string'
    field :sgw_pixel_id, 'string'

  end
end
