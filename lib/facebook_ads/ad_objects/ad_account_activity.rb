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

  class AdAccountActivity < AdObject

    field :billing_address_new, 'string'
    field :billing_address_old, 'string'
    field :created_by, 'string'
    field :created_time, 'datetime'
    field :credit_new, 'object'
    field :credit_old, 'object'
    field :credit_status_new, 'string'
    field :credit_status_old, 'string'
    field :currency_new, 'string'
    field :currency_old, 'string'
    field :daily_spend_limit_new, 'object'
    field :daily_spend_limit_old, 'object'
    field :event_time, 'datetime'
    field :event_type, 'string'
    field :funding_id_new, 'string'
    field :funding_id_old, 'string'
    field :grace_period_time_new, 'int'
    field :grace_period_time_old, 'int'
    field :id, 'string'
    field :manager_id_new, 'string'
    field :manager_id_old, 'string'
    field :name_new, 'string'
    field :name_old, 'string'
    field :spend_cap_new, 'object'
    field :spend_cap_old, 'object'
    field :status_new, 'string'
    field :status_old, 'string'
    field :terms_new, 'int'
    field :terms_old, 'int'
    field :tier_new, 'string'
    field :tier_old, 'string'
    field :time_updated_new, 'datetime'
    field :time_updated_old, 'datetime'
    has_no_post
    has_no_delete

  end
end
