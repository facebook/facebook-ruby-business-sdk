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

RSpec.describe 'FacebookAds::ServerSide::Event' do
    it 'the constructor works' do
        event_name = 'event_name-0'
        event_time = 1
        event_source_url = 'event_source_url-2'
        opt_out = false
        event_id = 'event_id-3'
        user_data = FacebookAds::ServerSide::UserData.new(email: 'eg@test.com')
        custom_data = FacebookAds::ServerSide::CustomData.new(order_id: 123)
        original_event_data = FacebookAds::ServerSide::OriginalEventData.new(
            event_name: 'event-name-1',
            event_time: 12345,
        )
        attribution_data = FacebookAds::ServerSide::AttributionData.new(
            scope: 'click',
            visit_time: 12345,
            attribution_share: 0.5,
        )
        data_processing_options = ['1', '2']
        data_processing_options_country = 1
        data_processing_options_state = 2
        action_source = 'website'
        event = FacebookAds::ServerSide::Event.new(
            event_name: event_name,
            event_time: event_time,
            event_source_url: event_source_url,
            opt_out: opt_out,
            event_id: event_id,
            user_data: user_data,
            custom_data: custom_data,
            data_processing_options: data_processing_options,
            data_processing_options_country: data_processing_options_country,
            data_processing_options_state: data_processing_options_state,
            action_source: action_source,
            original_event_data: original_event_data,
            attribution_data: attribution_data,
        )
        expected_params = {
            'event_name' => event_name,
            'event_time' => event_time,
            'event_source_url' => event_source_url,
            'opt_out' => opt_out,
            'event_id' => event_id,
            'user_data' => user_data.normalize,
            'custom_data' => custom_data.normalize,
            'data_processing_options' => data_processing_options,
            'data_processing_options_country' => data_processing_options_country,
            'data_processing_options_state' => data_processing_options_state,
            'action_source' => action_source,
            'original_event_data' => original_event_data.normalize,
            'attribution_data' => attribution_data.normalize,
        }
        normalized_event = event.normalize

        expect(normalized_event).to eql(expected_params)
    end

    it 'build initializes from a hash' do
        original_event_data = FacebookAds::ServerSide::OriginalEventData.new(
            event_name: 'event-name-1',
            event_time: 12345,
        )
        attribution_data = FacebookAds::ServerSide::AttributionData.new(
            scope: 'click',
            visit_time: 12345,
            attribution_share: 0.5,
        )
        params = {
            'event_name': 'event_name-0',
            'event_time': 1,
            'event_source_url': 'event_source_url-2',
            'opt_out': false,
            'event_id': 'event_id-3',
            'user_data': FacebookAds::ServerSide::UserData.new(email: 'eg@test.com'),
            'custom_data': FacebookAds::ServerSide::CustomData.new(order_id: 123),
            'data_processing_options': ['1', '2'],
            'data_processing_options_country': 1,
            'data_processing_options_state': 2,
            'action_source': 'website',
            'original_event_data': original_event_data,
            'attribution_data': attribution_data,
        }
        event = FacebookAds::ServerSide::Event.new
        event.build(params)

        params.each do |k, v|
            expect(event.send(k.to_sym)).to eql(v)
        end
    end

    it 'normalize validates the action_source' do
        expect{
            FacebookAds::ServerSide::Event.new(
                action_source: 'unsupported action source'
            ).normalize
        }.to raise_error(ArgumentError)
    end
end
