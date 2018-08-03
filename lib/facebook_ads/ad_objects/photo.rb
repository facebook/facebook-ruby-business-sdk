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

  class Photo < AdObject
    BACKDATED_TIME_GRANULARITY = [
      "year",
      "month",
      "day",
      "hour",
      "min",
      "none",
    ]

    TYPE = [
      "profile",
      "tagged",
      "uploaded",
    ]

    UNPUBLISHED_CONTENT_TYPE = [
      "SCHEDULED",
      "DRAFT",
      "ADS_POST",
      "INLINE_CREATED",
      "PUBLISHED",
    ]

    CHECKIN_ENTRY_POINT = [
      "BRANDING_CHECKIN",
      "BRANDING_STATUS",
      "BRANDING_PHOTO",
      "BRANDING_OTHER",
    ]


    field :album, 'Album'
    field :backdated_time, 'datetime'
    field :backdated_time_granularity, 'string'
    field :can_backdate, 'bool'
    field :can_delete, 'bool'
    field :can_tag, 'bool'
    field :created_time, 'datetime'
    field :event, 'Event'
    field :from, 'object'
    field :height, 'int'
    field :icon, 'string'
    field :id, 'string'
    field :images, { list: 'object' }
    field :link, 'string'
    field :name, 'string'
    field :name_tags, { list: 'object' }
    field :page_story_id, 'string'
    field :picture, 'string'
    field :place, 'object'
    field :position, 'int'
    field :source, 'string'
    field :target, 'Profile'
    field :updated_time, 'datetime'
    field :webp_images, { list: 'object' }
    field :width, 'int'

    has_edge :likes do |edge|
      edge.delete
      edge.post
    end

    has_edge :tags do |edge|
      edge.post do |api|
        api.has_param :tag_text, 'string'
        api.has_param :tag_uid, 'int'
        api.has_param :tags, { list: 'object' }
        api.has_param :x, 'double'
        api.has_param :y, 'double'
      end
    end

  end
end
