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
end
