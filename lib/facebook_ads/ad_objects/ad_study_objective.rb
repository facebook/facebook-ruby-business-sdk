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

  class AdStudyObjective < AdObject
    TYPE = [
      "AEP_CONVERSION",
      "BRAND",
      "BRANDLIFT",
      "FTL",
      "MAE",
      "MAI",
      "MPC_CONVERSION",
      "NONSALES",
      "PARTNER",
      "SALES",
      "TELCO",
    ]


    field :id, 'string'
    field :is_primary, 'bool'
    field :last_updated_results, 'string'
    field :name, 'string'
    field :results, { list: 'string' }
    field :type, 'string'
    has_no_delete

    has_edge :adspixels do |edge|
      edge.get 'AdsPixel'
    end

    has_edge :applications do |edge|
      edge.get 'Application'
    end

    has_edge :customconversions do |edge|
      edge.get 'CustomConversion'
    end

    has_edge :offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
    end

    has_edge :partnerstudies do |edge|
      edge.get 'PartnerStudy'
    end

  end
end
