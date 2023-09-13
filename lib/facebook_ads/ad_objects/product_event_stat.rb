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

  class ProductEventStat < AdObject
    DEVICE_TYPE = [
      "desktop",
      "mobile_android_phone",
      "mobile_android_tablet",
      "mobile_ipad",
      "mobile_iphone",
      "mobile_ipod",
      "mobile_phone",
      "mobile_tablet",
      "mobile_windows_phone",
      "unknown",
    ]

    EVENT = [
      "AddToCart",
      "AddToWishlist",
      "InitiateCheckout",
      "Lead",
      "Purchase",
      "Search",
      "Subscribe",
      "ViewContent",
    ]

    BREAKDOWNS = [
      "DEVICE_TYPE",
    ]


    field :date_start, 'string'
    field :date_stop, 'string'
    field :device_type, { enum: -> { DEVICE_TYPE }}
    field :event, { enum: -> { EVENT }}
    field :event_source, 'ExternalEventSource'
    field :total_content_ids_matched_other_catalogs, 'int'
    field :total_matched_content_ids, 'int'
    field :total_unmatched_content_ids, 'int'
    field :unique_content_ids_matched_other_catalogs, 'int'
    field :unique_matched_content_ids, 'int'
    field :unique_unmatched_content_ids, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
