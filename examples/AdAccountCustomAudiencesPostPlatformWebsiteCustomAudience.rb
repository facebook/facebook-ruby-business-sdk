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
    name: 'My Test Website Custom Audience',
    rule: {'inclusions':{'operator':'or','rules':[{'event_sources':[{'id':'<pixelID>','type':'pixel'}],'retention_seconds':8400,'filter':{'operator':'and','filters':[{'field':'url','operator':'i_contains','value':'shoes'}]}}]}},
    prefill: '1',
})