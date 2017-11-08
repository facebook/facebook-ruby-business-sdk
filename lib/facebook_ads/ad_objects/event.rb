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

  class Event < AdObject
    TYPE = [
      "private",
      "public",
      "group",
      "community",
    ]


    field :attending_count, 'int'
    field :can_guests_invite, 'bool'
    field :can_viewer_post, 'bool'
    field :category, 'string'
    field :cover, 'object'
    field :declined_count, 'int'
    field :description, 'string'
    field :end_time, 'string'
    field :event_times, { list: 'object' }
    field :guest_list_enabled, 'bool'
    field :id, 'string'
    field :interested_count, 'int'
    field :is_canceled, 'bool'
    field :is_draft, 'bool'
    field :is_page_owned, 'bool'
    field :is_viewer_admin, 'bool'
    field :maybe_count, 'int'
    field :name, 'string'
    field :noreply_count, 'int'
    field :owner, 'object'
    field :parent_group, 'object'
    field :place, 'object'
    field :scheduled_publish_time, 'string'
    field :start_time, 'string'
    field :ticket_uri, 'string'
    field :ticketing_privacy_uri, 'string'
    field :ticketing_terms_uri, 'string'
    field :timezone, 'string'
    field :type, { enum: -> { TYPE }}
    field :updated_time, 'datetime'
    has_no_post
    has_no_delete

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :width, 'int'
      end
    end

  end
end
