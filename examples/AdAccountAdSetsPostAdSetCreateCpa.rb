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
    name: 'A CPA Ad Set',
    campaign_id: '<adCampaignLinkClicksID>',
    daily_budget: '5000',
    start_time: '2024-07-27T00:47:13-0700',
    end_time: '2024-08-03T00:47:13-0700',
    billing_event: 'IMPRESSIONS',
    optimization_goal: 'REACH',
    bid_amount: '1000',
    promoted_object: {'page_id':'<pageID>'},
    targeting: {'facebook_positions':['feed'],'geo_locations':{'countries':['US']}},
    user_os: 'iOS',
    publisher_platforms: 'facebook',
    device_platforms: 'mobile',
})