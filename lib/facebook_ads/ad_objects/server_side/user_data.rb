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

    # UserData is a set of identifiers Facebook can use for targeted attribution
    class UserData

      # An email address, in lowercase.
      # Example: joe@eg.com
      attr_accessor :email

      # A phone number. Include only digits with country code, area code, and number.
      # Example: 16505551212
      attr_accessor :phone

      # Gender, in lowercase. Either f or m.
      attr_accessor :gender

      # A date of birth given as year, month, and day.
      # Format should be 'YYYYMMDD'
      # Example: 19971226 for December 26, 1997.
      attr_accessor :date_of_birth

      # A last name in lowercase.
      # Example: smith
      attr_accessor :last_name

      # A first name in lowercase.
      # Example: joe
      attr_accessor :first_name

      # A city in lower-case without spaces or punctuation.
      # Example: menlopark
      attr_accessor :city

      # A two-letter country code in lowercase.
      # Example: us
      attr_accessor :country_code

      # A two-letter state code in lowercase.
      # Example: ca
      attr_accessor :state

      # A five-digit zip code for United States.
      # For other locations, follow each country's standards.
      # Example: 94035 (for United States)
      attr_accessor :zip_code

      # Any unique ID from the advertiser, such as loyalty membership IDs, user IDs, and external cookie IDs.
      # In the Offline Conversions API (https://www.facebook.com/business/help/104039186799009),
      # this is known as extern_id. For more information, see Offline Conversions, Providing External IDs.
      # If External ID is being sent via other channels, then it should be sent in the same format
      # via the server-side API.
      attr_accessor :external_id

      # The IP address of the browser corresponding to the event.
      attr_accessor :client_ip_address

      # The user agent for the browser corresponding to the event.
      attr_accessor :client_user_agent

      # The Facebook click ID value stored in the _fbc browser cookie under your domain.
      # See Managing fbc and fbp Parameters for how to get this value
      # (https://developers.facebook.com/docs/marketing-api/facebook-pixel/server-side-api/parameters#fbc),
      # or generate this value from a fbclid query parameter.
      attr_accessor :fbc

      # The Facebook browser ID value stored in the _fbp browser cookie under your domain.
      # See Managing fbc and fbp Parameters for how to get this value
      # (https://developers.facebook.com/docs/marketing-api/facebook-pixel/server-side-api/parameters#fbc),
      # or generate this value from a fbclid query parameter.
      attr_accessor :fbp

      # The subscription ID for the user in this transaction. This is similar to the order ID for an individual product.
      attr_accessor :subscription_id

      #UserData is a set of identifiers Facebook can use for targeted attribution
      # @param [String] email
      # @param [String] phone
      # @param [String] gender
      # @param [String] date_of_birth
      # @param [String] last_name
      # @param [String] first_name
      # @param [String] city
      # @param [String] state
      # @param [String] country_code
      # @param [String] zip_code
      # @param [String] external_id
      # @param [String] client_ip_address
      # @param [String] client_user_agent
      # @param [String] fbc
      # @param [String] fbp
      # @param [String] subscription_id
      def initialize(email: nil, phone: nil, gender: nil, date_of_birth: nil,
                     last_name: nil, first_name: nil, city: nil, state: nil,
                     country_code: nil, zip_code: nil, external_id: nil, client_ip_address: nil,
                     client_user_agent: nil, fbc: nil, fbp: nil, subscription_id: nil)
        unless email.nil?
          self.email = email
        end
        unless phone.nil?
          self.phone = phone
        end
        unless gender.nil?
          self.gender = gender
        end
        unless date_of_birth.nil?
          self.date_of_birth = date_of_birth
        end
        unless last_name.nil?
          self.last_name = last_name
        end
        unless first_name.nil?
          self.first_name = first_name
        end
        unless city.nil?
          self.city = city
        end
        unless state.nil?
          self.state = state
        end
        unless country_code.nil?
          self.country_code = country_code
        end
        unless zip_code.nil?
          self.zip_code = zip_code
        end
        unless external_id.nil?
          self.external_id = external_id
        end
        unless client_ip_address.nil?
          self.client_ip_address = client_ip_address
        end
        unless client_user_agent.nil?
          self.client_user_agent = client_user_agent
        end
        unless fbc.nil?
          self.fbc = fbc
        end
        unless fbp.nil?
          self.fbp = fbp
        end
        unless subscription_id.nil?
          self.subscription_id = subscription_id
        end
      end

      # build the object using the input hash
      # @param [Hash] attributes  attributes in the form of hash
      def build(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'email')
          self.email = attributes[:'email']
        end

        if attributes.has_key?(:'phone')
          self.phone = attributes[:'phone']
        end

        if attributes.has_key?(:'gender')
          self.gender = attributes[:'gender']
        end

        if attributes.has_key?(:'date_of_birth')
          self.date_of_birth = attributes[:'date_of_birth']
        end

        if attributes.has_key?(:'last_name')
          self.last_name = attributes[:'last_name']
        end

        if attributes.has_key?(:'first_name')
          self.first_name = attributes[:'first_name']
        end

        if attributes.has_key?(:'city')
          self.city = attributes[:'city']
        end

        if attributes.has_key?(:'country_code')
          self.country_code = attributes[:'country_code']
        end

        if attributes.has_key?(:'state')
          self.state = attributes[:'state']
        end

        if attributes.has_key?(:'zip_code')
          self.zip_code = attributes[:'zip_code']
        end

        if attributes.has_key?(:'external_id')
          self.external_id = attributes[:'external_id']
        end

        if attributes.has_key?(:'client_ip_address')
          self.client_ip_address = attributes[:'client_ip_address']
        end

        if attributes.has_key?(:'client_user_agent')
          self.client_user_agent = attributes[:'client_user_agent']
        end

        if attributes.has_key?(:'fbc')
          self.fbc = attributes[:'fbc']
        end

        if attributes.has_key?(:'fbp')
          self.fbp = attributes[:'fbp']
        end

        if attributes.has_key?(:'subscription_id')
          self.subscription_id = attributes[:'subscription_id']
        end
      end

      # Checks equality by comparing each attribute.
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            email == o.email &&
            phone == o.phone &&
            gender == o.gender &&
            date_of_birth == o.date_of_birth &&
            last_name == o.last_name &&
            first_name == o.first_name &&
            city == o.city &&
            country_code == o.country_code &&
            state == o.state &&
            zip_code == o.zip_code &&
            external_id == o.external_id &&
            client_ip_address == o.client_ip_address &&
            client_user_agent == o.client_user_agent &&
            fbc == o.fbc &&
            fbp == o.fbp &&
            subscription_id == o.subscription_id
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [
            email,
            phone,
            gender,
            date_of_birth,
            last_name,
            first_name,
            city,
            country_code,
            state,
            zip_code,
            external_id,
            client_ip_address,
            client_user_agent,
            fbc,
            fbp,
            subscription_id
        ].hash

      end

      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        hash = {}
        unless email.nil?
          hash['email'] = email
        end
        unless phone.nil?
          hash['phone'] = phone
        end
        unless gender.nil?
          hash['gender'] = gender
        end
        unless date_of_birth.nil?
          hash['date_of_birth'] = date_of_birth
        end
        unless last_name.nil?
          hash['last_name'] = last_name
        end
        unless first_name.nil?
          hash['first_name'] = first_name
        end
        unless city.nil?
          hash['city'] = city
        end
        unless country_code.nil?
          hash['country_code'] = country_code
        end
        unless state.nil?
          hash['state'] = state
        end
        unless zip_code.nil?
          hash['zip_code'] = zip_code
        end
        unless external_id.nil?
          hash['external_id'] = external_id
        end
        unless client_ip_address.nil?
          hash['client_ip_address'] = client_ip_address
        end
        unless client_user_agent.nil?
          hash['client_user_agent'] = client_user_agent
        end
        unless fbc.nil?
          hash['fbc'] = fbc
        end
        unless fbp.nil?
          hash['fbp'] = fbp
        end
        unless subscription_id.nil?
          hash['subscription_id'] = subscription_id
        end
        hash.to_s
      end


      # Normalize input fields to server request format.
      def normalize
        hash = {}
        unless email.nil?
          hash['em'] = FacebookAds::ServerSide::Util.normalize(email, 'em')
        end
        unless phone.nil?
          hash['ph'] = FacebookAds::ServerSide::Util.normalize(phone, 'ph')
        end
        unless gender.nil?
          hash['ge'] = FacebookAds::ServerSide::Util.normalize(gender, 'ge')
        end
        unless date_of_birth.nil?
          hash['db'] = FacebookAds::ServerSide::Util.normalize(date_of_birth, 'db')
        end
        unless last_name.nil?
          hash['ln'] = FacebookAds::ServerSide::Util.normalize(last_name, 'ln')
        end
        unless first_name.nil?
          hash['fn'] = FacebookAds::ServerSide::Util.normalize(first_name, 'fn')
        end
        unless city.nil?
          hash['ct'] = FacebookAds::ServerSide::Util.normalize(city, 'ct')
        end
        unless country_code.nil?
          hash['country'] = FacebookAds::ServerSide::Util.normalize(country_code, 'country')
        end
        unless state.nil?
          hash['st'] = FacebookAds::ServerSide::Util.normalize(state, 'st')
        end
        unless zip_code.nil?
          hash['zp'] = FacebookAds::ServerSide::Util.normalize(zip_code, 'zp')
        end
        unless external_id.nil?
          hash['external_id'] = external_id
        end
        unless client_ip_address.nil?
          hash['client_ip_address'] = client_ip_address
        end
        unless client_user_agent.nil?
          hash['client_user_agent'] = client_user_agent
        end
        unless fbc.nil?
          hash['fbc'] = fbc
        end
        unless fbp.nil?
          hash['fbp'] = fbp
        end
        unless subscription_id.nil?
          hash['subscription_id'] = subscription_id
        end
        hash
      end
    end
  end
end
