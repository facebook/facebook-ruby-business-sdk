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
product_audiences = ad_account.product_audiences.create({
    name: 'Test Product Audience',
    product_set_id: '<productSetID>',
    inclusions: [{'retention_seconds':86400,'rule':{'event':{'eq':'AddToCart'}}},{'retention_seconds':72000,'rule':{'event':{'eq':'ViewContent'}}}],
    exclusions: [{'retention_seconds':172800,'rule':{'event':{'eq':'Purchase'}}}],
})