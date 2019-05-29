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

  class OpenGraphObject < AdObject

    field :admins, { list: 'object' }
    field :application, 'object'
    field :audio, { list: 'object' }
    field :created_time, 'datetime'
    field :description, 'string'
    field :determiner, 'string'
    field :engagement, 'Engagement'
    field :id, 'string'
    field :image, { list: 'object' }
    field :is_scraped, 'bool'
    field :locale, 'object'
    field :location, 'Location'
    field :post_action_id, 'string'
    field :profile_id, 'object'
    field :restrictions, 'object'
    field :see_also, { list: 'string' }
    field :site_name, 'string'
    field :title, 'string'
    field :type, 'string'
    field :updated_time, 'datetime'
    field :video, { list: 'object' }
    has_no_post
    has_no_delete

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
      end
    end

  end
end
