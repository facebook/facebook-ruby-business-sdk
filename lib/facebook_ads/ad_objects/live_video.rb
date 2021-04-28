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

  class LiveVideo < AdObject
    PROJECTION = [
      "CUBEMAP",
      "EQUIRECTANGULAR",
      "HALF_EQUIRECTANGULAR",
    ]

    SPATIAL_AUDIO_FORMAT = [
      "ambiX_4",
    ]

    STATUS = [
      "LIVE_NOW",
      "SCHEDULED_CANCELED",
      "SCHEDULED_LIVE",
      "SCHEDULED_UNPUBLISHED",
      "UNPUBLISHED",
    ]

    STEREOSCOPIC_MODE = [
      "LEFT_RIGHT",
      "MONO",
      "TOP_BOTTOM",
    ]

    STREAM_TYPE = [
      "AMBIENT",
      "REGULAR",
    ]

    BROADCAST_STATUS = [
      "LIVE",
      "LIVE_STOPPED",
      "PROCESSING",
      "SCHEDULED_CANCELED",
      "SCHEDULED_EXPIRED",
      "SCHEDULED_LIVE",
      "SCHEDULED_UNPUBLISHED",
      "UNPUBLISHED",
      "VOD",
    ]

    SOURCE = [
      "owner",
      "target",
    ]

    LIVE_COMMENT_MODERATION_SETTING = [
      "DEFAULT",
      "DISCUSSION",
      "FOLLOWER",
      "PROTECTED_MODE",
      "RESTRICTED",
      "SLOW",
      "SUPPORTER",
    ]

    PERSISTENT_STREAM_KEY_STATUS = [
      "DISABLE",
      "ENABLE",
      "REGENERATE",
    ]


    field :ad_break_config, 'LiveVideoAdBreakConfig'
    field :ad_break_failure_reason, 'string'
    field :broadcast_start_time, 'datetime'
    field :copyright, 'VideoCopyright'
    field :creation_time, 'datetime'
    field :dash_ingest_url, 'string'
    field :dash_preview_url, 'string'
    field :description, 'string'
    field :embed_html, 'string'
    field :from, 'object'
    field :id, 'string'
    field :ingest_streams, { list: 'LiveVideoInputStream' }
    field :is_manual_mode, 'bool'
    field :is_reference_only, 'bool'
    field :live_encoders, { list: 'LiveEncoder' }
    field :live_views, 'int'
    field :overlay_url, 'string'
    field :permalink_url, 'object'
    field :planned_start_time, 'datetime'
    field :seconds_left, 'int'
    field :secure_stream_url, 'string'
    field :status, 'string'
    field :stream_url, 'string'
    field :targeting, 'LiveVideoTargeting'
    field :title, 'string'
    field :total_views, 'string'
    field :video, 'AdVideo'

    has_edge :blocked_users do |edge|
      edge.get 'User' do |api|
        api.has_param :uid, 'object'
      end
    end

    has_edge :comments do |edge|
      edge.get 'Comment' do |api|
        api.has_param :filter, { enum: -> { Comment::FILTER }}
        api.has_param :live_filter, { enum: -> { Comment::LIVE_FILTER }}
        api.has_param :order, { enum: -> { Comment::ORDER }}
        api.has_param :since, 'datetime'
      end
    end

    has_edge :crosspost_shared_pages do |edge|
      edge.get 'Page'
    end

    has_edge :crossposted_broadcasts do |edge|
      edge.get 'LiveVideo'
    end

    has_edge :errors do |edge|
      edge.get 'LiveVideoError'
    end

    has_edge :input_streams do |edge|
      edge.post 'LiveVideoInputStream'
    end

    has_edge :polls do |edge|
      edge.get 'VideoPoll'
      edge.post 'VideoPoll' do |api|
        api.has_param :close_after_voting, 'bool'
        api.has_param :correct_option, 'int'
        api.has_param :default_open, 'bool'
        api.has_param :options, { list: 'string' }
        api.has_param :question, 'string'
        api.has_param :show_gradient, 'bool'
        api.has_param :show_results, 'bool'
      end
    end

    has_edge :reactions do |edge|
      edge.get 'Profile' do |api|
        api.has_param :type, { enum: -> { Profile::TYPE }}
      end
    end

  end
end
