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

  class CreditCard < AdObject

    field :billing_address, 'object'
    field :card_cobadging, 'string'
    field :card_holder_name, 'string'
    field :card_type, 'string'
    field :credential_id, 'int'
    field :default_receiving_method_products, { list: 'string' }
    field :expiry_month, 'string'
    field :expiry_year, 'string'
    field :id, 'string'
    field :is_cvv_tricky_bin, 'bool'
    field :is_enabled, 'bool'
    field :is_last_used, 'bool'
    field :is_network_tokenized_in_india, 'bool'
    field :is_soft_disabled, 'bool'
    field :is_user_verified, 'bool'
    field :is_zip_verified, 'bool'
    field :last4, 'string'
    field :readable_card_type, 'string'
    field :time_created, 'datetime'
    field :time_created_ts, 'int'
    field :type, 'string'
    has_no_post
    has_no_delete

  end
end
