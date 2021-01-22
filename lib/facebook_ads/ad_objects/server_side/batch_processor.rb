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

module FacebookAds::ServerSide
  class BatchProcessor
    attr_accessor :batch_size
    attr_accessor :concurrent_requests

    # Initializes the object
    # @param [Integer] batch_size  The number of events to send in each request
    # @param [Integer] concurrent_requests  The number of threads to use when making requests concurrently
    def initialize(batch_size=50, concurrent_requests=4)
      self.batch_size = batch_size
      self.concurrent_requests = concurrent_requests
    end

    def process_event_requests(event_requests_async)
      generator = self.process_event_requests_generator(event_requests_async)
      generator.each do |batch|
        Concurrent::Promise.zip(*batch).execute.value!
      end
    end

    def process_events(event_request_async_to_clone, events)
      generator = self.process_events_generator(event_request_async_to_clone, events)
      generator.each do |batch|
        Concurrent::Promise.zip(*batch).execute.value!
      end
    end

    def process_event_requests_generator(event_requests_async)
      index = 0
      Enumerator.new do |generator|
        while index < event_requests_async.size do
          batch = event_requests_async[index, concurrent_requests].map(&:execute)
          generator.yield *[batch]
          index += concurrent_requests
        end
      end
    end

    def process_events_generator(event_request_async_to_clone, events)
      index = 0
      Enumerator.new do |generator|
        while index < events.size do
          batch = []
          while index < events.size && batch.size < concurrent_requests do
            event_request_async = event_request_async_to_clone.clone_without_events
            event_request_async.events = events[index, batch_size]
            batch << event_request_async
            index += batch_size
          end
          generator.yield *[batch.map(&:execute)]
        end
      end
    end
  end
end
