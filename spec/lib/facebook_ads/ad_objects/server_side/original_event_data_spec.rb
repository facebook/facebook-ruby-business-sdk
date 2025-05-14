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


RSpec.describe 'FacebookAds::ServerSide::OriginalEventData' do
    it 'normalize works' do
        event_name = 'event-name-1'
        event_time = 12345
        order_id = 'order_id-1'
        event_id = 'event_id-1'
        original_event_data = FacebookAds::ServerSide::OriginalEventData.new(
            event_name: event_name,
            event_time: event_time,
            order_id: order_id,
            event_id: event_id,
        )

        expect(original_event_data.normalize).to eq({
            'event_name' => event_name,
            'event_time' => event_time,
            'order_id' => order_id,
            'event_id' => event_id,
        })
    end

    it 'equals works' do
        original_event_data1 = FacebookAds::ServerSide::OriginalEventData.new()
        original_event_data2 = FacebookAds::ServerSide::OriginalEventData.new()
        expect(original_event_data1).to eq(original_event_data2)
        expect(original_event_data1.hash).to eq(original_event_data2.hash)

        original_event_data1 = FacebookAds::ServerSide::OriginalEventData.new(
            event_name: 'event-name-1',
            event_time: 12345,
        )
        original_event_data2 = FacebookAds::ServerSide::OriginalEventData.new(
            event_name: 'event-name-1',
            event_time: 12345,
        )
        expect(original_event_data1).to eq(original_event_data2)
        expect(original_event_data1.hash).to eq(original_event_data2.hash)
    end

    it 'not equals works' do
        original_event_data1 = FacebookAds::ServerSide::OriginalEventData.new()
        original_event_data2 = FacebookAds::ServerSide::OriginalEventData.new()
        expect(original_event_data1).to eq(original_event_data2)
        expect(original_event_data1.hash).to eq(original_event_data2.hash)

        original_event_data1 = FacebookAds::ServerSide::OriginalEventData.new(
            event_name: 'event-name-1',
            event_time: 12345,
        )
        original_event_data2 = FacebookAds::ServerSide::OriginalEventData.new(
            event_name: 'event-name-2',
            event_time: 12346,
        )
        expect(original_event_data1).to_not eq(original_event_data2)
        expect(original_event_data1.hash).to_not eq(original_event_data2.hash)
    end
end
