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

  class LocalServiceBusiness < AdObject
    AVAILABILITY = [
      "AVAILABLE_FOR_ORDER",
      "DISCONTINUED",
      "IN_STOCK",
      "OUT_OF_STOCK",
      "PENDING",
      "PREORDER",
    ]

    CONDITION = [
      "PC_CPO",
      "PC_NEW",
      "PC_OPEN_BOX_NEW",
      "PC_REFURBISHED",
      "PC_USED",
      "PC_USED_FAIR",
      "PC_USED_GOOD",
      "PC_USED_LIKE_NEW",
    ]

    IMAGE_FETCH_STATUS = [
      "DIRECT_UPLOAD",
      "FETCHED",
      "FETCH_FAILED",
      "NO_STATUS",
      "OUTDATED",
      "PARTIAL_FETCH",
    ]

    VISIBILITY = [
      "PUBLISHED",
      "STAGING",
    ]


    field :address, 'object'
    field :applinks, 'CatalogItemAppLinks'
    field :availability, { enum: -> { AVAILABILITY }}
    field :brand, 'string'
    field :category, 'string'
    field :category_specific_fields, 'CatalogSubVerticalList'
    field :condition, { enum: -> { CONDITION }}
    field :cuisine_type, 'string'
    field :currency, 'string'
    field :custom_label_0, 'string'
    field :custom_label_1, 'string'
    field :custom_label_2, 'string'
    field :custom_label_3, 'string'
    field :custom_label_4, 'string'
    field :custom_number_0, 'int'
    field :custom_number_1, 'int'
    field :custom_number_2, 'int'
    field :custom_number_3, 'int'
    field :custom_number_4, 'int'
    field :description, 'string'
    field :expiration_date, 'string'
    field :gtin, 'string'
    field :id, 'string'
    field :image_fetch_status, { enum: -> { IMAGE_FETCH_STATUS }}
    field :images, { list: 'string' }
    field :local_service_business_id, 'string'
    field :phone, 'string'
    field :price, 'string'
    field :price_range, 'string'
    field :retailer_category, 'string'
    field :sanitized_images, { list: 'string' }
    field :size, 'string'
    field :title, 'string'
    field :unit_price, 'object'
    field :url, 'string'
    field :vendor_id, 'string'
    field :visibility, { enum: -> { VISIBILITY }}
    has_no_post
    has_no_delete

    has_edge :channels_to_integrity_status do |edge|
      edge.get 'CatalogItemChannelsToIntegrityStatus'
    end

  end
end
