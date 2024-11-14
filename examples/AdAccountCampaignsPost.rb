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
campaigns = ad_account.campaigns.create({
    name: 'My campaign',
    objective: 'OUTCOME_TRAFFIC',
    status: 'PAUSED',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'Lead generation campaign',
    objective: 'OUTCOME_LEADS',
    status: 'PAUSED',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'Local ad campaign',
    objective: 'OUTCOME_AWARENESS',
    status: 'PAUSED',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'Mobile App Installs Campaign',
    objective: 'OUTCOME_APP_PROMOTION',
    status: 'PAUSED',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'App Installs Campaign with Dynamic Product Ads',
    objective: 'OUTCOME_APP_PROMOTION',
    status: 'PAUSED',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'Video Views campaign',
    objective: 'OUTCOME_ENGAGEMENT',
    status: 'PAUSED',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'My First Campaign',
    objective: 'OUTCOME_ENGAGEMENT',
    status: 'PAUSED',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'My First Campaign',
    objective: 'OUTCOME_ENGAGEMENT',
    status: 'PAUSED',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'My First Campaign with daily budget',
    objective: 'OUTCOME_LEADS',
    status: 'PAUSED',
    daily_budget: '1000',
    special_ad_categories: [],
})

campaigns = ad_account.campaigns.create({
    name: 'My First Campaign with special ad categories',
    objective: 'OUTCOME_LEADS',
    status: 'PAUSED',
    daily_budget: '1000',
    special_ad_categories: [],
    special_ad_category_country: ['MX'],
})