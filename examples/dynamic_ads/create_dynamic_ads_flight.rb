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

require 'dotenv/load'
require 'facebookbusiness'

biz_id = nil
ad_account_id = nil
catalog_id = nil
feed_id = nil
product_set_id = nil
pixel_id = nil
esg_id = nil
audience_id = nil
page_id = nil
campaign_id = nil
adset_id = nil
creative_id = nil
ad_id = nil

biz = FacebookAds::Business.get(biz_id)
catalog = catalog_id ? FacebookAds::ProductCatalog.get(catalog_id) : (
  biz.product_catalogs.create({
    name: 'SDK Flight Catalog',
    vertical: 'flights'
  }).id
)
catalog_id = catalog.id

feed = feed_id ? FacebookAds::ProductFeed.get(feed_id) : (
  catalog.product_feeds.create({
    name: 'Route Feed'
  })
)
feed_id = feed.id

feed.uploads.create({
  file: File.open(File.expand_path("../../examples/sample_flight_feed.csv", __FILE__))
})

product_set = product_set_id ? FacebookAds::ProductSet.get(product_set_id) : (
  catalog.product_sets.create({
    name: 'All Flights'
  })
)
product_set_id = product_set.id

catalog.external_event_sources.create({
  external_event_sources: [pixel_id],
})

esg = esg_id ? FacebookAds::EventSourceGroup.get(esg_id) : (
  biz.event_source_groups.create({
    name: 'Test Flight Catalog ESG',
    event_sources: [pixel_id],
  })
)
esg_id = esg.id

esg.shared_accounts.create({
  accounts: [ad_account_id]
})


audience = audience_id ? FacebookAds::CustomAudience.get(audience_id) : (
  ad_account.customaudiences.create({
    name: 'Initiated Checkout but not purchase',
    subtype: 'CLAIM',
    claim_objective: 'TRAVEL',
    content_type: 'FLIGHT',
    event_source_group: esg_id,
    inclusions: [{event: 'Search', retention: {min_seconds: 0, max_seconds: 604800}}],
    exclusions: [{event: 'Purchase', retention: {min_seconds:0, max_seconds:604800}}],
  })
)
audience_id = audience.id

ad_account = FacebookAds::AdAccount.get('act_'+ad_account_id)
campaign = campaign_id ? FacebookAds::Campaign.get(campaign_id) : (
    ad_account.campaigns.create({
    name: 'Test DAT flight campaign',
    objective: 'PRODUCT_CATALOG_SALES',
    promoted_object: {product_catalog_id: catalog_id},
    status: 'PAUSED',
  })
)
campaign_id = campaign.id

adset = adset_id ? Facebook::AdSet.get(adset_id) : (
  ad_account.adsets.create({
    name: 'Initiated Checkout but not purchased',
    bid_amount: 3000,
    billing_event: 'IMPRESSIONS',
    optimization_goal: 'OFFSITE_CONVERSIONS',
    daily_budget: 15000,
    campaign_id: campaign.id,
    targeting: { dynamic_audience_ids: [audience.id] },
    promoted_object: {product_set_id: product_set.id},
    status: 'PAUSED',
  })
)
adset_id = adset.id

creative = creative_id ? FacebookAds::AdCreative.get(creative_id) : (
  ad_account.adcreatives.create({
    name: 'Test DAT Creative',
    object_story_spec: {
      page_id: page_id,
      template_data: {
        additional_image_index: 0,
        call_to_action: { type: 'BOOK_TRAVEL' },
        description: 'Fly with us with amazing service',
        link: 'http://www.example.com',
        message: 'Travel from {{flight.origin_city}} to {{flight.destination_city}} and enjoy our service',
        name: 'Enjoy great fares to {{flight.destination_city}}'
      }
    },
    product_set_id: product_set_id,
  })
)
creative_id = creative.id

ad = ad_id ? FacebookAds::Ad.get(ad_id) : (
  ad_account.ads.create({
    name: 'SDK DAT Ad',
    adset_id: adset_id,
    creative: { creative_id: creative_id },
    status: 'PAUSED',
  })
)
ad_id = ad.id
