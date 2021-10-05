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

  class ProductCatalogDiagnosticGroup < AdObject
    AFFECTED_CHANNELS = [
      "business_inbox_in_messenger",
      "shops",
      "test_capability",
      "universal_checkout",
      "us_marketplace",
    ]

    AFFECTED_FEATURES = [
      "augmented_reality",
      "checkout",
    ]

    SEVERITY = [
      "MUST_FIX",
      "OPPORTUNITY",
    ]

    TYPE = [
      "ATTRIBUTES_INVALID",
      "ATTRIBUTES_MISSING",
      "CATEGORY",
      "CHECKOUT",
      "IMAGE_QUALITY",
      "LOW_QUALITY_TITLE_AND_DESCRIPTION",
      "POLICY_VIOLATION",
      "SHOPS_VISIBILITY_ISSUES",
    ]

    SEVERITIES = [
      "MUST_FIX",
      "OPPORTUNITY",
    ]

    TYPES = [
      "ATTRIBUTES_INVALID",
      "ATTRIBUTES_MISSING",
      "CATEGORY",
      "CHECKOUT",
      "IMAGE_QUALITY",
      "LOW_QUALITY_TITLE_AND_DESCRIPTION",
      "POLICY_VIOLATION",
      "SHOPS_VISIBILITY_ISSUES",
    ]


    field :affected_channels, { list: { enum: -> { AFFECTED_CHANNELS }} }
    field :affected_features, { list: { enum: -> { AFFECTED_FEATURES }} }
    field :diagnostics, { list: 'object' }
    field :error_code, 'int'
    field :number_of_affected_items, 'int'
    field :severity, { enum: -> { SEVERITY }}
    field :subtitle, 'string'
    field :title, 'string'
    field :type, { enum: -> { TYPE }}
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
