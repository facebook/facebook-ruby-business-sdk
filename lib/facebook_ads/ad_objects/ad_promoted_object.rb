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

  class AdPromotedObject < AdObject
    CUSTOM_EVENT_TYPE = [
      "RATE",
      "TUTORIAL_COMPLETION",
      "CONTACT",
      "CUSTOMIZE_PRODUCT",
      "DONATE",
      "FIND_LOCATION",
      "SCHEDULE",
      "START_TRIAL",
      "SUBMIT_APPLICATION",
      "SUBSCRIBE",
      "ADD_TO_CART",
      "ADD_TO_WISHLIST",
      "INITIATED_CHECKOUT",
      "ADD_PAYMENT_INFO",
      "PURCHASE",
      "LEAD",
      "COMPLETE_REGISTRATION",
      "CONTENT_VIEW",
      "SEARCH",
      "SERVICE_BOOKING_REQUEST",
      "MESSAGING_CONVERSATION_STARTED_7D",
      "LEVEL_ACHIEVED",
      "ACHIEVEMENT_UNLOCKED",
      "SPENT_CREDITS",
      "OTHER",
    ]


    field :application_id, 'string'
    field :custom_conversion_id, 'string'
    field :custom_event_type, { enum: -> { CUSTOM_EVENT_TYPE }}
    field :event_id, 'string'
    field :fundraiser_campaign_id, 'string'
    field :object_store_url, 'string'
    field :offer_id, 'string'
    field :offline_conversion_data_set_id, 'string'
    field :page_id, 'string'
    field :pixel_aggregation_rule, 'string'
    field :pixel_id, 'string'
    field :pixel_rule, 'string'
    field :place_page_set_id, 'string'
    field :product_catalog_id, 'string'
    field :product_item_id, 'string'
    field :product_set_id, 'string'
    field :retention_days, 'string'
    field :id, 'string'
    has_no_post
    has_no_delete

  end
end
