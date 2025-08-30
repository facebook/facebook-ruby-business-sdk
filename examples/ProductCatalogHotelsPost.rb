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
hotels = product_catalog.hotels.create({
    hotel_id: 'h_1',
    name: 'Sample Hotel',
    description: 'hotel description',
    brand: 'hotel brand',
    url: 'http://www.example.com/samplehotel',
    images: [{'image_url':'https://www.example.com/pic1.jpg','tags':['front view','balcony']},{'image_url':'http://www.example.com/pic2.jpg','tags':['lobby view']}],
    address: {'street_address':'1 Hacker Way','city':'Menlo Park','region':'California','country':'United States','postal_code':'94025','neighborhoods':['Palo Alto','Menlo Park'],'latitude':37.484116,'longitude':-122.148244},
    guest_ratings: [{'score':7.8,'max_score':10,'rating_system':'sample_rating','number_of_raters':780}],
    star_rating: '4',
    phone: '+351234123456',
})