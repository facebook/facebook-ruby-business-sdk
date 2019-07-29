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

  class NativeOffer < AdObject
    BARCODE_TYPE = [
      "CODE128",
      "CODE128B",
      "CODE93",
      "DATABAR",
      "DATABAR_EXPANDED",
      "DATABAR_EXPANDED_STACKED",
      "DATABAR_LIMITED",
      "DATAMATRIX",
      "EAN",
      "PDF417",
      "QR",
      "UPC_A",
      "UPC_E",
    ]

    LOCATION_TYPE = [
      "both",
      "offline",
      "online",
    ]


    field :barcode_photo, 'string'
    field :barcode_photo_uri, 'string'
    field :barcode_type, 'string'
    field :barcode_value, 'string'
    field :block_reshares, 'bool'
    field :details, 'string'
    field :disable_location, 'bool'
    field :discounts, { list: 'NativeOfferDiscount' }
    field :expiration_time, 'datetime'
    field :id, 'string'
    field :instore_code, 'string'
    field :location_type, 'string'
    field :max_save_count, 'int'
    field :online_code, 'string'
    field :page, 'Page'
    field :page_set_id, 'string'
    field :redemption_code, 'string'
    field :redemption_link, 'string'
    field :save_count, 'int'
    field :terms, 'string'
    field :title, 'string'
    field :total_unique_codes, 'string'
    field :unique_codes, 'string'
    field :unique_codes_file_code_type, 'string'
    field :unique_codes_file_name, 'string'
    field :unique_codes_file_upload_status, 'string'
    has_no_post
    has_no_delete

    has_edge :nativeofferviews do |edge|
      edge.post 'NativeOffer' do |api|
        api.has_param :ad_account, 'string'
        api.has_param :ad_image_hashes, { list: 'string' }
        api.has_param :carousel_captions, { list: 'string' }
        api.has_param :carousel_data, { list: 'object' }
        api.has_param :carousel_links, { list: 'string' }
        api.has_param :deeplinks, { list: 'string' }
        api.has_param :image_crops, { list: 'hash' }
        api.has_param :message, 'string'
        api.has_param :photos, { list: 'string' }
        api.has_param :place_data, 'object'
        api.has_param :published, 'bool'
        api.has_param :published_ads, 'bool'
        api.has_param :urls, { list: 'string' }
        api.has_param :videos, { list: 'string' }
      end
    end

    has_edge :views do |edge|
      edge.get 'NativeOfferView'
    end

  end
end
