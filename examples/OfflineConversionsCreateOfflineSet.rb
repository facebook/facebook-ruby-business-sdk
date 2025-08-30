# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebook_ads'

access_token = '<ACCESS_TOKEN>'
app_secret = '<APP_SECRET>'
app_id = '<APP_ID>'
id = '<BUSINESS_ID>'

FacebookAds.configure do |config|
  config.access_token = access_token
  config.app_secret = app_secret
end

business = FacebookAds::Business.get(id)
offline_conversion_data_sets = business.offline_conversion_data_sets.create({
    name: 'offline_event_set',
    description: 'conversion data used for superbowl campaign',
})