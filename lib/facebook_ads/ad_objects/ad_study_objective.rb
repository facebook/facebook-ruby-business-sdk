# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class AdStudyObjective < AdObject
    TYPE = [
      "BRAND",
      "BRANDLIFT",
      "CONVERSIONS",
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

    has_edge :brand_requests do |edge|
      edge.get 'BrandRequest'
    end

    has_edge :customconversions do |edge|
      edge.get 'CustomConversion'
    end

    has_edge :offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
    end

    has_edge :partner_private_studies do |edge|
      edge.get 'Business'
    end

    has_edge :partnerstudies do |edge|
      edge.get 'PartnerStudy'
    end

  end
end
