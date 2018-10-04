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

  class Status < AdObject

    field :event, 'Event'
    field :from, 'object'
    field :id, 'string'
    field :message, 'string'
    field :place, 'Place'
    field :updated_time, 'datetime'
    has_no_post
    has_no_delete

    has_edge :comments do |edge|
      edge.get 'Comment' do |api|
        api.has_param :filter, { enum: -> { Comment::FILTER }}
        api.has_param :order, { enum: -> { Comment::ORDER }}
        api.has_param :live_filter, { enum: -> { Comment::LIVE_FILTER }}
        api.has_param :since, 'datetime'
      end
      edge.post 'Comment' do |api|
        api.has_param :object_id, 'string'
        api.has_param :parent_comment_id, 'object'
        api.has_param :nectar_module, 'string'
        api.has_param :attachment_id, 'string'
        api.has_param :attachment_url, 'string'
        api.has_param :attachment_share_url, 'string'
        api.has_param :feedback_source, 'string'
        api.has_param :facepile_mentioned_ids, { list: 'string' }
        api.has_param :is_offline, 'bool'
        api.has_param :comment_privacy_value, { enum: -> { Comment::COMMENT_PRIVACY_VALUE }}
        api.has_param :message, 'string'
        api.has_param :text, 'string'
        api.has_param :tracking, 'string'
      end
    end

    has_edge :likes do |edge|
      edge.delete do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :feedback_source, 'string'
      end
      edge.get 'Profile'
      edge.post 'Status' do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :notify, 'bool'
        api.has_param :feedback_source, 'string'
      end
    end

    has_edge :reactions do |edge|
      edge.get 'Profile' do |api|
        api.has_param :type, { enum: -> { Profile::TYPE }}
      end
    end

    has_edge :sharedposts do |edge|
      edge.get 'Post'
    end

    has_edge :tags do |edge|
      edge.get 'Profile'
    end

  end
end
