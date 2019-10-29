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

  class Post < AdObject
    WITH = [
      "LOCATION",
    ]


    field :actions, { list: 'string' }
    field :admin_creator, 'object'
    field :allowed_advertising_objectives, { list: 'string' }
    field :application, 'Application'
    field :backdated_time, 'datetime'
    field :call_to_action, 'object'
    field :can_reply_privately, 'bool'
    field :caption, 'string'
    field :child_attachments, { list: 'string' }
    field :comments_mirroring_domain, 'string'
    field :coordinates, 'object'
    field :created_time, 'datetime'
    field :description, 'string'
    field :event, 'Event'
    field :expanded_height, 'int'
    field :expanded_width, 'int'
    field :feed_targeting, 'object'
    field :from, 'object'
    field :full_picture, 'string'
    field :height, 'int'
    field :icon, 'string'
    field :id, 'string'
    field :instagram_eligibility, 'string'
    field :is_app_share, 'bool'
    field :is_eligible_for_promotion, 'bool'
    field :is_expired, 'bool'
    field :is_hidden, 'bool'
    field :is_instagram_eligible, 'bool'
    field :is_popular, 'bool'
    field :is_published, 'bool'
    field :is_spherical, 'bool'
    field :link, 'string'
    field :message, 'string'
    field :message_tags, { list: 'string' }
    field :multi_share_end_card, 'bool'
    field :multi_share_optimized, 'bool'
    field :name, 'string'
    field :object_id, 'string'
    field :parent_id, 'string'
    field :permalink_url, 'object'
    field :picture, 'string'
    field :place, 'Place'
    field :privacy, 'Privacy'
    field :promotable_id, 'string'
    field :promotion_status, 'string'
    field :properties, { list: 'string' }
    field :scheduled_publish_time, 'double'
    field :shares, 'object'
    field :source, 'string'
    field :status_type, 'string'
    field :story, 'string'
    field :story_tags, { list: 'string' }
    field :subscribed, 'bool'
    field :target, 'Profile'
    field :targeting, 'object'
    field :timeline_visibility, 'string'
    field :type, 'string'
    field :updated_time, 'datetime'
    field :via, 'object'
    field :video_buying_eligibility, { list: 'string' }
    field :width, 'int'
    has_no_get
    has_no_post
    has_no_delete

  end
end
