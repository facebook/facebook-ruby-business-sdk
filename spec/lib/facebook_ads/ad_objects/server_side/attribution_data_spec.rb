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


RSpec.describe 'FacebookAds::ServerSide::AttributionData' do
    it 'normalize works' do
        scope = 'click'
        visit_time = 12345
        ad_id = '123'
        adset_id = '234'
        campaign_id = '456'
        attr_window = 7
        attribution_share = 0.5
        attribution_model = 'last_click'
        attribution_data = FacebookAds::ServerSide::AttributionData.new(
            scope: scope,
            visit_time: visit_time,
            ad_id: ad_id,
            adset_id: adset_id,
            campaign_id: campaign_id,
            attr_window: attr_window,
            attribution_share: attribution_share,
            attribution_model: attribution_model,
        )

        expect(attribution_data.normalize).to eq({
            'scope' => scope,
            'visit_time' => visit_time,
            'ad_id' => ad_id,
            'adset_id' => adset_id,
            'campaign_id' => campaign_id,
            'attr_window' => attr_window,
            'attribution_share' => attribution_share,
            'attribution_model' => attribution_model,
        })
    end

    it 'equals works' do
        attribution_data1 = FacebookAds::ServerSide::AttributionData.new()
        attribution_data2 = FacebookAds::ServerSide::AttributionData.new()
        expect(attribution_data1).to eq(attribution_data2)
        expect(attribution_data1.hash).to eq(attribution_data2.hash)

        attribution_data1 = FacebookAds::ServerSide::AttributionData.new(
            scope: 'click',
            visit_time: 12345,
            ad_id: '123',
            adset_id: '234',
            campaign_id: '456',
            attr_window: 7,
            attribution_share: 0.5,
            attribution_model: 'last_click',
        )
        attribution_data2 = FacebookAds::ServerSide::AttributionData.new(
            scope: 'click',
            visit_time: 12345,
            ad_id: '123',
            adset_id: '234',
            campaign_id: '456',
            attr_window: 7,
            attribution_share: 0.5,
            attribution_model: 'last_click',
        )
        expect(attribution_data1).to eq(attribution_data2)
        expect(attribution_data1.hash).to eq(attribution_data2.hash)
    end

    it 'not equals works' do
        attribution_data1 = FacebookAds::ServerSide::AttributionData.new()
        attribution_data2 = FacebookAds::ServerSide::AttributionData.new()
        expect(attribution_data1).to eq(attribution_data2)
        expect(attribution_data1.hash).to eq(attribution_data2.hash)

        attribution_data1 = FacebookAds::ServerSide::AttributionData.new(
            scope: 'click',
            visit_time: 12345,
            ad_id: '123',
            adset_id: '234',
            campaign_id: '456',
            attr_window: 7,
            attribution_share: 0.5,
            attribution_model: 'last_click',
        )
        attribution_data2 = FacebookAds::ServerSide::AttributionData.new(
            scope: 'click',
            visit_time: 12345,
            ad_id: '123',
            adset_id: '234',
            campaign_id: '456',
            attr_window: 7,
            # different attribution share to test
            attribution_share: 0.4,
            attribution_model: 'last_click',
        )
        expect(attribution_data1).to_not eq(attribution_data2)
        expect(attribution_data1.hash).to_not eq(attribution_data2.hash)
    end
end
