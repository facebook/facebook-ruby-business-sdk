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

  class FriendList < AdObject
    LIST_TYPE = [
      "app_created",
    ]


    field :id, 'string'
    field :list_type, 'string'
    field :name, 'string'
    field :owner, 'string'

    has_edge :members do |edge|
      edge.delete do |api|
        api.has_param :member, 'int'
        api.has_param :members, { list: 'int' }
        api.has_param :mutual, 'bool'
      end
      edge.get 'Profile'
      edge.post 'FriendList' do |api|
        api.has_param :member, 'int'
        api.has_param :members, { list: 'int' }
        api.has_param :mutual, 'bool'
      end
    end

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :redirect, 'bool'
      end
    end

  end
end
