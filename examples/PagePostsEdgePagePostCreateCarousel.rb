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
postss = page.posts({
    fields: {  },
    message: 'Browse our latest products',
    published: '0',
    child_attachments: [{'link':'<link>','name':'Product 1','description':'$4.99','image_hash':'<imageHash>'},{'link':'<link>','name':'Product 2','description':'$4.99','image_hash':'<imageHash>'},{'link':'<link>','name':'Product 3','description':'$4.99','image_hash':'<imageHash>'},{'link':'<link>','name':'Product 4','description':'$4.99','image_hash':'<imageHash>'}],
    caption: 'WWW.EXAMPLE.COM',
    link: 'http://www.example.com/products',
})