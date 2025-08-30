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
customaudiences = ad_account.customaudiences.create({
    name: 'My Test Engagement Custom Audience',
    rule: {'inclusions':{'operator':'or','rules':[{'event_sources':[{'id':'<pageID>','type':'page'},{'id':'<pageID2>','type':'page'}],'retention_seconds':31536000,'filter':{'operator':'and','filters':[{'field':'event','operator':'eq','value':'page_engaged'}]}}]}},
    prefill: '1',
})