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

RSpec.describe 'FacebookAds::ServerSide::EventRequest' do
    it 'constructor works' do
        pixel_id = 'pixel_id-0'
        events = [FacebookAds::ServerSide::Event.new(event_name: 'event-1')]
        test_event_code = 'test_event_code-1'
        partner_agent = 'partner_agent-2'
        namespace_id = 'namespace_id-3'
        upload_id = 'upload_id-4'
        upload_tag = 'upload_tag-5'
        upload_source = 'upload_source-6'
        event_request = FacebookAds::ServerSide::EventRequest.new(
            pixel_id: pixel_id,
            events: events,
            test_event_code: test_event_code,
            partner_agent: partner_agent,
            namespace_id: namespace_id,
            upload_id: upload_id,
            upload_tag: upload_tag,
            upload_source: upload_source,
        )

        expect(event_request.pixel_id).to eq(pixel_id)
        expect(event_request.events).to eq(events)
        expect(event_request.test_event_code).to eq(test_event_code)
        expect(event_request.partner_agent).to eq(partner_agent)
        expect(event_request.namespace_id).to eq(namespace_id)
        expect(event_request.upload_id).to eq(upload_id)
        expect(event_request.upload_tag).to eq(upload_tag)
        expect(event_request.upload_source).to eq(upload_source)
    end

    it 'equals works' do
        event_request1 = FacebookAds::ServerSide::EventRequest.new()
        event_request2 = FacebookAds::ServerSide::EventRequest.new()
        expect(event_request1).to eq(event_request2)
        expect(event_request1.hash).to eq(event_request2.hash)

        event_request1 = FacebookAds::ServerSide::EventRequest.new(
            pixel_id: 'pixel_id-0',
            events: [FacebookAds::ServerSide::Event.new(event_name: 'event-1')],
            test_event_code: 'test_event_code-1',
            partner_agent: 'partner_agent-2',
            namespace_id: 'namespace_id-3',
            upload_id: 'upload_id-4',
            upload_tag: 'upload_tag-5',
            upload_source: 'upload_source-6',
        )
        event_request2 = FacebookAds::ServerSide::EventRequest.new(
            pixel_id: 'pixel_id-0',
            events: [FacebookAds::ServerSide::Event.new(event_name: 'event-1')],
            test_event_code: 'test_event_code-1',
            partner_agent: 'partner_agent-2',
            namespace_id: 'namespace_id-3',
            upload_id: 'upload_id-4',
            upload_tag: 'upload_tag-5',
            upload_source: 'upload_source-6',
        )
        expect(event_request1).to eq(event_request2)
        expect(event_request1.hash).to eq(event_request2.hash)
    end

    it 'not equals works' do
        event_request1 = FacebookAds::ServerSide::EventRequest.new(test_event_code: 'test_event_code-1')
        event_request2 = FacebookAds::ServerSide::EventRequest.new(test_event_code: 'test_event_code-2')
        expect(event_request1).to_not eq(event_request2)
        expect(event_request1.hash).to_not eq(event_request2.hash)

        event_request1 = FacebookAds::ServerSide::EventRequest.new(
            pixel_id: 'pixel_id-0',
            events: [FacebookAds::ServerSide::Event.new(event_name: 'event-1')],
            test_event_code: 'test_event_code-1',
            partner_agent: 'partner_agent-2',
            namespace_id: 'namespace_id-3',
            upload_id: 'upload_id-4',
            upload_tag: 'upload_tag-5',
            upload_source: 'upload_source-6',
        )
        event_request2 = FacebookAds::ServerSide::EventRequest.new(
            pixel_id: 'pixel_id-0',
            events: [FacebookAds::ServerSide::Event.new(event_name: 'event-1')],
            test_event_code: 'test_event_code-1',
            partner_agent: 'partner_agent-2',
            namespace_id: 'namespace_id-3',
            upload_id: 'upload_id-4',
            upload_tag: 'upload_tag-5',
            # no upload_source
        )
        expect(event_request1).to_not eq(event_request2)
        expect(event_request1.hash).to_not eq(event_request2.hash)
    end

    it 'execute works when all fields are specified' do
        event = FacebookAds::ServerSide::Event.new(event_name: 'event-1')
        expected_params = {
            data: [JSON.generate(event.normalize)],
            test_event_code: 'test_event_code-1',
            partner_agent: 'partner_agent-2',
            namespace_id: 'namespace_id-3',
            upload_id: 'upload_id-4',
            upload_tag: 'upload_tag-5',
            upload_source: 'upload_id-6',
        }
        event_request = FacebookAds::ServerSide::EventRequest.new(
            pixel_id: expected_params[:pixel_id],
            events: [event],
            test_event_code: expected_params[:test_event_code],
            partner_agent: expected_params[:partner_agent],
            namespace_id: expected_params[:namespace_id],
            upload_id: expected_params[:upload_id],
            upload_tag: expected_params[:upload_tag],
            upload_source: expected_params[:upload_source],
        )
        mock_ads_pixel = double('mock-ads-pixel')
        response = {
            events_received: ['e1', 'e2'],
            messages: 'message3',
            fbtrace_id: 'fbtrace123',
        }
        expected_response = FacebookAds::ServerSide::EventResponse.new(**response)
        expect(mock_ads_pixel).to receive_message_chain('events.create').with(expected_params).and_return(response)
        expect(FacebookAds::AdsPixel).to receive(:get).with(event_request.pixel_id).and_return(mock_ads_pixel)
        response = event_request.execute

        expect(response).to eq(expected_response)
    end

    it 'execute works when only events are specified' do
        event = FacebookAds::ServerSide::Event.new(event_name: 'event-1')
        expected_params = {
            data: [JSON.generate(event.normalize)],
        }
        event_request = FacebookAds::ServerSide::EventRequest.new(
            pixel_id: expected_params[:pixel_id],
            events: [event],
        )
        mock_ads_pixel = double('mock-ads-pixel')
        response = {
            events_received: ['e1', 'e2'],
            messages: 'message3',
            fbtrace_id: 'fbtrace123',
        }
        expected_response = FacebookAds::ServerSide::EventResponse.new(**response)
        expect(mock_ads_pixel).to receive_message_chain('events.create').with(expected_params).and_return(response)
        expect(FacebookAds::AdsPixel).to receive(:get).with(event_request.pixel_id).and_return(mock_ads_pixel)
        response = event_request.execute

        expect(response).to eq(expected_response)
    end

    it 'execute can use a custom http_service_client' do
        appsecret = 'appsecret-proof-012'
        mock_http_service_client = double(FacebookAds::ServerSide::HttpServiceInterface)
        access_token = 'access_token-0'
        pixel_id = 'pixel_id-1'
        test_event_code = 'test_event_code-2'
        FacebookAds.configure do |config|
            config.access_token = access_token
            config.app_secret = appsecret
        end
        events = [FacebookAds::ServerSide::Event.new(event_name: 'event-1')]
        event_request = FacebookAds::ServerSide::EventRequest.new(
            pixel_id: pixel_id,
            events: events,
            test_event_code: test_event_code,
            http_service_client: mock_http_service_client,
        )
        url = "https://#{FacebookAds::DEFAULT_HOST}/#{FacebookAds::DEFAULT_API_VERSION}/#{pixel_id}/events"
        headers = {
            'User-Agent' => "fbbizsdk-ruby-v#{FacebookAds::VERSION}"
        }
        params = event_request.get_params
        params[:access_token] = access_token
        params[:appsecret_proof] = FacebookAds::ServerSide::HttpUtil.appsecret_proof(appsecret, access_token)
        params[:data] = events.map(&:normalize)

        expect(mock_http_service_client).to receive(:execute).with(
            url,
            FacebookAds::ServerSide::HttpMethod::POST,
            headers,
            params
        )

        event_request.execute
    end
end
