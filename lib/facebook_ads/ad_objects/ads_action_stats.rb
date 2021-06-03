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

  class AdsActionStats < AdObject

    field :_1d_click, 'string'
    field :_1d_view, 'string'
    field :_28d_click, 'string'
    field :_28d_view, 'string'
    field :_7d_click, 'string'
    field :_7d_view, 'string'
    field :action_brand, 'string'
    field :action_canvas_component_id, 'string'
    field :action_canvas_component_name, 'string'
    field :action_carousel_card_id, 'string'
    field :action_carousel_card_name, 'string'
    field :action_category, 'string'
    field :action_converted_product_id, 'string'
    field :action_destination, 'string'
    field :action_device, 'string'
    field :action_event_channel, 'string'
    field :action_link_click_destination, 'string'
    field :action_location_code, 'string'
    field :action_reaction, 'string'
    field :action_target_id, 'string'
    field :action_type, 'string'
    field :action_video_asset_id, 'string'
    field :action_video_sound, 'string'
    field :action_video_type, 'string'
    field :dda, 'string'
    field :inline, 'string'
    field :interactive_component_sticker_id, 'string'
    field :interactive_component_sticker_response, 'string'
    field :value, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
