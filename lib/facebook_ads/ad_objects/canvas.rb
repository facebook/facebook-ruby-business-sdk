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

  class Canvas < AdObject

    field :background_color, 'string'
    field :body_elements, { list: 'object' }
    field :business_id, 'string'
    field :canvas_link, 'string'
    field :collection_hero_image, 'Photo'
    field :collection_hero_video, 'AdVideo'
    field :collection_thumbnails, { list: 'CanvasCollectionThumbnail' }
    field :dynamic_setting, 'CanvasDynamicSetting'
    field :element_payload, 'string'
    field :elements, { list: 'RichMediaElement' }
    field :fb_body_elements, { list: 'object' }
    field :id, 'string'
    field :is_hidden, 'bool'
    field :is_published, 'bool'
    field :last_editor, 'User'
    field :linked_documents, { list: 'Canvas' }
    field :name, 'string'
    field :owner, 'Page'
    field :property_list, { list: 'string' }
    field :source_template, 'object'
    field :store_url, 'string'
    field :style_list, { list: 'string' }
    field :tags, { list: 'string' }
    field :ui_property_list, { list: 'string' }
    field :unused_body_elements, { list: 'object' }
    field :update_time, 'int'
    field :use_retailer_item_ids, 'bool'
    has_no_delete

    has_edge :preview do |edge|
      edge.get 'CanvasPreview'
    end

    has_edge :previews do |edge|
      edge.get 'TextWithEntities' do |api|
        api.has_param :user_ids, { list: 'int' }
      end
    end

  end
end
