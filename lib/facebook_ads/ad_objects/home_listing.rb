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

  class HomeListing < AdObject
    IMAGE_FETCH_STATUS = [
      "DIRECT_UPLOAD",
      "FETCHED",
      "FETCH_FAILED",
      "NO_STATUS",
      "OUTDATED",
      "PARTIAL_FETCH",
    ]


    field :ac_type, 'string'
    field :additional_fees_description, 'string'
    field :address, 'object'
    field :agent_company, 'string'
    field :agent_email, 'string'
    field :agent_fb_page_id, 'Page'
    field :agent_name, 'string'
    field :agent_phone, 'string'
    field :applinks, 'CatalogItemAppLinks'
    field :area_size, 'int'
    field :area_unit, 'string'
    field :availability, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :co_2_emission_rating_eu, 'object'
    field :currency, 'string'
    field :days_on_market, 'int'
    field :description, 'string'
    field :energy_rating_eu, 'object'
    field :furnish_type, 'string'
    field :group_id, 'string'
    field :heating_type, 'string'
    field :home_listing_id, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :laundry_type, 'string'
    field :listing_type, 'string'
    field :max_currency, 'string'
    field :max_price, 'string'
    field :min_currency, 'string'
    field :min_price, 'string'
    field :name, 'string'
    field :num_baths, 'double'
    field :num_beds, 'double'
    field :num_rooms, 'double'
    field :num_units, 'int'
    field :parking_type, 'string'
    field :partner_verification, 'string'
    field :pet_policy, 'string'
    field :price, 'string'
    field :property_type, 'string'
    field :sanitized_images, { list: 'string' }
    field :url, 'string'
    field :year_built, 'int'

    has_edge :augmented_realities_metadata do |edge|
      edge.get
    end

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

    has_edge :videos_metadata do |edge|
      edge.get
    end

  end
end
