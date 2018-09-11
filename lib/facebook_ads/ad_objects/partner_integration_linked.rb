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

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class PartnerIntegrationLinked < AdObject
    PARTNER = [
      "adjust",
      "appsflyer",
      "avana",
      "backer_founder",
      "big_commerce",
      "cart_3d",
      "default",
      "drupal",
      "ec_cube3",
      "eventbrite",
      "feedonomics",
      "foodkit",
      "google_tag_manager",
      "haravan",
      "infusionsoft_zap",
      "intern",
      "invoca",
      "jimdo",
      "joomla",
      "jumpseller",
      "kraftly",
      "magento",
      "magento_2",
      "marketo",
      "meesho",
      "now_floats",
      "opencart",
      "prestashop",
      "productsup",
      "ruby_on_rails",
      "riversoft",
      "salesforce_zap",
      "segment",
      "shopify",
      "shopify_online",
      "shopline",
      "shop_up",
      "sirclo",
      "squarespace",
      "storeden",
      "test",
      "verifone",
      "waca",
      "weebly",
      "wix",
      "woocommerce",
      "wordpress",
      "zoho_zap",
      "ticketmaster",
    ]

    COMPLETED_INTEGRATION_TYPES = [
      "0",
      "1",
      "2",
      "3",
    ]

    SETUP_STATUS = [
      "START",
      "COMPLETE",
    ]


    field :ads_pixel, 'AdsPixel'
    field :application, 'Application'
    field :completed_integration_types, { list: 'string' }
    field :external_id, 'string'
    field :has_oauth_token, 'bool'
    field :id, 'string'
    field :name, 'string'
    field :offline_conversion_data_set, 'OfflineConversionDataSet'
    field :partner, 'string'
    field :partner_profile, 'object'
    field :product_catalog, 'ProductCatalog'
    field :setup_status, 'string'
    field :gtm_account_id, 'string'
    field :gtm_container_id, 'string'

  end
end
