# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebookbusiness'

app_id = '<APP_ID>'
account_id = 'act_<ACCOUNT_ID>'
page_id = '<PAGE_ID>'
ads_image_hash = '<IMAGE_HASH>'
page_link = 'https://facebook.com/<PAGE_ID>'
access_token = '<ACCESS_TOKEN>'

FacebookAds.configure do |config|
  config.access_token = access_token
  config.log_api_bodies = true
  config.crash_logging_enabled = false
end


# Step 1: Create an ad campaign

ad_account = FacebookAds::AdAccount.get(account_id)
campaign = ad_account.campaigns.create({
    objective: 'OUTCOME_TRAFFIC',
    status: 'PAUSED',
    buying_type: 'AUCTION',
    name: 'My Campaign',
    special_ad_categories: [],
})
campaign_id = campaign.id
print 'campaign_id:', campaign_id


# Step 2: Under the campaign, create an ad set with some buying options

ad_account = FacebookAds::AdAccount.get(account_id)
ad_set = ad_account.adsets.create({
    status: 'PAUSED',
    targeting: {'geo_locations': {'countries': ['US']}},
    daily_budget: '100',
    billing_event: 'IMPRESSIONS',
    bid_amount: '20',
    campaign_id: campaign_id,
    optimization_goal: 'REACH',
    promoted_object: {'page_id': page_id},
    name: 'My AdSet',
})
ad_set_id = ad_set.id
print 'ad_set_id:', ad_set_id


# Step 3: Create an ad creative with your amazing design
#         This ad creative is promoting your page

ad_account = FacebookAds::AdAccount.get(account_id)
creative = ad_account.adcreatives.create({
    name: 'Creative',
    object_story_spec: {'page_id':page_id,'link_data':{'image_hash':ads_image_hash,'link':page_link,'message':'Creative message','call_to_action':{'type':'LIKE_PAGE','value':{'page':page_id}}}},
    degrees_of_freedom_spec: {'creative_features_spec': {'standard_enhancements': {'enroll_status': 'OPT_IN'}}},
})
creative_id = creative.id
print 'creative_id:', creative_id


# Step 4: Create an ad under your ad set with your ad creative

ad_account = FacebookAds::AdAccount.get(account_id)
ad = ad_account.ads.create({
    status: 'PAUSED',
    adset_id: ad_set_id,
    name: 'My Ad',
    creative: {'creative_id': creative_id},
    ad_format: 'DESKTOP_FEED_STANDARD',
})
ad_id = ad.id
print 'ad_id:', ad_id
