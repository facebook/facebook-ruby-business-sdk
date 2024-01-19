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

  class AdCreativeLinkData < AdObject
    FORMAT_OPTION = [
      "carousel_ar_effects",
      "carousel_images_multi_items",
      "carousel_images_single_item",
      "carousel_slideshows",
      "single_image",
    ]


    field :ad_context, 'string'
    field :additional_image_index, 'int'
    field :app_link_spec, 'AdCreativeLinkDataAppLinkSpec'
    field :attachment_style, 'string'
    field :automated_product_tags, 'bool'
    field :branded_content_shared_to_sponsor_status, 'string'
    field :branded_content_sponsor_page_id, 'string'
    field :call_to_action, 'AdCreativeLinkDataCallToAction'
    field :caption, 'string'
    field :child_attachments, { list: 'AdCreativeLinkDataChildAttachment' }
    field :collection_thumbnails, { list: 'AdCreativeCollectionThumbnailInfo' }
    field :customization_rules_spec, { list: 'AdCustomizationRuleSpec' }
    field :description, 'string'
    field :event_id, 'string'
    field :force_single_link, 'bool'
    field :format_option, { enum: -> { FORMAT_OPTION }}
    field :image_crops, 'AdsImageCrops'
    field :image_hash, 'string'
    field :image_layer_specs, { list: 'AdCreativeLinkDataImageLayerSpec' }
    field :image_overlay_spec, 'AdCreativeLinkDataImageOverlaySpec'
    field :link, 'string'
    field :message, 'string'
    field :multi_share_end_card, 'bool'
    field :multi_share_optimized, 'bool'
    field :name, 'string'
    field :offer_id, 'string'
    field :page_welcome_message, 'string'
    field :picture, 'string'
    field :post_click_configuration, 'AdCreativePostClickConfiguration'
    field :preferred_image_tags, { list: 'string' }
    field :retailer_item_ids, { list: 'string' }
    field :show_multiple_images, 'bool'
    field :static_fallback_spec, 'AdCreativeStaticFallbackSpec'
    field :use_flexible_image_aspect_ratio, 'bool'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
