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
    # CustomData includes additional business data about the event which is used for ads delivery optimization.
    class CustomData
      # A numeric value associated with this event. This could be a monetary value or a value in some other metric.
      # Example: 142.54.
      attr_accessor :value

      # The currency for the value specified, if applicable. Currency must be a valid ISO 4217 three digit currency code.
      # Example: 'usd'.
      attr_accessor :currency

      # The name of the page or product associated with the event.
      # Example: 'lettuce'.
      attr_accessor :content_name

      # The category of the content associated with the event.
      # Example: 'grocery'
      attr_accessor :content_category

      # The content IDs associated with the event, such as product SKUs for items in an
      # AddToCart event: ['ABC123', 'XYZ789']. If content_type is a product, then your content IDs
      # must be an array with a single string value. Otherwise, this array can contain any number of string values.
      attr_accessor :content_ids

      # An array of Content objects that contain the product IDs associated with the event
      # plus information about the products. id, quantity, and item_price are available fields.
      attr_accessor :contents

      # A String equal to either 'product' or 'product_group'. Set to product if the keys you send content_ids or
      # contents represent products. Set to product_group if the keys you send in content_ids represent product groups.
      attr_accessor :content_type

      # The order ID for this transaction as a String.
      # Example: 'order1234'.
      attr_accessor :order_id

      # The predicted lifetime value of a conversion event.
      # Example: 432.12.
      attr_accessor :predicted_ltv

      # Use only with InitiateCheckout events. The number of items that a user tries to buy during checkout.
      # Example: 4
      attr_accessor :num_items

      # Use only with CompleteRegistration events. The status of the registration event, as a String.
      # Example: 'registered'.
      attr_accessor :status

      # Use only with Search events. A search query made by a user.
      # Example: 'lettuce'.
      attr_accessor :search_string

      # Use for custom properties
      # Example: {'slug' => 'annual-pass'}
      attr_accessor :custom_properties


      # @param [Float] value
      # @param [String] currency
      # @param [String] content_name
      # @param [String] content_category
      # @param [Array<String>] content_ids
      # @param [Array<Content>] contents
      # @param [String] content_type
      # @param [String] order_id
      # @param [Float] predicted_ltv
      # @param [Integer] num_items
      # @param [String] status
      # @param [String] search_string
      def initialize(**data)

        unless data[:value].nil?
          self.value = data.delete(:value)
        end
        unless data[:currency].nil?
          self.currency = data.delete(:currency)
        end
        unless data[:content_name].nil?
          self.content_name = data.delete(:content_name)
        end
        unless data[:content_category].nil?
          self.content_category = data.delete(:content_category)
        end
        unless data[:content_ids].nil?
          self.content_ids = data.delete(:content_ids)
        end
        unless data[:contents].nil?
          self.contents = data.delete(:contents)
        end
        unless data[:content_type].nil?
          self.content_type = data.delete(:content_type)
        end
        unless data[:order_id].nil?
          self.order_id = data.delete(:order_id)
        end
        unless data[:predicted_ltv].nil?
          self.predicted_ltv = data.delete(:predicted_ltv)
        end
        unless data[:num_items].nil?
          self.num_items = data.delete(:num_items)
        end
        unless data[:status].nil?
          self.status = data.delete(:status)
        end
        unless data[:search_string].nil?
          self.search_string = data.delete(:search_string)
        end
        unless data.keys.empty?
          self.custom_properties = data
        end
      end


      # build the object using the input hash
      # @param [Hash] attributes  attributes in the form of hash
      def build(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'value')
          self.value = attributes[:'value']
        end

        if attributes.has_key?(:'currency')
          self.currency = attributes[:'currency']
        end

        if attributes.has_key?(:'content_name')
          self.content_name = attributes[:'content_name']
        end

        if attributes.has_key?(:'content_category')
          self.content_category = attributes[:'content_category']
        end

        if attributes.has_key?(:'content_ids')
          if (value = attributes[:'content_ids']).is_a?(Array)
            self.content_ids = value
          end
        end

        if attributes.has_key?(:'contents')
          if (value = attributes[:'contents']).is_a?(Array)
            self.contents = value
          end
        end

        if attributes.has_key?(:'content_type')
          self.content_type = attributes[:'content_type']
        end

        if attributes.has_key?(:'order_id')
          self.order_id = attributes[:'order_id']
        end

        if attributes.has_key?(:'predicted_ltv')
          self.predicted_ltv = attributes[:'predicted_ltv']
        end

        if attributes.has_key?(:'num_items')
          self.num_items = attributes[:'num_items']
        end

        if attributes.has_key?(:'status')
          self.status = attributes[:'status']
        end

        if attributes.has_key?(:'search_string')
          self.search_string = attributes[:'search_string']
        end

        if attributes.has_key?(:'custom_properties')
          self.custom_properties = attributes[:'custom_properties']
        end
      end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            value == o.value &&
            currency == o.currency &&
            content_name == o.content_name &&
            content_category == o.content_category &&
            content_ids == o.content_ids &&
            contents == o.contents &&
            content_type == o.content_type &&
            order_id == o.order_id &&
            predicted_ltv == o.predicted_ltv &&
            num_items == o.num_items &&
            status == o.status &&
            search_string == o.search_string &&
            custom_properties == o.custom_properties
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [
            value,
            currency,
            content_name,
            content_category,
            content_ids,
            contents,
            content_type,
            order_id,
            predicted_ltv,
            num_items,
            status,
            search_string,
            custom_properties
        ].hash
      end

      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        hash = {}
        unless value.nil?
          hash['value'] = value
        end
        unless currency.nil?
          hash['currency'] = currency
        end
        unless content_name.nil?
          hash['content_name'] = content_name
        end
        unless content_category.nil?
          hash['content_category'] = content_category
        end
        unless content_ids.nil?
          hash['content_ids'] = content_ids
        end
        unless contents.nil?
          hash['contents'] = contents.to_s
        end
        unless content_type.nil?
          hash['content_type'] = content_type
        end
        unless order_id.nil?
          hash['order_id'] = order_id
        end
        unless predicted_ltv.nil?
          hash['predicted_ltv'] = predicted_ltv
        end
        unless num_items.nil?
          hash['num_items'] = num_items
        end
        unless status.nil?
          hash['status'] = status
        end
        unless search_string.nil?
          hash['search_string'] = search_string
        end
        unless custom_properties.nil?
          hash['custom_properties'] = custom_properties
        end
        hash.to_s
      end


      # Normalize input fields to server request format.
      def normalize
        hash = {}
        unless value.nil?
          hash['value'] = value
        end
        unless currency.nil?
          hash['currency'] = FacebookAds::ServerSide::normalize(currency, 'currency')
        end
        unless content_name.nil?
          hash['content_name'] = content_name
        end
        unless content_category.nil?
          hash['content_category'] = content_category
        end
        unless content_ids.nil?
          hash['content_ids'] = content_ids
        end
        unless content_type.nil?
          hash['content_type'] = content_type
        end
        unless order_id.nil?
          hash['order_id'] = order_id
        end
        unless predicted_ltv.nil?
          hash['predicted_ltv'] = predicted_ltv
        end
        unless num_items.nil?
          hash['num_items'] = num_items
        end
        unless status.nil?
          hash['status'] = status
        end
        unless search_string.nil?
          hash['search_string'] = search_string
        end

        unless contents.nil?
          content_array = []
          contents.each do |content|
            content_array.push(content.normalize)
          end
          hash['contents'] = content_array
        end

        unless custom_properties.nil?
          hash = hash.merge(custom_properties.stringify_keys)
        end
        hash
      end

    end
  end
end
