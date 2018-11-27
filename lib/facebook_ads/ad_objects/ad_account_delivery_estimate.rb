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

  class AdAccountDeliveryEstimate < AdObject
    OPTIMIZATION_GOAL = [
      "NONE",
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "AD_RECALL_LIFT",
      "CLICKS",
      "ENGAGED_USERS",
      "EVENT_RESPONSES",
      "IMPRESSIONS",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "OFFER_CLAIMS",
      "OFFSITE_CONVERSIONS",
      "PAGE_ENGAGEMENT",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "REACH",
      "SOCIAL_IMPRESSIONS",
      "VIDEO_VIEWS",
      "APP_DOWNLOADS",
      "LANDING_PAGE_VIEWS",
      "VALUE",
      "THRUPLAY",
      "REPLIES",
      "DERIVED_EVENTS",
    ]


    field :daily_outcomes_curve, { list: 'OutcomePredictionPoint' }
    field :estimate_dau, 'int'
    field :estimate_mau, 'int'
    field :estimate_ready, 'bool'
    field :id, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
