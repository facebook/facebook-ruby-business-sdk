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

  class PartnerIntegrationLinked < AdObject

    field :ads_pixel, 'AdsPixel'
    field :application, 'Application'
    field :completed_integration_types, { list: 'string' }
    field :external_business_connection_id, 'string'
    field :external_id, 'string'
    field :has_oauth_token, 'bool'
    field :id, 'string'
    field :mbe_app_id, 'string'
    field :mbe_asset_id, 'string'
    field :mbe_external_business_id, 'string'
    field :name, 'string'
    field :offline_conversion_data_set, 'OfflineConversionDataSet'
    field :page, 'Page'
    field :partner, 'string'
    field :product_catalog, 'ProductCatalog'
    field :setup_status, 'string'
    has_no_post
    has_no_delete

  end
end
