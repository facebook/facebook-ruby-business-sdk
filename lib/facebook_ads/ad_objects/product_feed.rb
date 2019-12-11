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

  class ProductFeed < AdObject
    DELIMITER = [
      "AUTODETECT",
      "BAR",
      "COMMA",
      "SEMICOLON",
      "TAB",
      "TILDE",
    ]

    QUOTED_FIELDS_MODE = [
      "AUTODETECT",
      "OFF",
      "ON",
    ]

    ENCODING = [
      "AUTODETECT",
      "LATIN1",
      "UTF16BE",
      "UTF16LE",
      "UTF32BE",
      "UTF32LE",
      "UTF8",
    ]

    FEED_TYPE = [
      "AUTO",
      "DESTINATION",
      "FLIGHT",
      "HOME_LISTING",
      "HOTEL",
      "HOTEL_ROOM",
      "LOCAL_INVENTORY",
      "MARKET",
      "MEDIA_TITLE",
      "PRODUCTS",
      "VEHICLES",
      "VEHICLE_OFFER",
    ]

    OVERRIDE_TYPE = [
      "CATALOG_SEGMENT_CUSTOMIZE_DEFAULT",
      "COUNTRY",
      "LANGUAGE",
      "LANGUAGE_AND_COUNTRY",
      "LOCAL",
    ]


    field :country, 'string'
    field :created_time, 'datetime'
    field :default_currency, 'string'
    field :deletion_enabled, 'bool'
    field :delimiter, { enum: -> { DELIMITER }}
    field :encoding, 'string'
    field :file_name, 'string'
    field :id, 'string'
    field :latest_upload, 'ProductFeedUpload'
    field :name, 'string'
    field :override_type, 'string'
    field :product_count, 'int'
    field :quoted_fields_mode, { enum: -> { QUOTED_FIELDS_MODE }}
    field :schedule, 'ProductFeedSchedule'
    field :update_schedule, 'ProductFeedSchedule'
    field :feed_type, { enum: -> { FEED_TYPE }}
    field :rules, { list: 'string' }

    has_edge :automotive_models do |edge|
      edge.get 'AutomotiveModel' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :destinations do |edge|
      edge.get 'Destination' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :flights do |edge|
      edge.get 'Flight' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :home_listings do |edge|
      edge.get 'HomeListing' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :hotels do |edge|
      edge.get 'Hotel' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :products do |edge|
      edge.get 'ProductItem' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :rules do |edge|
      edge.get 'ProductFeedRule'
      edge.post 'ProductFeedRule' do |api|
        api.has_param :attribute, 'string'
        api.has_param :params, 'hash'
        api.has_param :rule_type, { enum: -> { ProductFeedRule::RULE_TYPE }}
      end
    end

    has_edge :upload_schedules do |edge|
      edge.get 'ProductFeedSchedule'
      edge.post 'ProductFeed' do |api|
        api.has_param :upload_schedule, 'string'
      end
    end

    has_edge :uploads do |edge|
      edge.get 'ProductFeedUpload'
      edge.post 'ProductFeedUpload' do |api|
        api.has_param :fbe_external_business_id, 'string'
        api.has_param :file, 'file'
        api.has_param :password, 'string'
        api.has_param :update_only, 'bool'
        api.has_param :url, 'string'
        api.has_param :username, 'string'
      end
    end

    has_edge :vehicle_offers do |edge|
      edge.get 'VehicleOffer' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :vehicles do |edge|
      edge.get 'Vehicle' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

  end
end
