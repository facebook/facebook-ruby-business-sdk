# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
