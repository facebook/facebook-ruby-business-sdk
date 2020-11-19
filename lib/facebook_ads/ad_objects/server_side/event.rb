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

require_relative './user_data'
require_relative './custom_data'

module FacebookAds
  module ServerSide

    # Server Side Event object.
    class Event

      # A Facebook pixel Standard Event or Custom Event name.
      # This is used with event_id to determine if events are identical.
      attr_accessor :event_name

      # A Unix timestamp in seconds indicating when the actual event occurred.
      attr_accessor :event_time

      # The browser URL where the event happened.
      attr_accessor :event_source_url

      # A flag that indicates we should not use this event for ads delivery optimization.
      # If set to true, we only use the event for attribution.
      attr_accessor :opt_out

      # This ID can be any unique string chosen by the advertiser.
      # event_id is used to deduplicate events sent by both Facebook Pixel and
      # Server-Side API. event_name is also used in the deduplication process.
      # For deduplication, the eventID from Facebook pixel must match the
      # event_id in the corresponding Server-Side API event.
      attr_accessor :event_id

      # An Object that contains user data.
      attr_accessor :user_data

      # An Object that includes additional business data about the event.
      attr_accessor :custom_data

      # Processing options you would like to enable for a specific event.
      # For more details see https://developers.facebook.com/docs/marketing-apis/data-processing-options
      attr_accessor :data_processing_options

      # A country that you want to associate to this data processing option
      # For more details see https://developers.facebook.com/docs/marketing-apis/data-processing-options
      attr_accessor :data_processing_options_country

      # A state that you want to associate with this data processing option.
      # For more details see https://developers.facebook.com/docs/marketing-apis/data-processing-options
      attr_accessor :data_processing_options_state

      # @param [String] event_name
      # @param [int] event_time
      # @param [String] event_source_url
      # @param [Boolean] opt_out
      # @param [String] event_id
      # @param [FacebookAds::ServerSide::UserData] user_data
      # @param [FacebookAds::ServerSide::CustomData] custom_data
      # @param [Array<String>] data_processing_options
      # @param [int] data_processing_options_country
      # @param [int] data_processing_options_state
      def initialize(event_name: nil,
                     event_time: nil,
                     event_source_url: nil,
                     opt_out: nil,
                     event_id: nil,
                     user_data: nil,
                     custom_data: nil,
                     data_processing_options: nil,
                     data_processing_options_country: nil,
                     data_processing_options_state: nil)

        unless event_name.nil?
          self.event_name = event_name
        end
        unless event_time.nil?
          self.event_time = event_time
        end
        unless event_source_url.nil?
          self.event_source_url = event_source_url
        end
        unless opt_out.nil?
          self.opt_out = opt_out
        end
        unless event_id.nil?
          self.event_id = event_id
        end
        unless user_data.nil?
          self.user_data = user_data
        end
        unless custom_data.nil?
          self.custom_data = custom_data
        end
        unless data_processing_options.nil?
          self.data_processing_options = data_processing_options
        end
        unless data_processing_options_country.nil?
          self.data_processing_options_country = data_processing_options_country
        end
        unless data_processing_options_state.nil?
          self.data_processing_options_state = data_processing_options_state
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

        if attributes.has_key?(:'event_source_url')
          self.event_source_url = attributes[:'event_source_url']
        end

        if attributes.has_key?(:'opt_out')
          self.opt_out = attributes[:'opt_out']
        end

        if attributes.has_key?(:'event_id')
          self.event_id = attributes[:'event_id']
        end

        if attributes.has_key?(:'user_data')
          self.user_data = attributes[:'user_data']
        end

        if attributes.has_key?(:'custom_data')
          self.custom_data = attributes[:'custom_data']
        end

        if attributes.has_key?(:'data_processing_options')
          self.custom_data = attributes[:'data_processing_options']
        end

        if attributes.has_key?(:'data_processing_options_country')
          self.custom_data = attributes[:'data_processing_options_country']
        end

        if attributes.has_key?(:'data_processing_options_state')
          self.custom_data = attributes[:'data_processing_options_state']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if @event_name.nil?
          invalid_properties.push('invalid value for "event_name", event_name cannot be nil.')
        end

        if @event_time.nil?
          invalid_properties.push('invalid value for "event_time", event_time cannot be nil.')
        end

        if @user_data.nil?
          invalid_properties.push('invalid value for "user_data", user_data cannot be nil.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return false if @event_name.nil?
        return false if @event_time.nil?
        return false if @user_data.nil?
        true
      end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            event_name == o.event_name &&
            event_time == o.event_time &&
            event_source_url == o.event_source_url &&
            opt_out == o.opt_out &&
            event_id == o.event_id &&
            user_data == o.user_data &&
            custom_data == o.custom_data &&
            data_processing_options == o.data_processing_options &&
            data_processing_options_country == o.data_processing_options_country &&
            data_processing_options_state == o.data_processing_options_state
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [event_name, event_time, event_source_url, opt_out, event_id, user_data, custom_data, data_processing_options, data_processing_options_country, data_processing_options_state].hash
      end

      def to_s
        hash = {}
        unless event_name.nil?
          hash['event_name'] = event_name
        end
        unless event_time.nil?
          hash['event_time'] = event_time
        end
        unless event_source_url.nil?
          hash['event_source_url'] = event_source_url
        end
        unless opt_out.nil?
          hash['opt_out'] = opt_out
        end
        unless event_id.nil?
          hash['event_id'] = event_id
        end
        unless user_data.nil?
          hash['user_data'] = user_data.to_s
        end
        unless custom_data.nil?
          hash['custom_data'] = custom_data.to_s
        end
        unless data_processing_options.nil?
          hash['data_processing_options'] = data_processing_options.to_s
        end
        unless data_processing_options_country.nil?
          hash['data_processing_options_country'] = data_processing_options_country.to_s
        end
        unless data_processing_options_state.nil?
          hash['data_processing_options_state'] = data_processing_options_state.to_s
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
        unless event_source_url.nil?
          hash['event_source_url'] = event_source_url
        end
        unless opt_out.nil?
          hash['opt_out'] = opt_out
        end
        unless event_id.nil?
          hash['event_id'] = event_id
        end
        unless user_data.nil?
          hash['user_data'] = user_data.normalize
        end
        unless custom_data.nil?
          hash['custom_data'] = custom_data.normalize
        end
        unless data_processing_options.nil?
          hash['data_processing_options'] = data_processing_options
        end
        unless data_processing_options_country.nil?
          hash['data_processing_options_country'] = data_processing_options_country
        end
        unless data_processing_options_state.nil?
          hash['data_processing_options_state'] = data_processing_options_state
        end
        hash
      end

    end
  end
end
