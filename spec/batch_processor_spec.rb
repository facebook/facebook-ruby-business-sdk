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

require 'concurrent'

RSpec.describe('FacebookAds::ServerSide::BatchProcessor') do
    it 'process_event_requests processes event_requests_async' do
        batch_processor = FacebookAds::ServerSide::BatchProcessor.new(2, 2)
        allow(batch_processor).to receive(:process_event_requests_generator).and_return([])
        event_requests_async = self.get_event_requests_async(5)
        batch_processor.process_event_requests(event_requests_async)

        expect(batch_processor).to have_received(:process_event_requests_generator).with(event_requests_async)
    end

    it 'process_event_requests_generator returns a generator' do
        batch_processor = FacebookAds::ServerSide::BatchProcessor.new(2, 2)
        event_requests_async = self.get_event_requests_async(5)
        generator = batch_processor.process_event_requests_generator(event_requests_async)
        generator.each do |batch|
            Concurrent::Promise.zip(*batch).execute.value!
        end

        event_requests_async.each do |event_request_async|
            expect(event_request_async).to have_received(:execute)
        end
    end

    it 'process_events processes events' do
        batch_processor = FacebookAds::ServerSide::BatchProcessor.new(2, 2)
        event_request_async_to_clone = double(FacebookAds::ServerSide::EventRequestAsync)
        allow(batch_processor).to receive(:process_events_generator).and_return([])
        events = self.get_events(3)
        batch_processor.process_events(event_request_async_to_clone, events)

        expect(batch_processor).to have_received(:process_events_generator).with(event_request_async_to_clone, events)
    end

    it 'process_events_generator returns a generator' do
        event_batches = []
        batch_processor = FacebookAds::ServerSide::BatchProcessor.new(3, 2)
        event_request_async_to_clone = double(FacebookAds::ServerSide::EventRequestAsync)
        events = self.get_events(8)
        allow(event_request_async_to_clone).to receive(:clone_without_events)
            .and_return(event_request_async_to_clone)
            .exactly(3)
            .times
        expect(event_request_async_to_clone).to receive(:events=).with(events[0, 3])
        expect(event_request_async_to_clone).to receive(:events=).with(events[3, 3])
        expect(event_request_async_to_clone).to receive(:events=).with(events[6, 3])
        allow(event_request_async_to_clone).to receive(:execute).and_return(Concurrent::Promise.execute)
        generator = batch_processor.process_events_generator(event_request_async_to_clone, events)
        iterations = 0
        generator.each do |batch|
            iterations += 1
            Concurrent::Promise.zip(*batch).execute.value!
        end

        expect(iterations).to eq(2)
    end

    def get_events(num)
        num.times.map do |i|
            FacebookAds::ServerSide::Event.new(event_name: i.to_s)
        end
    end

    def get_event_requests_async(num)
        num.times.map do |_|
            event_request_async = double(FacebookAds::ServerSide::EventRequestAsync)
            allow(event_request_async).to receive(:execute).and_return(Concurrent::Promise.execute)
            event_request_async
        end
    end
end
