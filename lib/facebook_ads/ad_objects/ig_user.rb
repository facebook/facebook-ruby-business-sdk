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

  class IgUser < AdObject

    field :biography, 'string'
    field :business_discovery, 'IgUser'
    field :followers_count, 'int'
    field :follows_count, 'int'
    field :id, 'string'
    field :ig_id, 'int'
    field :media_count, 'int'
    field :mentioned_comment, 'IgComment'
    field :mentioned_media, 'IgMedia'
    field :name, 'string'
    field :profile_picture_url, 'string'
    field :shopping_review_status, 'string'
    field :username, 'string'
    field :website, 'string'
    has_no_post
    has_no_delete

    has_edge :content_publishing_limit do |edge|
      edge.get do |api|
        api.has_param :since, 'datetime'
      end
    end

    has_edge :insights do |edge|
      edge.get 'InstagramInsightsResult' do |api|
        api.has_param :metric, { list: { enum: -> { InstagramInsightsResult::METRIC }} }
        api.has_param :period, { list: { enum: -> { InstagramInsightsResult::PERIOD }} }
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :media do |edge|
      edge.get 'IgMedia' do |api|
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
      edge.post 'IgMedia' do |api|
        api.has_param :caption, 'string'
        api.has_param :image_url, 'string'
        api.has_param :location_id, 'string'
        api.has_param :media_type, 'string'
        api.has_param :thumb_offset, 'string'
        api.has_param :user_tags, { list: 'hash' }
        api.has_param :video_url, 'string'
      end
    end

    has_edge :media_publish do |edge|
      edge.post 'IgMedia' do |api|
        api.has_param :creation_id, 'int'
      end
    end

    has_edge :mentions do |edge|
      edge.post do |api|
        api.has_param :comment_id, 'string'
        api.has_param :media_id, 'string'
        api.has_param :message, 'string'
      end
    end

    has_edge :recently_searched_hashtags do |edge|
      edge.get
    end

    has_edge :stories do |edge|
      edge.get 'IgMedia'
    end

    has_edge :tags do |edge|
      edge.get 'IgMedia'
    end

  end
end
