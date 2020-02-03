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

  class UnifiedThread < AdObject

    field :can_reply, 'bool'
    field :former_participants, 'object'
    field :id, 'string'
    field :is_subscribed, 'bool'
    field :link, 'string'
    field :message_count, 'int'
    field :name, 'string'
    field :participants, 'object'
    field :scoped_thread_key, 'string'
    field :senders, 'object'
    field :snippet, 'string'
    field :subject, 'string'
    field :unread_count, 'int'
    field :updated_time, 'datetime'
    field :wallpaper, 'string'
    has_no_post
    has_no_delete

    has_edge :messages do |edge|
      edge.get do |api|
        api.has_param :source, { enum: %w{ALL PARTICIPANTS }}
      end
      edge.post do |api|
        api.has_param :aloha_action, 'string'
        api.has_param :android_key_hash, 'string'
        api.has_param :applied_art_data, 'object'
        api.has_param :associated_object_id, 'object'
        api.has_param :attribution_app_id, 'string'
        api.has_param :attribution_app_metadata, 'string'
        api.has_param :audio_duration, 'int'
        api.has_param :audio_type, { enum: %w{FILE_ATTACHMENT VOICE_MESSAGE VOICE_MESSAGE_WITH_TRANSCRIPT }}
        api.has_param :body, 'string'
        api.has_param :broadcast_recipients, 'hash'
        api.has_param :client_tags, 'hash'
        api.has_param :coordinates, 'object'
        api.has_param :copy_attachment, 'string'
        api.has_param :copy_message, 'string'
        api.has_param :customizations, 'hash'
        api.has_param :entry_point, 'string'
        api.has_param :external_attachment_url, 'string'
        api.has_param :image_type, { enum: %w{FILE_ATTACHMENT MESSENGER_CAM TRANSPARENT }}
        api.has_param :ios_bundle_id, 'string'
        api.has_param :is_admin_model_v2_enabled, 'bool'
        api.has_param :is_broadcast, 'bool'
        api.has_param :is_montage, 'bool'
        api.has_param :is_voicemail, 'bool'
        api.has_param :lightweight_action_attachment, 'object'
        api.has_param :link, 'string'
        api.has_param :live_location_attachment, 'object'
        api.has_param :location_attachment, 'object'
        api.has_param :log_info, 'hash'
        api.has_param :mark_read_watermark_timestamp, 'int'
        api.has_param :media, { list: 'string' }
        api.has_param :message_attempt_id, 'string'
        api.has_param :message_source_data, 'object'
        api.has_param :montage_business_platform_data, 'hash'
        api.has_param :montage_frame_style, { enum: %w{no_border }}
        api.has_param :montage_mentions, 'hash'
        api.has_param :montage_overlays, { list: 'hash' }
        api.has_param :montage_reply_data, 'object'
        api.has_param :montage_supported_features, { list: { enum: %w{AUTHOR_IN_PRODUCER_QE_FOR_SMART_REPLIES LIGHTWEIGHT_REPLY SHOW_STORY_IN_MESSENGER_THREAD }} }
        api.has_param :montage_targets, { list: 'string' }
        api.has_param :object_attachment, 'string'
        api.has_param :offline_threading_id, 'string'
        api.has_param :platform_xmd, 'string'
        api.has_param :prng, { list: 'string' }
        api.has_param :proxied_app_id, 'string'
        api.has_param :recipients, { list: 'object' }
        api.has_param :replied_to_message_id, 'string'
        api.has_param :selected_cta_token, 'string'
        api.has_param :shareable_attachment, 'object'
        api.has_param :shown_cta_tokens, { list: 'string' }
        api.has_param :skip_android_hash_check, 'bool'
        api.has_param :story_id, 'object'
        api.has_param :tags, { list: 'string' }
        api.has_param :tid, 'string'
        api.has_param :tracking, 'string'
        api.has_param :ttl, 'int'
        api.has_param :use_existing_group, 'bool'
        api.has_param :video_thumbnail, 'file'
        api.has_param :video_type, { enum: %w{FILE_ATTACHMENT RECORDED_STICKER RECORDED_VIDEO SPEAKING_STICKER VIDEO_MAIL }}
      end
    end

  end
end
