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

    # AttributionSetting contains attribution window settings used for attribution.
    class AttributionSetting

      # Inactivity window in hours.
      attr_accessor :inactivity_window_hours

      # Reattribution window in hours.
      attr_accessor :reattribution_window_hours


      # @param [Integer] inactivity_window_hours
      # @param [Integer] reattribution_window_hours
      def initialize(inactivity_window_hours: nil, reattribution_window_hours: nil)
        unless inactivity_window_hours.nil?
          self.inactivity_window_hours = inactivity_window_hours
        end
        unless reattribution_window_hours.nil?
          self.reattribution_window_hours = reattribution_window_hours
        end
      end

      # build the object using the input hash
      # @param [Hash] attributes  attributes in the form of hash
      def build(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'inactivity_window_hours')
          self.inactivity_window_hours = attributes[:'inactivity_window_hours']
        end

        if attributes.has_key?(:'reattribution_window_hours')
          self.reattribution_window_hours = attributes[:'reattribution_window_hours']
        end
      end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            inactivity_window_hours == o.inactivity_window_hours &&
            reattribution_window_hours == o.reattribution_window_hours
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [
          inactivity_window_hours, reattribution_window_hours
        ].hash
      end

      def to_s
        hash = {}
        unless inactivity_window_hours.nil?
          hash['inactivity_window_hours'] = inactivity_window_hours
        end
        unless reattribution_window_hours.nil?
          hash['reattribution_window_hours'] = reattribution_window_hours
        end
        hash.to_s
      end


      # Normalize input fields to server request format.
      def normalize
        hash = {}
        unless inactivity_window_hours.nil?
          hash['inactivity_window_hours'] = inactivity_window_hours
        end
        unless reattribution_window_hours.nil?
          hash['reattribution_window_hours'] = reattribution_window_hours
        end
        hash
      end

    end
  end
end
