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

  class CollaborativeAdsShareSettings < AdObject

    field :agency_business, 'Business'
    field :id, 'string'
    field :product_catalog_proxy_id, 'string'
    field :utm_campaign, 'string'
    field :utm_medium, 'string'
    field :utm_source, 'string'
    has_no_post
    has_no_delete

  end
end
