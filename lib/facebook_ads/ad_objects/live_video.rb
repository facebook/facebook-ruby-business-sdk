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
    LIVE_COMMENT_MODERATION_SETTING = [
      "FOLLOWER",
      "SLOW",
      "DISCUSSION",
      "RESTRICTED",
    ]

    STATUS = [
      "UNPUBLISHED",
      "LIVE_NOW",
      "SCHEDULED_UNPUBLISHED",
      "SCHEDULED_LIVE",
      "SCHEDULED_CANCELED",
    ]

    STREAM_TYPE = [
      "REGULAR",
      "AMBIENT",
    ]

    BROADCAST_STATUS = [
      "UNPUBLISHED",
      "LIVE",
      "LIVE_STOPPED",
      "PROCESSING",
      "VOD",
      "SCHEDULED_UNPUBLISHED",
      "SCHEDULED_LIVE",
      "SCHEDULED_EXPIRED",
      "SCHEDULED_CANCELED",
    ]

    PROJECTION = [
      "EQUIRECTANGULAR",
      "CUBEMAP",
    ]

    SOURCE = [
      "target",
      "owner",
    ]

    SPATIAL_AUDIO_FORMAT = [
      "ambiX_4",
    ]

    STEREOSCOPIC_MODE = [
      "MONO",
      "LEFT_RIGHT",
      "TOP_BOTTOM",
    ]


    field :ad_break_config, 'object'
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
    field :is_manual_mode, 'bool'
    field :is_reference_only, 'bool'
    field :live_encoders, { list: 'object' }
    field :live_views, 'int'
    field :permalink_url, 'string'
    field :planned_start_time, 'datetime'
    field :seconds_left, 'int'
    field :secure_stream_url, 'string'
    field :status, 'string'
    field :stream_url, 'string'
    field :title, 'string'
    field :video, 'object'

  end
end
