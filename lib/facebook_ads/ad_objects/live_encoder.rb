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

  class LiveEncoder < AdObject
    CAP_AUDIO_CODECS = [
      "AAC",
    ]

    CAP_STREAMING_PROTOCOLS = [
      "HTTPS_DASH",
      "RTMPS",
      "WEBRTC",
    ]

    CAP_VIDEO_CODECS = [
      "H264",
    ]

    STATUS = [
      "CAPTURE",
      "LIVE",
      "NONE",
      "PREVIEW",
      "READY",
      "REGISTER",
    ]


    field :brand, 'string'
    field :creation_time, 'datetime'
    field :current_broadcast, 'LiveVideo'
    field :current_input_stream, 'LiveVideoInputStream'
    field :device_id, 'string'
    field :id, 'string'
    field :last_heartbeat_time, 'datetime'
    field :model, 'string'
    field :name, 'string'
    field :status, 'string'
    field :version, 'string'

    has_edge :telemetry do |edge|
      edge.post 'LiveEncoder' do |api|
        api.has_param :bitrate, 'int'
        api.has_param :broadcast_id, 'string'
        api.has_param :cpu_load_15m, 'double'
        api.has_param :cpu_load_1m, 'double'
        api.has_param :cpu_load_5m, 'double'
        api.has_param :cpu_temperature, 'int'
        api.has_param :cpu_usage, 'double'
        api.has_param :framerate, 'double'
        api.has_param :frames_dropped, 'double'
        api.has_param :gpu_temperature, 'int'
        api.has_param :gpu_usage, 'double'
        api.has_param :last_audio_timecode, 'int'
        api.has_param :last_video_keyframe_timecode, 'int'
        api.has_param :last_video_timecode, 'int'
        api.has_param :memory_usage, 'double'
        api.has_param :network_latency, 'double'
        api.has_param :network_rx_bandwidth, 'int'
        api.has_param :network_rx_packets_dropped, 'double'
        api.has_param :network_rx_packets_errors, 'double'
        api.has_param :network_tx_bandwidth, 'int'
        api.has_param :network_tx_packets_dropped, 'double'
        api.has_param :network_tx_packets_errors, 'double'
        api.has_param :process_uptime, 'int'
        api.has_param :status, { enum: -> { LiveEncoder::STATUS }}
        api.has_param :timestamp, 'int'
        api.has_param :total_audio_frames_sent, 'int'
        api.has_param :total_video_frames_sent, 'int'
        api.has_param :total_video_keyframes_sent, 'int'
        api.has_param :uptime, 'int'
      end
    end

  end
end
