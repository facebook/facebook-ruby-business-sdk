# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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