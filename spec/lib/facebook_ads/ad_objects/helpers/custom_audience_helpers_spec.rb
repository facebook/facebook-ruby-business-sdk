# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
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
