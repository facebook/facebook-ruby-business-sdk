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

  class AdCreativeVideoData < AdObject

    field :additional_image_index, 'int'
    field :branded_content_shared_to_sponsor_status, 'string'
    field :branded_content_sponsor_page_id, 'string'
    field :call_to_action, 'AdCreativeLinkDataCallToAction'
    field :collection_thumbnails, { list: 'AdCreativeCollectionThumbnailInfo' }
    field :customization_rules_spec, { list: 'AdCustomizationRuleSpec' }
    field :image_hash, 'string'
    field :image_url, 'string'
    field :link_description, 'string'
    field :message, 'string'
    field :offer_id, 'string'
    field :page_welcome_message, 'string'
    field :post_click_configuration, 'AdCreativePostClickConfiguration'
    field :retailer_item_ids, { list: 'string' }
    field :targeting, 'Targeting'
    field :title, 'string'
    field :video_id, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
