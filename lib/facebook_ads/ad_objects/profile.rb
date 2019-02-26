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

  class Profile < AdObject
    PROFILE_TYPE = [
      "application",
      "event",
      "group",
      "page",
      "user",
    ]

    TYPE = [
      "ANGRY",
      "HAHA",
      "LIKE",
      "LOVE",
      "NONE",
      "PRIDE",
      "SAD",
      "THANKFUL",
      "WOW",
    ]


    field :can_post, 'bool'
    field :id, 'string'
    field :link, 'string'
    field :name, 'string'
    field :pic, 'string'
    field :pic_crop, 'ProfilePictureSource'
    field :pic_large, 'string'
    field :pic_small, 'string'
    field :pic_square, 'string'
    field :profile_type, { enum: -> { PROFILE_TYPE }}
    field :username, 'string'
    has_no_post
    has_no_delete

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :width, 'int'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :redirect, 'bool'
      end
    end

  end
end
