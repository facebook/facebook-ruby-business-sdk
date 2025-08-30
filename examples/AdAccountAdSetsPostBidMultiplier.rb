# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebook_ads'

access_token = '<ACCESS_TOKEN>'
app_secret = '<APP_SECRET>'
app_id = '<APP_ID>'
id = '<AD_ACCOUNT_ID>'

FacebookAds.configure do |config|
  config.access_token = access_token
  config.app_secret = app_secret
end

ad_account = FacebookAds::AdAccount.get(id)
adsets = ad_account.adsets.create({
    name: 'My Adset with bid multiplier',
    campaign_id: '<adCampaignLinkClicksID>',
    daily_budget: '3000',
    billing_event: 'IMPRESSIONS',
    optimization_goal: 'OFFSITE_CONVERSIONS',
    bid_amount: '500',
    bid_adjustments: {'user_groups':{'gender':{'male':0.8,'female':1}}},
    promoted_object: {'product_set_id':'<productSetID>','custom_event_type':'ADD_TO_CART'},
    targeting: {'facebook_positions':['feed'],'geo_locations':{'countries':['US']}},
    status: 'PAUSED',
})