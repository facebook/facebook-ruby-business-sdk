# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebook_ads'

access_token = '<ACCESS_TOKEN>'
app_secret = '<APP_SECRET>'
app_id = '<APP_ID>'
id = '<PRODUCT_CATALOG_ID>'

FacebookAds.configure do |config|
  config.access_token = access_token
  config.app_secret = app_secret
end

product_catalog = FacebookAds::ProductCatalog.get(id)
product_feeds = product_catalog.product_feeds.create({
    name: 'Test Feed',
    schedule: {'interval':'DAILY','url':'http://www.example.com/sample_feed.tsv','hour':'22'},
})