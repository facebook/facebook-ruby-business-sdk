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

require 'digest'
require 'countries'
require 'money'
require 'time'

module FacebookAds
	module ServerSide
		class Util
			PHONE_NUMBER_IGNORE_CHAR_SET = /[\-\s\(\)]+/
			PHONE_NUMBER_DROP_PREFIX_ZEROS = /^\+?0{0,2}/
			US_PHONE_NUMBER_REGEX = /^1\(?\d{3}\)?\d{7}$/
			INTL_PHONE_NUMBER_REGEX = /^\d{1,4}\(?\d{2,3}\)?\d{4,}$/

			# RFC 2822 for email format
			EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

			# Normalizes the input array of strings given the field_type
			# @param [Array<String>] input string array that needs to be normalized
			# @param [String] field_type Type/Key for the value provided
			# @return [Array<String>] Normalized values for the input and field_type.
			def self.normalize_array(input_array, field_type)
				return nil unless input_array.is_a?(Enumerable)
				return nil if input_array.empty?
				return nil unless input_array.all?{|value| value.is_a?(String)}

				input_array
					.map{|value| self.normalize(value, field_type)}
					.to_set
					.to_a
			end

			# Normalizes the input string given the field_type
			# @param [String] input Input string that needs to be normalized
			# @param [String] field_type Type/Key for the value provided
			# @return [String] Normalized value for the input and field_type.
			def self.normalize(input, field_type)

				if input.nil? or field_type.nil?
					return nil;
				end

				input = input.strip.downcase

				# If the data is already hashed, we by-pass input normalization
				if is_already_hashed?(input) == true
					return input
				end

				normalized_input = input;

				case field_type
				when 'action_source'
					return normalize_action_source input
				when 'country'
					normalized_input = normalize_country input
				when 'ct'
					normalized_input = normalize_city input
				when 'currency'
					return normalize_currency input
				when 'delivery_category'
					return normalize_delivery_category input
				when 'em'
					normalized_input = normalize_email input
				when 'ge'
					normalized_input = normalize_gender input
				when 'ph'
					normalized_input = normalize_phone input
				when 'st'
					normalized_input = normalize_state input
				when 'zp'
					normalized_input = normalize_zip input
				when 'f5first'
					normalized_input = normalize_f5 input
				when 'f5last'
					normalized_input = normalize_f5 input
				when 'fi'
					normalized_input = normalize_fi input
				when 'dobd'
					normalized_input = normalize_dobd input
				when 'dobm'
					normalized_input = normalize_dobm input
				when 'doby'
					normalized_input = normalize_doby input
				end

				normalized_input = sha256Hash normalized_input

				return normalized_input
			end

			# @return [String] SHA 256 hash of input string
			def self.sha256Hash(input)
				unless input.nil?
					Digest::SHA256.hexdigest input
				end
			end

			# Boolean method which checks if a input is already hashed with MD5 or SHA256
			# @param [String] input Input string that is to be validated
			# @return [TrueClass|FalseClass] representing whether the value is hashed
			def self.is_already_hashed?(input)

				# We support Md5 and SHA256, and highly recommend users to use SHA256 for hashing PII keys.
				md5_match = /^[a-f0-9]{32}$/.match(input)
				sha256_match = /^[a-f0-9]{64}$/.match(input)

				if md5_match != nil or sha256_match != nil
					return true
				end

				return false
			end

			# Normalizes the given country code and returns acceptable hashed country ISO code
			def self.normalize_country(country)

				# Replace unwanted characters and retain only alpha characters bounded for ISO code.
				country = country.gsub(/[^a-z]/,'')
				iso_country = ISO3166::Country.search(country)
				if iso_country == nil
					raise ArgumentError, "Invalid format for country:'" + country + "'.Please follow ISO 2-letter ISO 3166-1 standard for representing country. eg: us"
				end

				return  country
			end

			# Normalizes the given city and returns acceptable hashed city value
		    def self.normalize_city(city)

		      # Remove commonly occuring characters from city name.
				city = city.gsub(/[0-9.\s\-()]/,'')

				return city
			end

			# Normalizes the given currency code and returns acceptable hashed currency ISO code
			def self.normalize_currency(currency)

				# Retain only alpha characters bounded for ISO code.
				currency = currency.gsub(/[^a-z]/,'')

				iso_currency = Money::Currency.find(currency)
				if iso_currency == nil
					raise ArgumentError, "Invalid format for currency:'" + currency + "'.Please follow ISO 3-letter ISO 4217 standard for representing currency. Eg: usd"
				end

				return currency;
			end

			# Normalizes the given email and returns acceptable hashed email value
			def self.normalize_email(email)

				if EMAIL_REGEX.match(email) == nil
					raise ArgumentError, "Invalid email format for the passed email: '#{email}'. Please check the passed email format."
				end

				return email
			end

			# Normalizes the given gender and returns acceptable hashed gender value
		    def self.normalize_gender(gender)

				# Replace extra characters with space, to bound under alpha characters set.
				gender = gender.gsub(/[^a-z]/,'')

				case gender
				when 'female' , 'f'
					gender = 'f'
				when 'male' , 'm'
					gender = 'm'
				else
					return nil
				end

				return gender
			end

			# Normalizes the given phone and returns acceptable hashed phone value
			def self.normalize_phone(phone)

				# Drop the spaces, hyphen and parenthesis from the Phone Number
				normalized_phone = phone.gsub(PHONE_NUMBER_IGNORE_CHAR_SET, '')

				if(is_international_number?(normalized_phone))
					normalized_phone = normalized_phone.gsub(PHONE_NUMBER_DROP_PREFIX_ZEROS, '')
				end

				if normalized_phone.length < 7 || normalized_phone.length > 15
					return nil;
				end

				return normalized_phone
			end

			# Normalizes the given state and returns acceptable hashed state value
			def self.normalize_state(state)
				state = state.gsub(/[0-9.\s\-()]/,'')

				return state
			end

			# Normalizes the given zip and returns acceptable hashed zip code value
			def self.normalize_zip(zip)

				# Remove spaces from the Postal code
				zip = zip.gsub(/[\s]/,'')

				# If the zip code '-', we retain just the first part alone.
				zip = zip.split('-')[0]

				if zip.length < 2
					return nil
				end

				return zip
			end

			# Boolean method which checks if a given number is represented in international format
			# @param [String] phone_number that has to be tested.
			# @return [TrueClass | FalseClass] boolean value representing if a number is international
			def self.is_international_number?(phone_number)

				# Drop upto 2 leading 0s from the number
				phone_number = phone_number.gsub(PHONE_NUMBER_DROP_PREFIX_ZEROS, '')

				if phone_number.start_with?('0')
					return false;
				end

				if phone_number.start_with?('1') && US_PHONE_NUMBER_REGEX.match(phone_number) != nil
					return false;
				end

				if INTL_PHONE_NUMBER_REGEX.match(phone_number) != nil
					return true;
				end

				return false;
			end

			def self.normalize_f5(input)
				input[0, 5]
			end

			def self.normalize_fi(fi)
				fi[0, 1]
			end

			def self.normalize_dobd(dobd)
				if dobd.length == 1
					dobd = '0' + dobd
				end

				dobd_int = dobd.to_i
				if dobd.length > 2 or dobd_int < 1 or dobd_int > 31
					raise ArgumentError.new("Invalid dobd format: '#{dobd}'. Please pass in a valid date of birth day in 'DD' format.")
				end

				return dobd
			end

			def self.normalize_dobm(dobm)
				if dobm.length == 1
					dobm = '0' + dobm
				end

				dobm_int = dobm.to_i
				if dobm.length > 2 or dobm_int < 1 or dobm_int > 12
					raise ArgumentError.new("Invalid dobm format: '#{dobm}'. Please pass in a valid date of birth month in 'MM' format.")
				end

				return dobm
			end

			def self.normalize_doby(doby)
				unless doby.match("^[0-9]{4}$")
					raise ArgumentError.new("Invalid doby format: '#{doby}'. Please pass in a valid birth year in 'YYYY' format.")
				end
				doby
			end

			# Normalizes the input delivery category and returns valid value (or throw exception if invalid).
			def self.normalize_delivery_category(delivery_category)

				unless FacebookAds::ServerSide::DeliveryCategory.include?(delivery_category)
					raise ArgumentError.new("Invalid delivery_category passed: " + delivery_category + ". Please use one of the defined values #{FacebookAds::ServerSide::DeliveryCategory.to_a.join(',')}" )
				end

				delivery_category;
			end

			# Normalizes the input action_source and returns valid value (or throw exception if invalid).
			def self.normalize_action_source(action_source)
				unless FacebookAds::ServerSide::ActionSource.include?(action_source)
					values = FacebookAds::ServerSide::ActionSource.to_a.join(',')
					raise ArgumentError.new(
						"Invalid action_source passed: #{action_source}. Please use one of the defined values: #{values}"
					)
				end

				action_source
			end
		end
	end
end
