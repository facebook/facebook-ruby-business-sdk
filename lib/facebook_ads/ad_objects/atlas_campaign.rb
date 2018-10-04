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

  class AtlasCampaign < AdObject

    field :alias, 'string'
    field :created_by, 'object'
    field :created_date, 'datetime'
    field :created_time, 'datetime'
    field :creator_name, 'string'
    field :cumulative_edited_date, 'datetime'
    field :custom_fields, { list: 'object' }
    field :description, 'string'
    field :flight_dates, 'object'
    field :id, 'string'
    field :is_archived, 'bool'
    field :is_auto_tracked, 'bool'
    field :is_favorite, 'bool'
    field :is_mta, 'bool'
    field :last_modified_by, 'object'
    field :last_modified_date, 'datetime'
    field :last_modified_time, 'datetime'
    field :name, 'string'
    field :purchase_order_alias, 'string'
    field :target_audience, 'object'
    field :type, 'string'
    field :version, 'string'
    has_no_post
    has_no_delete

    has_edge :importtemplate do |edge|
      edge.post 'AtlasCampaign' do |api|
        api.has_param :filename, 'string'
        api.has_param :template, 'string'
        api.has_param :export, 'string'
        api.has_param :format, 'string'
      end
    end

    has_edge :invoices do |edge|
      edge.get 'OracleTransaction'
    end

    has_edge :trafficking_data do |edge|
      edge.get 'AtlasUrl' do |api|
        api.has_param :redirect, 'bool'
      end
    end

  end
end
