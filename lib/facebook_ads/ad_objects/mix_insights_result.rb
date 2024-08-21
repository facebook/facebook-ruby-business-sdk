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

  class MixInsightsResult < AdObject

    field :daily_age_gender_breakdown, { list: 'map<string, list<map<string, int>>>' }
    field :daily_audio_library_values, { list: 'hash' }
    field :daily_ugc_values, { list: 'hash' }
    field :daily_values, { list: 'hash' }
    field :metric, 'string'
    field :monthly_audio_library_values, { list: 'hash' }
    field :monthly_ugc_values, { list: 'hash' }
    field :monthly_values, { list: 'hash' }
    field :percent_growth, 'double'
    field :shielded_fields, { list: 'map<string, list<map<string, bool>>>' }
    field :total_age_gender_breakdown, { list: 'hash' }
    field :total_audio_library_value, 'int'
    field :total_country_breakdown, { list: 'hash' }
    field :total_locale_breakdown, { list: 'hash' }
    field :total_product_breakdown, { list: 'hash' }
    field :total_ugc_value, 'int'
    field :total_value, 'int'
    field :trending_age, { list: 'map<string, list<map<string, float>>>' }
    field :trending_gender, { list: 'map<string, list<map<string, float>>>' }
    field :trending_interest, { list: 'map<string, list<map<string, float>>>' }
    field :trending_territory, { list: 'map<string, list<map<string, float>>>' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
