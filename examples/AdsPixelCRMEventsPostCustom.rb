# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'facebook_ads'

access_token = '<ACCESS_TOKEN>'
pixel_id = '<ADS_PIXEL_ID>'

FacebookAds.configure do |config|
  config.access_token = access_token
end

user_data = FacebookAds::ServerSide::UserData.new(
    emails: ['joe@eg.com'],
    phones: ['12345678901', '14251234567'],
    lead_id: ['525645896321548'],
)

custom_data = FacebookAds::ServerSide::CustomData.new(
    lead_event_source: 'Salesforce',
)

event = FacebookAds::ServerSide::Event.new(
    event_name: 'QualifiedLead',
    event_time: Time.now.to_i,
    user_data: user_data,
    custom_data: custom_data,
    action_source: 'system_generated'
)

request = FacebookAds::ServerSide::EventRequest.new(
    pixel_id: pixel_id,
    events: [event]
)

print request.execute