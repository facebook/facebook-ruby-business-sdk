# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebook_ads'

access_token = '<ACCESS_TOKEN>'
app_secret = '<APP_SECRET>'
app_id = '<APP_ID>'
id = '<AD_SET_ID>'

FacebookAds.configure do |config|
  config.access_token = access_token
  config.app_secret = app_secret
end

ad_set = FacebookAds::AdSet.get(id)
ad_set.billing_event = 'IMPRESSIONS'ad_set.optimization_goal = 'LINK_CLICKS'ad_set.bid_amount = '200'ad_set.targeting = {'geo_locations':{'countries':['US']},'facebook_positions':['feed']}
ad_set.save