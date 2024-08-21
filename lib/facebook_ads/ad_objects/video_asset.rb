# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class VideoAsset < AdObject

    field :broadcast_id, 'string'
    field :broadcast_planned_start_time, 'datetime'
    field :can_viewer_edit, 'bool'
    field :copyright_monitoring_status, 'string'
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
    field :premiere_living_room_status, 'string'
    field :published, 'bool'
    field :scheduled_publish_time, 'datetime'
    field :secret, 'bool'
    field :secure_stream_url, 'string'
    field :social_actions, 'bool'
    field :status, 'VideoStatus'
    field :stream_url, 'string'
    field :thumbnail_while_encoding, 'string'
    field :title, 'string'
    field :views, 'int'
    has_no_post
    has_no_delete

    has_edge :insights do |edge|
      edge.get 'InsightsResult' do |api|
        api.has_param :metric, { list: { enum: -> { InsightsResult::METRIC }} }
        api.has_param :period, { enum: -> { InsightsResult::PERIOD }}
      end
    end

  end
end
