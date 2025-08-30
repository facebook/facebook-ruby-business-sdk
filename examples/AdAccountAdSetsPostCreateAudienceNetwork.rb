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
    name: 'My Ad Set',
    optimization_goal: 'LINK_CLICKS',
    billing_event: 'LINK_CLICKS',
    bid_amount: '2',
    daily_budget: '1000',
    campaign_id: '<adCampaignLinkClicksID>',
    targeting: {'device_platforms':['mobile'],'geo_locations':{'countries':['US']},'publisher_platforms':['facebook','audience_network'],'facebook_positions':['feed']},
})