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

RSpec.describe 'FacebookAds::ServerSide::AMAPIEvent' do
    it 'the constructor works' do
        event_name = 'custom'
        event_time = 123
        user_data = FacebookAds::ServerSide::UserData.new(email: 'eg@test.com')
        custom_data = FacebookAds::ServerSide::CustomData.new(custom_properties: {'col_1' => 'foo4'})
        data_processing_options = ['AMO']
        advanced_measurement_table = 'test_am_table'
        event = FacebookAds::ServerSide::Event.new(
            event_name: event_name,
            event_time: event_time,
            user_data: user_data,
            custom_data: custom_data,
            data_processing_options: data_processing_options,
            advanced_measurement_table: advanced_measurement_table,
        )
        expected_params = {
            'event_name' => event_name,
            'event_time' => event_time,
            'user_data' => user_data.normalize,
            'custom_data' => custom_data.normalize,
            'data_processing_options' => data_processing_options,
            'advanced_measurement_table' => advanced_measurement_table,
        }
        normalized_event = event.normalize

        expect(normalized_event).to eql(expected_params)
    end

    it 'build initializes from a hash' do
        params = {
            'event_name': 'custom',
            'event_time': 123,
            'user_data': FacebookAds::ServerSide::UserData.new(email: 'eg@test.com'),
            'custom_data': FacebookAds::ServerSide::CustomData.new(custom_properties: {'col_1' => 'foo4'}),
            'data_processing_options': ['AMO'],
            'advanced_measurement_table': 'test_am_table',
        }
        event = FacebookAds::ServerSide::Event.new
        event.build(params)

        params.each do |k, v|
            expect(event.send(k.to_sym)).to eql(v)
        end
    end
end
