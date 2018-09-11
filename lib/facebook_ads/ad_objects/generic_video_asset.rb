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

  class GenericVideoAsset < AdObject

    field :broadcast_id, 'string'
    field :broadcast_planned_start_time, 'datetime'
    field :can_viewer_edit, 'bool'
    field :created_time, 'datetime'
    field :creator, 'User'
    field :description, 'string'
    field :download_hd_url, 'string'
    field :download_sd_url, 'string'
    field :embeddable, 'bool'
    field :expiration, 'object'
    field :feed_type, 'string'
    field :id, 'string'
    field :is_crossposting_eligible, 'bool'
    field :is_crossposting_within_bm_eligible, 'bool'
    field :is_crossposting_within_bm_enabled, 'bool'
    field :is_episode, 'bool'
    field :is_featured, 'bool'
    field :is_live_premiere, 'bool'
    field :is_video_asset, 'bool'
    field :last_added_time, 'datetime'
    field :latest_creator, 'User'
    field :latest_owned_description, 'string'
    field :latest_owned_title, 'string'
    field :length, 'double'
    field :live_status, 'string'
    field :no_story, 'bool'
    field :owner_name, 'string'
    field :owner_picture, 'string'
    field :owner_post_state, 'string'
    field :permalink_url, 'string'
    field :picture, 'string'
    field :posts_count, 'int'
    field :posts_ids, { list: 'string' }
    field :posts_status, 'object'
    field :published, 'bool'
    field :scheduled_publish_time, 'datetime'
    field :secret, 'bool'
    field :secure_stream_url, 'string'
    field :social_actions, 'bool'
    field :status, 'object'
    field :stream_url, 'string'
    field :thumbnail_while_encoding, 'string'
    field :title, 'string'
    field :views, 'int'
    has_no_post
    has_no_delete

    has_edge :video_posts do |edge|
      edge.get 'AdVideo' do |api|
        api.has_param :page_list, { list: 'object' }
      end
    end

    has_edge :video_stats do |edge|
      edge.get 'VideoStats' do |api|
        api.has_param :metrics, { list: { enum: -> { VideoStats::METRICS }} }
        api.has_param :page_list, { list: 'string' }
        api.has_param :requested_fields, { list: { enum: -> { VideoStats::REQUESTED_FIELDS }} }
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
        api.has_param :unified_metrics_list, { list: 'hash' }
      end
    end

  end
end
