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
  # This class is auto-genereated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class ProductFeed < AdObject
    DELIMITER = [
      "AUTODETECT",
      "BAR",
      "COMMA",
      "TAB",
      "TILDE",
      "SEMICOLON",
    ]

    QUOTED_FIELDS_MODE = [
      "AUTODETECT",
      "ON",
      "OFF",
    ]

    ENCODING = [
      "AUTODETECT",
      "LATIN1",
      "UTF8",
      "UTF16LE",
      "UTF16BE",
      "UTF32LE",
      "UTF32BE",
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
    field :product_count, 'int'
    field :quoted_fields_mode, { enum: -> { QUOTED_FIELDS_MODE }}
    field :schedule, 'ProductFeedSchedule'

    has_edge :products do |edge|
      edge.get 'ProductItem' do |api|
        api.has_param :bulk_pagination, 'bool'
        api.has_param :filter, 'object'
      end
    end

    has_edge :uploads do |edge|
      edge.get 'ProductFeedUpload'
      edge.post 'ProductFeedUpload' do |api|
        api.has_param :file, 'file'
        api.has_param :password, 'string'
        api.has_param :update_only, 'bool'
        api.has_param :url, 'string'
        api.has_param :username, 'string'
      end
    end

  end
end
