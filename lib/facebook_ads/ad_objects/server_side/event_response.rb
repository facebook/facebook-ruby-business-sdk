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


module FacebookAds
  module ServerSide
    class EventResponse

      # number of events received.
      attr_accessor :events_received

      # Response message
      attr_accessor :messages

      # Facebook API trace id
      attr_accessor :fbtrace_id

      # @param [String] events_received
      # @param [Array()String)] messages
      # @param [String] fbtrace_id
      def initialize(events_received: nil, messages: nil, fbtrace_id: nil)
        unless events_received.nil?
          self.events_received = events_received
        end
        unless messages.nil?
          self.messages = messages
        end
        unless fbtrace_id.nil?
          self.fbtrace_id = fbtrace_id
        end
      end

      # build the object using the input hash
      # @param [Hash] attributes  attributes in the form of hash
      def build(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'events_received')
          self.events_received = attributes[:'events_received']
        end

        if attributes.has_key?(:'messages')
          if (value = attributes[:'messages']).is_a?(Array)
            self.messages = value
          end
        end

        if attributes.has_key?(:'fbtrace_id')
          self.fbtrace_id = attributes[:'fbtrace_id']
        end
      end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            events_received == o.events_received &&
            messages == o.messages &&
            fbtrace_id == o.fbtrace_id
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [events_received, messages, fbtrace_id].hash
      end

      def to_s
        hash = {}
        unless events_received.nil?
          hash['events_received'] = events_received
        end
        unless messages.nil?
          hash['messages'] = messages
        end
        unless fbtrace_id.nil?
          hash['fbtrace_id'] = fbtrace_id
        end
        hash.to_s
      end
    end
  end
end
