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
adcreatives = ad_account.adcreatives.create({
    object_story_spec: {'page_id':'<pageID>','template_data':{'format_option':'collection_video','link':'<canvasURI>','name':'English Creative title','message':'English Creative message','call_to_action':{'type':'LEARN_MORE'},'retailer_item_ids':[0,0,0,0],'customization_rules_spec':[{'customization_spec':{'language':'en_XX'}},{'customization_spec':{'language':'fr_XX'},'link':'<canvasURIFR>','name':'French Creative title','message':'French Creative message'}]}},
    product_set_id: '<productSetID>',
})