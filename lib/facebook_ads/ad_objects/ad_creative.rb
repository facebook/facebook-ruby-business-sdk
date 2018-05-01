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

  class AdCreative < AdObject
    APPLINK_TREATMENT = [
      "deeplink_with_web_fallback",
      "deeplink_with_appstore_fallback",
      "web_only",
    ]

    CALL_TO_ACTION_TYPE = [
      "OPEN_LINK",
      "LIKE_PAGE",
      "SHOP_NOW",
      "PLAY_GAME",
      "INSTALL_APP",
      "USE_APP",
      "CALL",
      "CALL_ME",
      "INSTALL_MOBILE_APP",
      "USE_MOBILE_APP",
      "MOBILE_DOWNLOAD",
      "BOOK_TRAVEL",
      "LISTEN_MUSIC",
      "WATCH_VIDEO",
      "LEARN_MORE",
      "SIGN_UP",
      "DOWNLOAD",
      "WATCH_MORE",
      "NO_BUTTON",
      "VISIT_PAGES_FEED",
      "APPLY_NOW",
      "BUY_NOW",
      "GET_OFFER",
      "GET_OFFER_VIEW",
      "BUY_TICKETS",
      "UPDATE_APP",
      "GET_DIRECTIONS",
      "BUY",
      "MESSAGE_PAGE",
      "DONATE",
      "SUBSCRIBE",
      "SAY_THANKS",
      "SELL_NOW",
      "SHARE",
      "DONATE_NOW",
      "GET_QUOTE",
      "CONTACT_US",
      "ORDER_NOW",
      "ADD_TO_CART",
      "VIDEO_ANNOTATION",
      "MOMENTS",
      "RECORD_NOW",
      "GET_SHOWTIMES",
      "LISTEN_NOW",
      "EVENT_RSVP",
      "WHATSAPP_MESSAGE",
    ]

    OBJECT_TYPE = [
      "APPLICATION",
      "DOMAIN",
      "EVENT",
      "OFFER",
      "PAGE",
      "PHOTO",
      "SHARE",
      "STATUS",
      "STORE_ITEM",
      "VIDEO",
      "INVALID",
    ]

    STATUS = [
      "ACTIVE",
      "DELETED",
    ]

    DYNAMIC_AD_VOICE = [
      "DYNAMIC",
      "STORY_OWNER",
    ]

    OPERATOR = [
      "ALL",
      "ANY",
    ]


    field :account_id, 'string'
    field :actor_id, 'string'
    field :adlabels, { list: 'AdLabel' }
    field :applink_treatment, { enum: -> { APPLINK_TREATMENT }}
    field :asset_feed_spec, 'AdAssetFeedSpec'
    field :body, 'string'
    field :branded_content_sponsor_page_id, 'string'
    field :call_to_action_type, { enum: -> { CALL_TO_ACTION_TYPE }}
    field :effective_instagram_story_id, 'string'
    field :effective_object_story_id, 'string'
    field :id, 'string'
    field :image_crops, 'AdsImageCrops'
    field :image_hash, 'string'
    field :image_url, 'string'
    field :instagram_actor_id, 'string'
    field :instagram_permalink_url, 'string'
    field :instagram_story_id, 'string'
    field :link_og_id, 'string'
    field :link_url, 'string'
    field :messenger_sponsored_message, 'string'
    field :name, 'string'
    field :object_id, 'string'
    field :object_story_id, 'string'
    field :object_story_spec, 'AdCreativeObjectStorySpec'
    field :object_type, { enum: -> { OBJECT_TYPE }}
    field :object_url, 'string'
    field :platform_customizations, 'object'
    field :product_set_id, 'string'
    field :recommender_settings, 'object'
    field :status, { enum: -> { STATUS }}
    field :template_url, 'string'
    field :template_url_spec, 'object'
    field :thumbnail_url, 'string'
    field :title, 'string'
    field :url_tags, 'string'
    field :use_page_actor_override, 'bool'
    field :video_id, 'string'
    field :dynamic_ad_voice, { enum: -> { DYNAMIC_AD_VOICE }}
    field :image_file, 'string'

    has_edge :adlabels do |edge|
      edge.delete do |api|
        api.has_param :adlabels, { list: 'object' }
      end
      edge.post 'AdLabel' do |api|
        api.has_param :adlabels, { list: 'object' }
      end
    end

    has_edge :previews do |edge|
      edge.get 'AdPreview' do |api|
        api.has_param :ad_format, { enum: -> { AdPreview::AD_FORMAT }}
        api.has_param :dynamic_creative_spec, 'object'
        api.has_param :end_date, 'datetime'
        api.has_param :height, 'int'
        api.has_param :place_page_id, 'int'
        api.has_param :post, 'object'
        api.has_param :product_item_ids, { list: 'string' }
        api.has_param :start_date, 'datetime'
        api.has_param :width, 'int'
      end
    end

  end
end
