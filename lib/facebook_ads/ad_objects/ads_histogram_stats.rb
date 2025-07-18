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

  class AdsHistogramStats < AdObject

    field :_1d_click, { list: 'int' }
    field :_1d_click_all_conversions, { list: 'int' }
    field :_1d_click_first_conversion, { list: 'int' }
    field :_1d_ev, { list: 'int' }
    field :_1d_ev_all_conversions, { list: 'int' }
    field :_1d_ev_first_conversion, { list: 'int' }
    field :_1d_view, { list: 'int' }
    field :_1d_view_all_conversions, { list: 'int' }
    field :_1d_view_first_conversion, { list: 'int' }
    field :_28d_click, { list: 'int' }
    field :_28d_click_all_conversions, { list: 'int' }
    field :_28d_click_first_conversion, { list: 'int' }
    field :_28d_view, { list: 'int' }
    field :_28d_view_all_conversions, { list: 'int' }
    field :_28d_view_first_conversion, { list: 'int' }
    field :_7d_click, { list: 'int' }
    field :_7d_click_all_conversions, { list: 'int' }
    field :_7d_click_first_conversion, { list: 'int' }
    field :_7d_view, { list: 'int' }
    field :_7d_view_all_conversions, { list: 'int' }
    field :_7d_view_first_conversion, { list: 'int' }
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
    field :dda, { list: 'int' }
    field :incrementality, { list: 'int' }
    field :incrementality_all_conversions, { list: 'int' }
    field :incrementality_first_conversion, { list: 'int' }
    field :inline, { list: 'int' }
    field :interactive_component_sticker_id, 'string'
    field :interactive_component_sticker_response, 'string'
    field :skan_click, { list: 'int' }
    field :skan_click_second_postback, { list: 'int' }
    field :skan_click_third_postback, { list: 'int' }
    field :skan_view, { list: 'int' }
    field :skan_view_second_postback, { list: 'int' }
    field :skan_view_third_postback, { list: 'int' }
    field :value, { list: 'int' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
