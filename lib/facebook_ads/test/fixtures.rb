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

require 'securerandom'

module FacebookAds
  module Test
    module Fixtures
      def ad_account
        FacebookAds::AdAccount.get(config.account_id)
      end

      def create_adlabel
        ad_account.adlabels.create({
          name: randomize('My ad label')
        })
      end

      def create_ad(params = {})
        ad_set ||= create_ad_set.tap { |c| yield c if block_given? }
        creative ||= create_creative.tap { |c| yield c if block_given? }

        params = {
          name: 'My Ad',
          adset_id: ad_set.id,
          creative: {
            creative_id: creative.id,
          },
          status: 'PAUSED',
        }

        ad = ad_account.ads.create(params)
      end

      def create_image
        images = ad_account.adimages.create({
          filename: config.image_path
        })
        images[0]
      end

      def create_campaign(params = {})
        params = {
          name: randomize('Testing Campaign'),
          buying_type: 'AUCTION',
          objective: 'LINK_CLICKS',
          status: 'PAUSED',
        }.merge(params)

        ad_account.campaigns.create(params)
      end

      def create_ad_set(campaign = nil, params = {})
        # yield generated object to add them to cleanup queue
        campaign ||= create_campaign.tap { |c| yield c if block_given? }

        ad_account.adsets.create({
          campaign_id: campaign.id,
          name: randomize('Test AdSet'),
          targeting: {
            geo_locations: { countries: ['US'] }
          },
          optimization_goal: 'IMPRESSIONS',
          billing_event: 'IMPRESSIONS',
          bid_amount: 100,
          daily_budget: 1000,
        })
      end

      def create_creative(image = nil, params = {})
        image ||= create_image

        ad_account.adcreatives.create({
          name: randomize('Test Creative'),
          object_story_spec: {
            page_id: config.page_id,
            link_data: {
              message: 'try it out',
              link: config.app_url,
              caption: 'www.example.com',
              image_hash: image.hash,
            }
          }
        })
      end

      def randomize(string)
        "#{string} #{SecureRandom.hex}"
      end
    end
  end
end
