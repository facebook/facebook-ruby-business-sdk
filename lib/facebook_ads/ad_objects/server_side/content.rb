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
    # Content object contains information about the products.
    class Content

      attr_accessor :product_id,
                    :quantity,
                    :item_price,
                    :title,
                    :description,
                    :brand,
                    :category

      # Initializes the object
      # @param [String] product_id
      # @param [Integer] quantity
      # @param [Float] item_price
      # @param [String] title
      # @param [String] description
      # @param [String] brand
      # @param [String] category
      def initialize(product_id: nil, quantity: nil, item_price: nil, title: nil, description: nil, brand: nil, category: nil)
        unless product_id.nil?
          self.product_id = String(product_id)
        end
        unless quantity.nil?
          self.quantity = Integer(quantity)
        end
        unless item_price.nil?
          self.item_price = Float(item_price)
        end
        unless title.nil?
          self.title = String(title)
        end
        unless description.nil?
          self.description = String(description)
        end
        unless brand.nil?
          self.brand = String(brand)
        end
        unless category.nil?
          self.category = String(category)
        end
      end

      # build the object using the input hash
      # @param [Hash] attributes  attributes in the form of hash
      def build(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'product_id')
          self.product_id = attributes[:'product_id']
        end

        if attributes.has_key?(:'quantity')
          self.quantity = attributes[:'quantity']
        end

        if attributes.has_key?(:'item_price')
          self.item_price = attributes[:'item_price']
        end

        if attributes.has_key?(:'title')
          self.title = attributes[:'title']
        end

        if attributes.has_key?(:'description')
          self.description = attributes[:'description']
        end

        if attributes.has_key?(:'brand')
          self.brand = attributes[:'brand']
        end

        if attributes.has_key?(:'category')
          self.category = attributes[:'category']
        end
      end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            product_id == o.product_id &&
            quantity == o.quantity &&
            item_price == o.item_price
            title == o.title
            description == o.description
            brand == o.brand
            category == o.category
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [
            product_id,
            quantity,
            item_price,
            title,
            description,
            brand,
            category
        ].hash
      end


      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        hash = {}
        unless product_id.nil?
          hash['product_id'] = product_id
        end
        unless quantity.nil?
          hash['quantity'] = quantity
        end
        unless item_price.nil?
          hash['item_price'] = item_price
        end
        unless title.nil?
          hash['title'] = title
        end
        unless description.nil?
          hash['description'] = description
        end
        unless brand.nil?
          hash['brand'] = brand
        end
        unless category.nil?
          hash['category'] = category
        end
        hash.to_s
      end

      # Normalize input fields to server request format.
      def normalize
        hash = {}
        unless product_id.nil?
          hash['id'] = product_id
        end
        unless quantity.nil?
          hash['quantity'] = quantity
        end
        unless item_price.nil?
          hash['item_price'] = item_price
        end
        unless title.nil?
          hash['title'] = title
        end
        unless description.nil?
          hash['description'] = description
        end
        unless brand.nil?
          hash['brand'] = brand
        end
        unless category.nil?
          hash['category'] = category
        end
        hash
      end
    end
  end
end
