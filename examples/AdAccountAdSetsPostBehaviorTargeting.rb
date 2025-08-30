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
    name: 'My AdSet',
    optimization_goal: 'REACH',
    billing_event: 'IMPRESSIONS',
    bid_amount: '2',
    daily_budget: '1000',
    campaign_id: '<adCampaignConversionsID>',
    targeting: {'facebook_positions':['feed'],'geo_locations':{'countries':['US']},'behaviors':[{'id':6007101597783,'name':'Business Travelers'},{'id':6004386044572,'name':'Android Owners (All)'}]},
})