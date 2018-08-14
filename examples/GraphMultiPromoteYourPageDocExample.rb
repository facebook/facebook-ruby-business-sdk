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

# User get
user = FacebookAds::User.get(id ,'')
user_id = user.id
print 'user_id:', user_id

# Get page access token and page_id
pages = user.accounts({
    fields: { 'access_token' },
})
page_id = pages[0].id
print 'page_id:', page_id

# Switch access token to page access token
FacebookAds::Session.default_session.access_token = pages[0].access_token
# Page feed create
page = FacebookAds::Page.get(page_id)
pagepost = page.feed.create({
    message: 'This is a test value',
})
pagepost_id = pagepost.id
print 'pagepost_id:', pagepost_id

# Switch access token back to user access token
FacebookAds::Session.default_session.access_token = access_token
# User adaccounts get
user_1 = FacebookAds::User.get(user_id)
adaccounts = user_1.adaccounts({
    fields: {  },
})
adaccount_id = adaccounts[0].id
print 'adaccount_id:', adaccount_id

# AdCampaign create
ad_account = FacebookAds::AdAccount.get(adaccount_id)
adcampaign = ad_account.campaigns.create({
    name: 'My campaign',
    objective: 'LINK_CLICKS',
    status: 'PAUSED',
})
adcampaign_id = adcampaign.id
print 'adcampaign_id:', adcampaign_id

# AdSet create
adset = ad_account.adsets.create({
    name: 'My Reach Ad Set',
    optimization_goal: 'REACH',
    billing_event: 'IMPRESSIONS',
    bid_amount: '2',
    daily_budget: '1000',
    campaign_id: adcampaign_id,
    targeting: {'geo_locations':{'countries':['US']}},
    status: 'PAUSED',
    promoted_object: {'page_id':page_id},
})
adset_id = adset.id
print 'adset_id:', adset_id

# AdCreative create page post
adcreative = ad_account.adcreatives.create({
    name: 'Sample Promoted Post',
    object_story_id: page_id + '_' + pagepost_id,
})
adcreative_id = adcreative.id
print 'adcreative_id:', adcreative_id

# AdGroup create
adgroup = ad_account.ads.create({
    name: 'My Ad',
    adset_id: adset_id,
    creative: {'creative_id':adcreative_id},
    status: 'PAUSED',
})