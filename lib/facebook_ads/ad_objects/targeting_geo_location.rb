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

  class TargetingGeoLocation < AdObject

    field :cities, { list: 'TargetingGeoLocationCity' }
    field :countries, { list: 'string' }
    field :country_groups, { list: 'string' }
    field :custom_locations, { list: 'TargetingGeoLocationCustomLocation' }
    field :electoral_districts, { list: 'TargetingGeoLocationElectoralDistrict' }
    field :geo_markets, { list: 'TargetingGeoLocationMarket' }
    field :large_geo_areas, { list: 'TargetingGeoLocationGeoEntities' }
    field :location_cluster_ids, { list: 'TargetingGeoLocationLocationCluster' }
    field :location_expansion, 'TargetingGeoLocationLocationExpansion'
    field :location_types, { list: 'string' }
    field :medium_geo_areas, { list: 'TargetingGeoLocationGeoEntities' }
    field :metro_areas, { list: 'TargetingGeoLocationGeoEntities' }
    field :neighborhoods, { list: 'TargetingGeoLocationGeoEntities' }
    field :places, { list: 'TargetingGeoLocationPlace' }
    field :political_districts, { list: 'TargetingGeoLocationPoliticalDistrict' }
    field :regions, { list: 'TargetingGeoLocationRegion' }
    field :small_geo_areas, { list: 'TargetingGeoLocationGeoEntities' }
    field :subcities, { list: 'TargetingGeoLocationGeoEntities' }
    field :subneighborhoods, { list: 'TargetingGeoLocationGeoEntities' }
    field :zips, { list: 'TargetingGeoLocationZip' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
