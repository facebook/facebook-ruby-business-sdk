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
    CAPI_PUBLISHING_STATE = [
      "DISABLED",
      "ENABLED",
      "NOT_INITIALIZED",
    ]

    EVENT_ENRICHMENT_ADVERTISER_STATE = [
      "DISABLED",
      "ENABLED",
      "NOT_INITIALIZED",
    ]

    EVENT_ENRICHMENT_META_STATE = [
      "ALLOWED",
      "BLOCKED",
      "NOT_INITIALIZED",
    ]

    EVENT_ENRICHMENT_STATE = [
      "NO",
      "NOT_INITIALIZED",
      "YES",
    ]


    field :active, 'bool'
    field :blocked_event_types, { list: 'string' }
    field :blocked_websites, { list: 'string' }
    field :browser_agent, { list: 'string' }
    field :cloud_provider, 'string'
    field :cloud_region, 'string'
    field :destination_id, 'string'
    field :endpoint, 'string'
    field :event_enrichment_advertiser_state, 'string'
    field :event_enrichment_meta_state, 'string'
    field :event_enrichment_state, 'string'
    field :fallback_domain, 'string'
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
    field :capi_publishing_state, { enum: -> { CAPI_PUBLISHING_STATE }}

  end
end
