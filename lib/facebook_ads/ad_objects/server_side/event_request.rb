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

      # Scope used to resolve extern_id or Third-party ID. Can be another data set or data partner ID.
      attr_accessor :namespace_id

      # Unique id used to denote the current set being uploaded.
      attr_accessor :upload_id

      # Tag string added to track your Offline event uploads.
      attr_accessor :upload_tag

      # The origin/source of data for the dataset to be uploaded.
      attr_accessor :upload_source

      # Access token to use for AdObject Session
      attr_accessor :access_token

      # The HttpServiceInterface client to use for executing the request.
      attr_accessor :http_service_client

      # @param [String] pixel_id
      # @param [Array(FacebookAds::ServerSide::Event)] events
      # @param [String] test_event_code
      # @param [String] partner_agent
      # @param [String] namespace_id
      # @param [String] upload_id
      # @param [String] upload_tag
      # @param [String] upload_source
      # @param [String] access_token
      # @param [HttpServiceInterface] http_service_client
      def initialize(pixel_id: nil, events: nil, test_event_code: nil, partner_agent: nil,
          namespace_id: nil, upload_id: nil, upload_tag: nil, upload_source: nil,
          access_token: nil, http_service_client: nil)
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
        unless namespace_id.nil?
          self.namespace_id = namespace_id
        end
        unless upload_id.nil?
          self.upload_id = upload_id
        end
        unless upload_tag.nil?
          self.upload_tag = upload_tag
        end
        unless upload_source.nil?
          self.upload_source = upload_source
        end
        unless access_token.nil?
          self.access_token = access_token
        end
        unless http_service_client.nil?
          self.http_service_client = http_service_client
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

        if attributes.has_key?(:'namespace_id')
          self.namespace_id = attributes[:'namespace_id']
        end

        if attributes.has_key?(:'upload_id')
          self.upload_id = attributes[:'upload_id']
        end

        if attributes.has_key?(:'upload_tag')
          self.upload_tag = attributes[:'upload_tag']
        end

        if attributes.has_key?(:'upload_source')
          self.upload_source = attributes[:'upload_source']
        end

        if attributes.has_key?(:'http_service_client')
          self.http_service_client = attributes[:'http_service_client']
        end
      end

      # Execute request
      def execute
        unless valid?
          raise list_invalid_properties
        end

        if http_service_client
          return execute_with_client(http_service_client)
        end
        params = get_params()
        params[:data] = normalize
        session = FacebookAds::Session.new(access_token: access_token) if access_token
        ads_pixel = FacebookAds::AdsPixel.get(pixel_id, session)
        response = ads_pixel.events.create(params)
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

      def get_params
        params = {}
        params[:test_event_code] = test_event_code unless test_event_code.nil?
        params[:partner_agent] = partner_agent unless partner_agent.nil?
        params[:namespace_id] = namespace_id unless namespace_id.nil?
        params[:upload_id] = upload_id unless upload_id.nil?
        params[:upload_tag] = upload_tag unless upload_tag.nil?
        params[:upload_source] = upload_source unless upload_source.nil?
        params
      end

      def execute_with_client http_client
        url = [
          "https://#{FacebookAds::DEFAULT_HOST}",
          FacebookAds::DEFAULT_API_VERSION,
          pixel_id,
          'events',
        ].join('/')
        headers = {
          'User-Agent' => "fbbizsdk-ruby-v#{FacebookAds::VERSION}"
        }
        params = get_params
        params[:data] = events.map(&:normalize)
        appsecret = FacebookAds.config.app_secret
        access_token = FacebookAds.config.access_token
        params[:access_token] = access_token
        if appsecret
          params[:appsecret_proof] = FacebookAds::ServerSide::HttpUtil.appsecret_proof(appsecret, access_token)
        end

        http_client.execute(
          url,
          FacebookAds::ServerSide::HttpMethod::POST,
          headers,
          params
        )
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
            pixel_id == o.pixel_id &&
            events == o.events &&
            test_event_code == o.test_event_code &&
            partner_agent == o.partner_agent &&
            namespace_id == o.namespace_id &&
            upload_id == o.upload_id &&
            upload_tag == o.upload_tag &&
            upload_source == o.upload_source &&
            http_service_client == o.http_service_client
      end

      # @see the `==` method
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [
          pixel_id,
          events,
          test_event_code,
          partner_agent,
          namespace_id,
          upload_id,
          upload_tag,
          upload_source,
          http_service_client,
        ].hash
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
        unless namespace_id.nil?
          hash['namespace_id'] = namespace_id
        end
        unless upload_id.nil?
          hash['upload_id'] = upload_id
        end
        unless upload_tag.nil?
          hash['upload_tag'] = upload_tag
        end
        unless upload_source.nil?
          hash['upload_source'] = upload_source
        end
        hash.to_s
      end
    end
  end
end
