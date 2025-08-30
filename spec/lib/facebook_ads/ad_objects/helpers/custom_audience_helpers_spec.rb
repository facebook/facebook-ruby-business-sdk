# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

RSpec.describe 'FacebookAds::CustomAudienceHelpers' do
  let(:test_class) { Struct.new('TestClass') { include FacebookAds::CustomAudienceHelpers } }

  it '#prepare_params can parse options' do
    data = [1, 2]
    schema = "MOBILE_ADVERTISER_ID"
    options = { app_ids: [3, 4] }

    got = test_class.new.prepare_params(data, schema, **options)
    expect(got).to eq(
      payload: {
        schema: "MOBILE_ADVERTISER_ID",
        data: [1, 2],
        is_raw: true,
        app_ids: [3, 4],
      },
    )
  end
end
