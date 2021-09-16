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

  class Canvas < AdObject

    field :background_color, 'string'
    field :body_elements, { list: 'object' }
    field :business_id, 'string'
    field :canvas_link, 'string'
    field :collection_hero_image, 'Photo'
    field :collection_hero_video, 'AdVideo'
    field :collection_thumbnails, { list: 'CanvasCollectionThumbnail' }
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
    field :source_template, 'CanvasTemplate'
    field :store_url, 'string'
    field :style_list, { list: 'string' }
    field :tags, { list: 'string' }
    field :ui_property_list, { list: 'string' }
    field :unused_body_elements, { list: 'object' }
    field :update_time, 'int'
    field :use_retailer_item_ids, 'bool'

    has_edge :duplicate_canvas do |edge|
      edge.post 'Canvas'
    end

    has_edge :preview_notifications do |edge|
      edge.post 'Canvas' do |api|
        api.has_param :user_ids, { list: 'int' }
      end
    end

    has_edge :previews do |edge|
      edge.get 'TextWithEntities' do |api|
        api.has_param :user_ids, { list: 'int' }
      end
    end

  end
end
