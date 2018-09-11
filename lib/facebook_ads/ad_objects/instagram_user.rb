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

  class InstagramUser < AdObject

    field :follow_count, 'int'
    field :followed_by_count, 'int'
    field :has_profile_picture, 'bool'
    field :id, 'string'
    field :is_private, 'bool'
    field :is_published, 'bool'
    field :media_count, 'int'
    field :profile_pic, 'string'
    field :username, 'string'
    has_no_post
    has_no_delete

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
      edge.post 'InstagramUser' do |api|
        api.has_param :business, 'string'
      end
    end

    has_edge :assigned_partners do |edge|
      edge.get 'Business'
    end

    has_edge :authorized_adaccounts do |edge|
      edge.delete do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'InstagramUser' do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
    end

    has_edge :branded_content do |edge|
      edge.get
    end

    has_edge :business_object_tags do |edge|
      edge.get 'BusinessTag' do |api|
        api.has_param :business_id, 'string'
      end
    end

    has_edge :business_requests do |edge|
      edge.get 'BusinessRequest'
    end

    has_edge :connected_business_objects do |edge|
      edge.get 'BusinessObject' do |api|
        api.has_param :type, { enum: -> { BusinessObject::TYPE }}
        api.has_param :business_id, 'string'
      end
    end

    has_edge :insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
        api.has_param :metric, { list: { enum: -> { InsightsResult::METRIC }} }
        api.has_param :period, { enum: -> { InsightsResult::PERIOD }}
      end
    end

    has_edge :instagram_media do |edge|
      edge.get
    end

    has_edge :mobile_insights do |edge|
      edge.get do |api|
        api.has_param :period, { enum: %w{day week days_28 month lifetime }}
      end
    end

    has_edge :video_groups do |edge|
      edge.get 'VideoGroup' do |api|
        api.has_param :retrieved_videos, { list: 'string' }
      end
    end

  end
end
