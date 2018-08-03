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

require 'dotenv/load'
require 'facebookbusiness'

FacebookAds::AdAccount.get("act_<ACT_ID>") do |ad_account|
  campaign = ad_account.campaigns.create({
    name: 'Test Campaign from SDK',
    objective: 'LINK_CLICKS'
  })

  adset = ad_account.adsets.create({
    name: 'Test Ad Set',
    campaign_id: campaign.id,
    bid_amount: 1000,
    billing_event: 'LINK_CLICKS',
    daily_budget: 15000,
    targeting: {
      age_max: 65,
      age_min: 18,
      geo_locations: {
        countries: [
          "HK"
        ]
      },
      publisher_platforms: [
        "facebook",
      ],
      facebook_positions: [
        "feed",
      ],
      instagram_positions: [
        "stream",
      ],
      device_platforms: [
        "mobile",
        "desktop",
      ],
    }
  })

  ad_account.ads.create({
    status: 'PAUSED',
    name: 'First Ad created by SDK',
    adset_id: adset.id,
    creative: {
      object_story_spec: {
        page_id: "<PAGE_OD>",
        link_data: {
          link: "http://example.com/",
          message: "Title of first Ad created by SDK",
          name: "First Ad",
          attachment_style: "link",
          call_to_action: {
            type: "LEARN_MORE"
          }
        }
      },
      title: 'Title of first ads',
      body: 'Body of the first Ad',
      object_ur: 'http://example.com',
      image_file: 'test.jpg'
    },
    logo: File.open(File.expand_path("../test.jpg", __FILE__)),
  })
end
