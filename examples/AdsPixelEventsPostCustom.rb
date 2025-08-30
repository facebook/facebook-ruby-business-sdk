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
    # It is recommended to send Client IP and User Agent for Conversions API Events.
    client_ip_address: request.remote_ip,
    client_user_agent: request.user_agent,
    fbc: 'fb.1.1554763741205.AbCdEfGhIjKlMnOpQrStUvWxYz1234567890',
    fbp: 'fb.1.1558571054389.1098115397'
)

content = FacebookAds::ServerSide::Content.new(
    product_id: 'product123',
    quantity: 1,
    delivery_category: 'home_delivery'
)

custom_data = FacebookAds::ServerSide::CustomData.new(
    contents: [content],
    currency: 'usd',
    value: 123.45
)

event = FacebookAds::ServerSide::Event.new(
    event_name: 'Purchase',
    event_time: Time.now.to_i,
    user_data: user_data,
    custom_data: custom_data,
    event_source_url: 'http://jaspers-market.com/product/123',
    action_source: 'website'
)

request = FacebookAds::ServerSide::EventRequest.new(
    pixel_id: pixel_id,
    events: [event]
)

print request.execute