# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebook_ads'

access_token = '<ACCESS_TOKEN>'
app_secret = '<APP_SECRET>'
app_id = '<APP_ID>'
id = '<PAGE_ID>'

FacebookAds.configure do |config|
  config.access_token = access_token
  config.app_secret = app_secret
end

page = FacebookAds::Page.get(id)
feed = page.feed.create({
    message: 'This is a test message',
    call_to_action: {'type':'BUY_NOW','value':{'link':'<appLink>','app_link':'<deepLinkURL>'}},
})