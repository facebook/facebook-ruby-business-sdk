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

  class BusinessAssetGroup < AdObject
    ADACCOUNT_TASKS = [
      "ADVERTISE",
      "ANALYZE",
      "DRAFT",
      "MANAGE",
    ]

    OFFLINE_CONVERSION_DATA_SET_TASKS = [
      "ADVERTISE",
      "MANAGE",
      "UPLOAD",
      "VIEW",
    ]

    PAGE_TASKS = [
      "ADVERTISE",
      "ANALYZE",
      "CASHIER_ROLE",
      "CREATE_CONTENT",
      "MANAGE",
      "MANAGE_JOBS",
      "MANAGE_LEADS",
      "MESSAGING",
      "MODERATE",
      "MODERATE_COMMUNITY",
      "PAGES_MESSAGING",
      "PAGES_MESSAGING_SUBSCRIPTIONS",
      "PROFILE_PLUS_ADVERTISE",
      "PROFILE_PLUS_ANALYZE",
      "PROFILE_PLUS_CREATE_CONTENT",
      "PROFILE_PLUS_FACEBOOK_ACCESS",
      "PROFILE_PLUS_FULL_CONTROL",
      "PROFILE_PLUS_MANAGE",
      "PROFILE_PLUS_MESSAGING",
      "PROFILE_PLUS_MODERATE",
      "READ_PAGE_MAILBOXES",
      "VIEW_MONETIZATION_INSIGHTS",
    ]

    PIXEL_TASKS = [
      "ANALYZE",
      "EDIT",
    ]


    field :id, 'string'
    field :name, 'string'
    has_no_delete

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :adaccount_tasks, { list: { enum: -> { BusinessAssetGroup::ADACCOUNT_TASKS }} }
        api.has_param :offline_conversion_data_set_tasks, { list: { enum: -> { BusinessAssetGroup::OFFLINE_CONVERSION_DATA_SET_TASKS }} }
        api.has_param :page_tasks, { list: { enum: -> { BusinessAssetGroup::PAGE_TASKS }} }
        api.has_param :pixel_tasks, { list: { enum: -> { BusinessAssetGroup::PIXEL_TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :contained_adaccounts do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.get 'AdAccount'
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :asset_id, 'string'
      end
    end

    has_edge :contained_applications do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.get 'Application'
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :asset_id, 'string'
      end
    end

    has_edge :contained_custom_conversions do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.get 'CustomConversion'
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :asset_id, 'string'
      end
    end

    has_edge :contained_instagram_accounts do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.get 'InstagramUser'
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :asset_id, 'string'
      end
    end

    has_edge :contained_offline_conversion_data_sets do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.get 'OfflineConversionDataSet'
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :asset_id, 'string'
      end
    end

    has_edge :contained_pages do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.get 'Page'
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :asset_id, 'string'
      end
    end

    has_edge :contained_pixels do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.get 'AdsPixel'
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :asset_id, 'string'
      end
    end

    has_edge :contained_product_catalogs do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.get 'ProductCatalog'
      edge.post 'BusinessAssetGroup' do |api|
        api.has_param :asset_id, 'string'
      end
    end

  end
end
