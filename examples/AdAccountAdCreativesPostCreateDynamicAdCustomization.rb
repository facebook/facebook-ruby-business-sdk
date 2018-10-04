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
app_secret = '<APP_SECRET>'
app_id = '<APP_ID>'
id = '<ID>'

FacebookAds.configure do |config|
  config.access_token = access_token
  config.app_secret = app_secret
end

ad_account = FacebookAds::AdAccount.get(id)
adcreatives = ad_account.adcreatives.create({
    name: 'Dynamic Ad Template Creative Sample',
    object_story_spec: {'page_id':'<pageID>','template_data':{'message':'English Test {{product.name | titleize}}','link':'http://www.example.com/englishurl','name':'English Headline {{product.price}}','description':'English Description {{product.description}}','customization_rules_spec':[{'customization_spec':{'language':'en_XX'}},{'customization_spec':{'language':'fr_XX'},'message':'French Test {{product.name | titleize}}','link':'http://www.example.com/frenchurl','name':'French Headline {{product.price}}','description':'French Description {{product.description}}','template_url_spec':{'web':{'url':'http://www.example.com/frenchdeeplink'}}}]}},
    product_set_id: '<productSetID>',
    template_url_spec: {'web':{'url':'http://www.example.com/englishdeeplink'}},
})