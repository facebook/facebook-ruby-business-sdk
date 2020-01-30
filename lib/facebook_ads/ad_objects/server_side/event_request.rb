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

require_relative './event'
require_relative './event_response'

module FacebookAds
  module ServerSide
    class EventRequest
      # An array of Server Event objects
      attr_accessor :events

      # Code used to verify that your server events are received correctly by Facebook.
      # Use this code to test your server events in the Test Events feature in Events Manager. See Test Events Tool
      # (https://developers.facebook.com/docs/marketing-api/facebook-pixel/server-side-api/using-the-api#testEvents)
      # for an example.
      attr_accessor :test_event_code

      # Ad pixel id
      attr_accessor :pixel_id

      # Platform from which the event is sent e.g. wordpress
      attr_accessor :partner_agent

      # @param [String] pixel_id
      # @param [Array(FacebookAds::ServerSide::Event)] events
      # @param [String] test_event_code
      # @param [String] partner_agent
      def initialize(pixel_id: nil, events: nil, test_event_code: nil, partner_agent: nil)
        unless pixel_id.nil?
          self.pixel_id = pixel_id
        end
        unless events.nil?
          self.events = events
        end
        unless test_event_code.nil?
          self.test_event_code = test_event_code
        end
        unless partner_agent.nil?
          self.partner_agent = partner_agent
        end
      end

      # build the object using the input hash
      # @param [Hash] attributes  attributes in the form of hash
      def build(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'pixel_id')
          self.pixel_id = attributes[:'pixel_id']
        end

        if attributes.has_key?(:'events')
          if (value = attributes[:'events']).is_a?(Array)
            self.events = value
          end
        end

        if attributes.has_key?(:'test_event_code')
          self.test_event_code = attributes[:'test_event_code']
        end

        if attributes.has_key?(:'partner_agent')
          self.partner_agent = attributes[:'partner_agent']
        end
      end

      # Execute request
      def execute
        unless valid?
          raise list_invalid_properties
        end
        normalized_events = normalize
        ads_pixel = FacebookAds::AdsPixel.get(pixel_id)
        response = ads_pixel.events.create(
            {
                data: normalized_events,
                test_event_code: test_event_code,
                partner_agent: partner_agent
            }
        )
        json_response_object = JSON.parse(JSON.generate(response), object_class: OpenStruct)
        FacebookAds::ServerSide::EventResponse.new(
            events_received: json_response_object.events_received,
            messages: json_response_object.messages,
            fbtrace_id: json_response_object.fbtrace_id
        )
      end

      def normalize
        normalized_events = []
        events.each do |event|
          normalized_events.push(JSON.generate(event.normalize))
        end
        normalized_events
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if @events.nil?
          invalid_properties.push('invalid value for "data", data cannot be nil.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return false if @events.nil?
        true
      end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            events == o.events &&
            test_event_code == o.test_event_code
            partner_agent == o.partner_agent
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [events, test_event_code, partner_agent].hash
      end

      def to_s
        hash = {}
        unless pixel_id.nil?
          hash['pixel_id'] = pixel_id
        end
        unless events.nil?
          hash['data'] = events
        end
        unless test_event_code.nil?
          hash['test_event_code'] = test_event_code
        end
        unless partner_agent.nil?
          hash['partner_agent'] = partner_agent
        end
        hash.to_s
      end
    end
  end
end

