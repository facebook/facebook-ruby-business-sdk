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

  class AdAccountDefaultObjective < AdObject
    DEFAULT_OBJECTIVE_FOR_USER = [
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "CANVAS_APP_INSTALLS",
      "EVENT_RESPONSES",
      "CANVAS_APP_ENGAGEMENT",
      "POST_ENGAGEMENT",
      "WEBSITE_CONVERSIONS",
      "MOBILE_APP_INSTALLS",
      "LINK_CLICKS",
      "MOBILE_APP_ENGAGEMENT",
      "VIDEO_VIEWS",
      "LOCAL_AWARENESS",
      "PRODUCT_CATALOG_SALES",
      "LEAD_GENERATION",
      "BRAND_AWARENESS",
      "APP_INSTALLS",
      "MESSAGES",
    ]

    OBJECTIVE_FOR_LEVEL = [
      "NONE",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "CANVAS_APP_INSTALLS",
      "EVENT_RESPONSES",
      "CANVAS_APP_ENGAGEMENT",
      "POST_ENGAGEMENT",
      "WEBSITE_CONVERSIONS",
      "MOBILE_APP_INSTALLS",
      "LINK_CLICKS",
      "MOBILE_APP_ENGAGEMENT",
      "VIDEO_VIEWS",
      "LOCAL_AWARENESS",
      "PRODUCT_CATALOG_SALES",
      "LEAD_GENERATION",
      "BRAND_AWARENESS",
      "APP_INSTALLS",
      "MESSAGES",
    ]


    field :default_objective_for_user, { enum: -> { DEFAULT_OBJECTIVE_FOR_USER }}
    field :objective_for_level, { enum: -> { OBJECTIVE_FOR_LEVEL }}
    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
