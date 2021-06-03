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

  class ContentDeliveryReport < AdObject
    PLATFORM = [
      "AUDIENCE_NETWORK",
      "FACEBOOK",
      "HIDDEN_AAA",
      "INSTAGRAM",
      "MESSENGER",
      "OCULUS",
      "UNKNOWN",
      "WHATSAPP",
    ]

    POSITION = [
      "ALL_PLACEMENTS",
      "AN_CLASSIC",
      "FACEBOOK_GROUPS_FEED",
      "FACEBOOK_STORIES",
      "FEED",
      "GROUPS",
      "HIDDEN_AAA",
      "INSTAGRAM_EXPLORE",
      "INSTAGRAM_IGTV",
      "INSTAGRAM_REELS",
      "INSTAGRAM_STORIES",
      "INSTANT_ARTICLE",
      "INSTREAM_VIDEO",
      "JOBS_BROWSER",
      "MARKETPLACE",
      "MESSENGER_INBOX",
      "MESSENGER_STORIES",
      "OCULUS_TWILIGHT_FEED",
      "OTHERS",
      "REWARDED_VIDEO",
      "RIGHT_HAND_COLUMN",
      "SEARCH",
      "STATUS",
      "STICKERS",
      "SUGGESTED_VIDEO",
      "UNKNOWN",
      "VIDEO_FEEDS",
    ]


    field :content_name, 'string'
    field :content_url, 'string'
    field :creator_name, 'string'
    field :creator_url, 'string'
    field :estimated_impressions, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
