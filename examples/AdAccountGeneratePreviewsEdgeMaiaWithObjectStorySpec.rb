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
generatepreviewss = ad_account.generatepreviews({
    fields: {  },
    creative: {'object_story_spec':{'link_data':{'call_to_action':{'type':'USE_APP','value':{'link':'<url>'}},'description':'Description','link':'<url>','message':'Message','name':'Name','picture':'<imageURL>'},'page_id':'<pageID>'}},
    ad_format: 'MOBILE_FEED_STANDARD',
})