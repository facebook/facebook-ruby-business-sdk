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

      # OriginalEventData contains original event info used for attribution passback event or generalized value optimization(GVO).
      class OriginalEventData

        # A Facebook pixel Standard Event or Custom Event name.
        # This is used with event_id to determine if events are identical.
        attr_accessor :event_name

        # A Unix timestamp in seconds indicating when the original event occurred.
        attr_accessor :event_time

        # The order ID for this transaction as a string.
        attr_accessor :order_id

        # A unique string chosen by the advertiser.
        attr_accessor :event_id

        # @param [String] event_name
        # @param [int] event_time
        # @param [String] order_id
        # @param [String] event_id
        def initialize(event_name: nil, event_time: nil, order_id: nil, event_id: nil)
          unless event_name.nil?
            self.event_name = event_name
          end
          unless event_time.nil?
            self.event_time = event_time
          end
          unless order_id.nil?
            self.order_id = order_id
          end
          unless event_id.nil?
            self.event_id = event_id
          end
        end

        # build the object using the input hash
        # @param [Hash] attributes  attributes in the form of hash
        def build(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

          if attributes.has_key?(:'event_name')
            self.event_name = attributes[:'event_name']
          end

          if attributes.has_key?(:'event_time')
            self.event_time = attributes[:'event_time']
          end

          if attributes.has_key?(:'order_id')
            self.order_id = attributes[:'order_id']
          end

          if attributes.has_key?(:'event_id')
            self.event_id = attributes[:'event_id']
          end
        end

        # Checks equality by comparing each attribute.
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              event_name == o.event_name &&
              event_time == o.event_time &&
              order_id == o.order_id &&
              event_id == o.event_id
        end

        # @see the `==` method
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [
            event_name, event_time, order_id, event_id,
          ].hash
        end

        def to_s
          hash = {}
          unless event_name.nil?
            hash['event_name'] = event_name
          end
          unless event_time.nil?
            hash['event_time'] = event_time
          end
          unless order_id.nil?
            hash['order_id'] = order_id
          end
          unless event_id.nil?
            hash['event_id'] = event_id
          end
          hash.to_s
        end


        # Normalize input fields to server request format.
        def normalize
          hash = {}
          unless event_name.nil?
            hash['event_name'] = event_name
          end
          unless event_time.nil?
            hash['event_time'] = event_time
          end
          unless order_id.nil?
            hash['order_id'] = order_id
          end
          unless event_id.nil?
            hash['event_id'] = event_id
          end
          hash
        end

      end
    end
  end
