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
    name: 'My Reach Ad Set',
    optimization_goal: 'REACH',
    billing_event: 'IMPRESSIONS',
    bid_amount: '2',
    daily_budget: '1000',
    campaign_id: '<adCampaignLinkClicksID>',
    targeting: {'excluded_geo_locations':{'regions':[{'key':'3847'}]},'geo_locations':{'countries':['US']},'facebook_positions':['feed']},
    status: 'PAUSED',
    promoted_object: {'page_id':'<pageID>'},
})