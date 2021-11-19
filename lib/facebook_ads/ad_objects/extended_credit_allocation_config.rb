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

  class ExtendedCreditAllocationConfig < AdObject
    LIABILITY_TYPE = [
      "",
      "MSA",
      "Normal",
      "Sequential",
    ]

    PARTITION_TYPE = [
      "AUTH",
      "FIXED",
    ]

    SEND_BILL_TO = [
      "",
      "Advertiser",
      "Agency",
    ]


    # The field "amount" has been added to allow updating an existing ExtendedCreditAllocationConfig.
    #
    # Previously, this SDK required the following steps to do an update:
    #   1) Attempt to retrieve the ExtendedCreditAllocationConfig.
    #   2) If present, delete it.
    #   3) Create a new one, using the create method on the owning_credit_allocation_configs edge.
    #
    # As of 2021-11-16, that stopped working. (The LOC allocation would end up with the value zero.)
    #
    # The field "amount" can be used to update an ExtendedCreditAllocationConfig, if you follow this approach:
    #   creditAllocationConfig.amount = "12.34"
    #   creditAllocationConfig.save(:fields => [])
    # "fields" must be specified because otherwise the SDK supplies values which the API objects to.
    #
    # Do not use "amount" for anything other than updating an ExtendedCreditAllocationConfig.
    #
    field :amount, 'string'
    field :currency_amount, 'CurrencyAmount'
    field :id, 'string'
    field :liability_type, 'string'
    field :owning_business, 'Business'
    field :owning_credential, 'ExtendedCredit'
    field :partition_type, 'string'
    field :receiving_business, 'Business'
    field :receiving_credential, 'ExtendedCredit'
    field :request_status, 'string'
    field :send_bill_to, 'string'

  end
end
