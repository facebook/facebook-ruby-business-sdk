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

  class BusinessProject < AdObject

    field :business, 'Business'
    field :created_time, 'datetime'
    field :creator, 'object'
    field :id, 'string'
    field :name, 'string'

    has_edge :adaccounts do |edge|
      edge.delete do |api|
        api.has_param :adaccount_id, 'string'
      end
      edge.get 'AdAccount'
      edge.post 'BusinessProject' do |api|
        api.has_param :adaccount_id, 'string'
      end
    end

    has_edge :apps do |edge|
      edge.delete do |api|
        api.has_param :app_id, 'string'
      end
      edge.get 'Application'
      edge.post 'BusinessProject' do |api|
        api.has_param :app_id, 'string'
      end
    end

    has_edge :assets do |edge|
      edge.delete do |api|
        api.has_param :asset_id, 'string'
      end
      edge.post 'BusinessProject' do |api|
        api.has_param :asset_id, 'string'
      end
    end

    has_edge :pages do |edge|
      edge.delete do |api|
        api.has_param :page_id, 'int'
      end
      edge.get 'Page'
      edge.post 'BusinessProject' do |api|
        api.has_param :page_id, 'int'
      end
    end

    has_edge :product_catalogs do |edge|
      edge.delete do |api|
        api.has_param :product_catalog_id, 'string'
      end
      edge.get 'ProductCatalog'
      edge.post 'BusinessProject' do |api|
        api.has_param :product_catalog_id, 'string'
      end
    end

  end
end
