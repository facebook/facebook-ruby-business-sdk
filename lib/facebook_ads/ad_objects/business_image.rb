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

  class BusinessImage < AdObject
    VALIDATION_AD_PLACEMENTS = [
      "AUDIENCE_NETWORK_INSTREAM_VIDEO",
      "AUDIENCE_NETWORK_INSTREAM_VIDEO_MOBILE",
      "AUDIENCE_NETWORK_REWARDED_VIDEO",
      "DESKTOP_FEED_STANDARD",
      "FACEBOOK_STORY_MOBILE",
      "INSTAGRAM_STANDARD",
      "INSTAGRAM_STORY",
      "INSTANT_ARTICLE_STANDARD",
      "INSTREAM_VIDEO_DESKTOP",
      "INSTREAM_VIDEO_MOBILE",
      "MESSENGER_MOBILE_INBOX_MEDIA",
      "MESSENGER_MOBILE_STORY_MEDIA",
      "MOBILE_FEED_STANDARD",
      "MOBILE_FULLWIDTH",
      "MOBILE_INTERSTITIAL",
      "MOBILE_MEDIUM_RECTANGLE",
      "MOBILE_NATIVE",
      "RIGHT_COLUMN_STANDARD",
      "SUGGESTED_VIDEO_MOBILE",
    ]


    field :business, 'Business'
    field :creation_time, 'datetime'
    field :hash, 'string'
    field :height, 'int'
    field :id, 'string'
    field :name, 'string'
    field :url, 'string'
    field :url_128, 'string'
    field :width, 'int'
    field :ad_placements_validation_only, 'bool'
    field :bytes, 'object'
    field :creative_folder_id, 'string'
    field :validation_ad_placements, { list: { enum: -> { VALIDATION_AD_PLACEMENTS }} }
    has_no_post

    has_edge :insights do |edge|
      edge.get do |api|
        api.has_param :time_range, 'object'
      end
    end

  end
end
