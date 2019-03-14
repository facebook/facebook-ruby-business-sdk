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

  class AdContract < AdObject

    field :account_id, 'string'
    field :account_mgr_fbid, 'string'
    field :account_mgr_name, 'string'
    field :adops_person_name, 'string'
    field :advertiser_address_fbid, 'string'
    field :advertiser_fbid, 'string'
    field :advertiser_name, 'string'
    field :agency_discount, 'double'
    field :agency_name, 'string'
    field :bill_to_address_fbid, 'string'
    field :bill_to_fbid, 'string'
    field :campaign_name, 'string'
    field :created_by, 'string'
    field :created_date, 'int'
    field :customer_io, 'string'
    field :io_number, 'int'
    field :io_terms, 'string'
    field :io_type, 'string'
    field :last_updated_by, 'string'
    field :last_updated_date, 'int'
    field :max_end_date, 'int'
    field :mdc_fbid, 'string'
    field :media_plan_number, 'string'
    field :min_start_date, 'int'
    field :msa_contract, 'string'
    field :payment_terms, 'string'
    field :rev_hold_flag, 'bool'
    field :rev_hold_released_by, 'int'
    field :rev_hold_released_on, 'int'
    field :salesrep_fbid, 'string'
    field :salesrep_name, 'string'
    field :sold_to_address_fbid, 'string'
    field :sold_to_fbid, 'string'
    field :status, 'string'
    field :subvertical, 'string'
    field :thirdparty_billed, 'int'
    field :thirdparty_password, 'string'
    field :thirdparty_uid, 'string'
    field :thirdparty_url, 'string'
    field :vat_country, 'string'
    field :version, 'int'
    field :vertical, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
