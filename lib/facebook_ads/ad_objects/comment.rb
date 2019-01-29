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

  class Comment < AdObject
    COMMENT_PRIVACY_VALUE = [
      "DEFAULT_PRIVACY",
      "OWNER_OR_COMMENTER",
      "FRIENDS_ONLY",
      "FRIENDS_AND_POST_OWNER",
      "SIDE_CONVERSATION",
      "SIDE_CONVERSATION_AND_POST_OWNER",
      "GRAPHQL_MULTIPLE_VALUE_HACK_DO_NOT_USE",
    ]

    FILTER = [
      "stream",
      "toplevel",
    ]

    LIVE_FILTER = [
      "filter_low_quality",
      "no_filter",
    ]

    ORDER = [
      "chronological",
      "reverse_chronological",
    ]


    field :admin_creator, 'User'
    field :application, 'Application'
    field :attachment, 'object'
    field :can_comment, 'bool'
    field :can_hide, 'bool'
    field :can_like, 'bool'
    field :can_remove, 'bool'
    field :comment_count, 'int'
    field :created_time, 'datetime'
    field :from, 'object'
    field :id, 'string'
    field :is_hidden, 'bool'
    field :is_private, 'bool'
    field :like_count, 'int'
    field :live_broadcast_timestamp, 'int'
    field :message, 'string'
    field :message_tags, { list: 'EntityAtTextRange' }
    field :object, 'object'
    field :parent, 'Comment'
    field :permalink_url, 'string'
    field :user_likes, 'bool'

    has_edge :comments do |edge|
      edge.get 'Comment' do |api|
        api.has_param :filter, { enum: -> { Comment::FILTER }}
        api.has_param :order, { enum: -> { Comment::ORDER }}
        api.has_param :live_filter, { enum: -> { Comment::LIVE_FILTER }}
        api.has_param :since, 'datetime'
      end
    end

    has_edge :likes do |edge|
      edge.delete do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :feedback_source, 'string'
      end
      edge.get 'Profile'
      edge.post 'Comment' do |api|
        api.has_param :tracking, 'string'
        api.has_param :nectar_module, 'string'
        api.has_param :feedback_source, 'string'
      end
    end

    has_edge :reactions do |edge|
      edge.get 'Profile' do |api|
        api.has_param :type, { enum: -> { Profile::TYPE }}
      end
    end

  end
end
