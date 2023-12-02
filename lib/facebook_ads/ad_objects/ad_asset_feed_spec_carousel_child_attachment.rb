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

  class AdAssetFeedSpecCarouselChildAttachment < AdObject

    field :body_label, 'AdAssetFeedSpecAssetLabel'
    field :call_to_action_type_label, 'AdAssetFeedSpecAssetLabel'
    field :caption_label, 'AdAssetFeedSpecAssetLabel'
    field :description_label, 'AdAssetFeedSpecAssetLabel'
    field :image_label, 'AdAssetFeedSpecAssetLabel'
    field :link_url_label, 'AdAssetFeedSpecAssetLabel'
    field :phone_data_ids_label, 'AdAssetFeedSpecAssetLabel'
    field :static_card, 'bool'
    field :title_label, 'AdAssetFeedSpecAssetLabel'
    field :video_label, 'AdAssetFeedSpecAssetLabel'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
