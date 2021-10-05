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

  class AdgroupActivity < AdObject
    OBJECTIVE_NEW = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "CANVAS_APP_ENGAGEMENT",
      "CANVAS_APP_INSTALLS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "MOBILE_APP_ENGAGEMENT",
      "MOBILE_APP_INSTALLS",
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "VIDEO_VIEWS",
      "WEBSITE_CONVERSIONS",
    ]

    OBJECTIVE_OLD = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "CANVAS_APP_ENGAGEMENT",
      "CANVAS_APP_INSTALLS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "MOBILE_APP_ENGAGEMENT",
      "MOBILE_APP_INSTALLS",
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "VIDEO_VIEWS",
      "WEBSITE_CONVERSIONS",
    ]


    field :ad_creative_id_new, 'AdCreative'
    field :ad_creative_id_old, 'AdCreative'
    field :asset_feed_id_new, 'string'
    field :asset_feed_id_old, 'string'
    field :bid_amount_new, 'int'
    field :bid_amount_old, 'int'
    field :bid_info_new, 'hash'
    field :bid_info_old, 'hash'
    field :bid_type_new, 'string'
    field :bid_type_old, 'string'
    field :conversion_specs_new, { list: 'object' }
    field :conversion_specs_old, { list: 'object' }
    field :created_time, 'datetime'
    field :display_sequence_new, 'int'
    field :display_sequence_old, 'int'
    field :engagement_audience_new, 'bool'
    field :engagement_audience_old, 'bool'
    field :event_time, 'datetime'
    field :event_type, 'string'
    field :force_run_status_new, 'bool'
    field :force_run_status_old, 'bool'
    field :friendly_name_new, 'string'
    field :friendly_name_old, 'string'
    field :id, 'string'
    field :is_reviewer_admin_new, 'bool'
    field :is_reviewer_admin_old, 'bool'
    field :objective_new, { enum: -> { OBJECTIVE_NEW }}
    field :objective_old, { enum: -> { OBJECTIVE_OLD }}
    field :objective_source_new, 'string'
    field :objective_source_old, 'string'
    field :priority_new, 'int'
    field :priority_old, 'int'
    field :reason_new, 'string'
    field :reason_old, 'string'
    field :run_status_new, 'string'
    field :run_status_old, 'string'
    field :source_adgroup_id_new, 'Ad'
    field :source_adgroup_id_old, 'Ad'
    field :start_time_new, 'datetime'
    field :start_time_old, 'datetime'
    field :stop_time_new, 'datetime'
    field :stop_time_old, 'datetime'
    field :target_spec_id_new, 'string'
    field :target_spec_id_old, 'string'
    field :targets_spec_new, 'object'
    field :targets_spec_old, 'object'
    field :tracking_specs_new, { list: 'object' }
    field :tracking_specs_old, { list: 'object' }
    field :update_time_new, 'datetime'
    field :update_time_old, 'datetime'
    field :view_tags_new, { list: 'string' }
    field :view_tags_old, { list: 'string' }
    has_no_post
    has_no_delete

  end
end
