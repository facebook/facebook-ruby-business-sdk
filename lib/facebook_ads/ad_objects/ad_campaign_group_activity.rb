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

  class AdCampaignGroupActivity < AdObject
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


    field :budget_limit_new, 'object'
    field :budget_limit_old, 'object'
    field :buying_type_new, 'string'
    field :buying_type_old, 'string'
    field :event_time, 'datetime'
    field :event_type, 'string'
    field :id, 'string'
    field :is_autobid_new, 'bool'
    field :is_autobid_old, 'bool'
    field :is_average_price_pacing_new, 'bool'
    field :is_average_price_pacing_old, 'bool'
    field :name_new, 'string'
    field :name_old, 'string'
    field :objective_new, { enum: -> { OBJECTIVE_NEW }}
    field :objective_old, { enum: -> { OBJECTIVE_OLD }}
    field :pacing_type, 'int'
    field :run_status_new, 'string'
    field :run_status_old, 'string'
    field :spend_cap_new, 'int'
    field :spend_cap_old, 'int'
    field :time_created, 'datetime'
    field :time_updated_new, 'datetime'
    field :time_updated_old, 'datetime'
    has_no_post
    has_no_delete

  end
end
