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

  class AdStudyCell < AdObject
    CREATION_TEMPLATE = [
      "AUTOMATIC_PLACEMENTS",
      "BRAND_AWARENESS",
      "FACEBOOK",
      "FACEBOOK_AUDIENCE_NETWORK",
      "FACEBOOK_INSTAGRAM",
      "FACEBOOK_NEWS_FEED",
      "FACEBOOK_NEWS_FEED_IN_STREAM_VIDEO",
      "HIGH_FREQUENCY",
      "INSTAGRAM",
      "IN_STREAM_VIDEO",
      "LOW_FREQUENCY",
      "MEDIUM_FREQUENCY",
      "MOBILE_OPTIMIZED_VIDEO",
      "PAGE_POST_ENGAGEMENT",
      "REACH",
      "TV_COMMERCIAL",
      "TV_FACEBOOK",
      "VIDEO_VIEW_OPTIMIZATION",
    ]


    field :ad_entities_count, 'int'
    field :control_percentage, 'double'
    field :id, 'string'
    field :name, 'string'
    field :treatment_percentage, 'double'
    has_no_delete

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :adsets do |edge|
      edge.get 'AdSet'
    end

    has_edge :campaigns do |edge|
      edge.get 'Campaign'
    end

  end
end
