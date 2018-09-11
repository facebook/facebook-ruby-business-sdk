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

  class SystemUser < AdObject
    ROLE = [
      "FINANCE_EDITOR",
      "FINANCE_ANALYST",
      "ADS_RIGHTS_REVIEWER",
      "ADMIN",
      "EMPLOYEE",
      "FB_EMPLOYEE_SALES_REP",
    ]


    field :created_by, 'User'
    field :created_time, 'datetime'
    field :finance_permission, 'string'
    field :id, 'string'
    field :ip_permission, 'string'
    field :name, 'string'
    field :role, { enum: -> { ROLE }}
    field :system_user_id, 'int'
    has_no_post
    has_no_delete

    has_edge :assigned_ad_accounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :assigned_apps do |edge|
      edge.get 'Application'
    end

    has_edge :assigned_business_resource_groups do |edge|
      edge.get 'BusinessResourceGroup'
    end

    has_edge :assigned_monetization_properties do |edge|
      edge.get 'AdMonetizationProperty'
    end

    has_edge :assigned_pages do |edge|
      edge.get 'Page'
    end

    has_edge :assigned_product_catalogs do |edge|
      edge.get 'ProductCatalog'
    end

    has_edge :assigned_whatsapp_business_accounts do |edge|
      edge.get 'WhatsAppBusinessAccount'
    end

    has_edge :updated_by do |edge|
      edge.get 'User'
    end

  end
end
