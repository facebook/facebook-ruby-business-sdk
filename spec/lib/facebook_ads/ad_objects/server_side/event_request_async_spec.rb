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

require 'json'

RSpec.describe 'FacebookAds::ServerSide::EventRequestAsync' do
    it 'execute_promise works' do
        event = FacebookAds::ServerSide::Event.new(event_name: 'event-1')
        expected_params = {
            data: [JSON.generate(event.normalize)],
            test_event_code: 'test_event_code-1',
            partner_agent: 'partner_agent-2',
            namespace_id: 'namespace_id-3',
            upload_id: 'upload_id-4',
        }
        event_request_async = FacebookAds::ServerSide::EventRequestAsync.new(
            pixel_id: expected_params[:pixel_id],
            events: [event],
            test_event_code: expected_params[:test_event_code],
            partner_agent: expected_params[:partner_agent],
            namespace_id: expected_params[:namespace_id],
            upload_id: expected_params[:upload_id],
        )
        mock_ads_pixel = double('mock-ads-pixel')
        response = {
            events_received: ['e1', 'e2'],
            messages: 'message3',
            fbtrace_id: 'fbtrace123',
        }
        expected_response = FacebookAds::ServerSide::EventResponse.new(**response)
        expect(mock_ads_pixel).to receive_message_chain('events.create').with(expected_params).and_return(response)
        expect(FacebookAds::AdsPixel).to receive(:get).with(event_request_async.pixel_id).and_return(mock_ads_pixel)
        promise = event_request_async.execute
        response = promise.value!

        expect(response).to eq(expected_response)
    end

    it 'clone_without_events clones the object without events' do
        event = double(FacebookAds::ServerSide::Event)
        expected_params = {
            test_event_code: 'test_event_code-1',
            partner_agent: 'partner_agent-2',
            namespace_id: 'namespace_id-3',
            upload_id: 'upload_id-4',
            upload_tag: 'upload_tag-5',
            upload_source: 'upload_source-6',
        }
        event_request_async = FacebookAds::ServerSide::EventRequestAsync.new(
            pixel_id: expected_params[:pixel_id],
            events: [event],
            test_event_code: expected_params[:test_event_code],
            partner_agent: expected_params[:partner_agent],
            namespace_id: expected_params[:namespace_id],
            upload_id: expected_params[:upload_id],
            upload_tag: expected_params[:upload_tag],
            upload_source: expected_params[:upload_source],
        )
        event_request_async_no_events = FacebookAds::ServerSide::EventRequestAsync.new(
            pixel_id: expected_params[:pixel_id],
            test_event_code: expected_params[:test_event_code],
            partner_agent: expected_params[:partner_agent],
            namespace_id: expected_params[:namespace_id],
            upload_id: expected_params[:upload_id],
            upload_tag: expected_params[:upload_tag],
            upload_source: expected_params[:upload_source],
        )
        cloned = event_request_async.clone_without_events

        expect(cloned).to eq(event_request_async_no_events)
    end
end
