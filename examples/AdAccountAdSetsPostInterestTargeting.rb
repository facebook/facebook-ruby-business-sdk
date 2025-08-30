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
    name: 'My First AdSet',
    daily_budget: '10000',
    bid_amount: '300',
    billing_event: 'IMPRESSIONS',
    optimization_goal: 'REACH',
    campaign_id: '<adCampaignLinkClicksID>',
    promoted_object: {'page_id':'<pageID>'},
    targeting: {'facebook_positions':['feed'],'geo_locations':{'countries':['US'],'regions':[{'key':'4081'}],'cities':[{'key':777934,'radius':10,'distance_unit':'mile'}]},'genders':[1],'age_max':24,'age_min':20,'publisher_platforms':['facebook','audience_network'],'device_platforms':['mobile'],'flexible_spec':[{'interests':[{'id':'<adsInterestID>','name':'<adsInterestName>'}]}]},
    status: 'PAUSED',
})