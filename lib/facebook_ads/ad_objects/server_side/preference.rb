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

    # Preference is an allowlist specifying which fields are allowed to be
    # automatically set on the CAPI event from the request context object.
    # All fields default to true.
    class Preference

      # Whether fbc is allowed to be set from the request context.
      attr_accessor :is_fbc_allowed

      # Whether fbp is allowed to be set from the request context.
      attr_accessor :is_fbp_allowed

      # Whether client_ip_address is allowed to be set from the request context.
      attr_accessor :is_client_ip_address_allowed

      # Whether referrer_url is allowed to be set from the request context.
      attr_accessor :is_referrer_url_allowed

      # @param [Boolean] is_fbc_allowed                  (default: true)
      # @param [Boolean] is_fbp_allowed                  (default: true)
      # @param [Boolean] is_client_ip_address_allowed    (default: true)
      # @param [Boolean] is_referrer_url_allowed         (default: true)
      def initialize(is_fbc_allowed: true,
                     is_fbp_allowed: true,
                     is_client_ip_address_allowed: true,
                     is_referrer_url_allowed: true)
        self.is_fbc_allowed = is_fbc_allowed
        self.is_fbp_allowed = is_fbp_allowed
        self.is_client_ip_address_allowed = is_client_ip_address_allowed
        self.is_referrer_url_allowed = is_referrer_url_allowed
      end

      # build the object using the input hash
      # @param [Hash] attributes  attributes in the form of hash
      def build(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'is_fbc_allowed')
          self.is_fbc_allowed = attributes[:'is_fbc_allowed']
        end

        if attributes.has_key?(:'is_fbp_allowed')
          self.is_fbp_allowed = attributes[:'is_fbp_allowed']
        end

        if attributes.has_key?(:'is_client_ip_address_allowed')
          self.is_client_ip_address_allowed = attributes[:'is_client_ip_address_allowed']
        end

        if attributes.has_key?(:'is_referrer_url_allowed')
          self.is_referrer_url_allowed = attributes[:'is_referrer_url_allowed']
        end
      end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            is_fbc_allowed == o.is_fbc_allowed &&
            is_fbp_allowed == o.is_fbp_allowed &&
            is_client_ip_address_allowed == o.is_client_ip_address_allowed &&
            is_referrer_url_allowed == o.is_referrer_url_allowed
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [
          is_fbc_allowed, is_fbp_allowed,
          is_client_ip_address_allowed, is_referrer_url_allowed,
        ].hash
      end

      def to_s
        {
          'is_fbc_allowed' => is_fbc_allowed,
          'is_fbp_allowed' => is_fbp_allowed,
          'is_client_ip_address_allowed' => is_client_ip_address_allowed,
          'is_referrer_url_allowed' => is_referrer_url_allowed,
        }.to_s
      end

      # Normalize input fields to a hash.
      def normalize
        {
          'is_fbc_allowed' => is_fbc_allowed,
          'is_fbp_allowed' => is_fbp_allowed,
          'is_client_ip_address_allowed' => is_client_ip_address_allowed,
          'is_referrer_url_allowed' => is_referrer_url_allowed,
        }
      end

    end
  end
end
