# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
