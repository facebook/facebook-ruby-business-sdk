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
require 'facebook_ads/api_request'
require 'facebook_ads/api_response'
require 'facebook_ads/helpers/node_helpers'
require 'facebook_ads/helpers/edge_helpers'

module FacebookAds
  class AdObject
    attr_reader :attributes, :internal_fields, :last_api_response
    attr_accessor :deserializer
    attr_accessor :last_saved, :last_destroyed

    include Fields
    include GraphNodes
    include GraphEdges

    def initialize(attributes, *args)
      if attributes.empty?
        raise InvalidParameterError, 'Invalid attributes. Must include at least one attribute'
      end

      update_attributes(attributes)
      # assume object with only id in the attributes as not loaded

      # is next arg a list of fields?
      fields = (args[0].is_a?(Array) || args[0].is_a?(String)) ? args.shift : []
      fields = fields.split(',') if fields.is_a?(String)
      session = args.shift

      self.internal_fields = fields + attributes.keys
      self.session = session
    end

    def self.get(id, *args)
      obj = new({id: id}, *args)
      yield obj if block_given?
      obj
    end

    def id
      self[:id]
    end

    def update_attributes(attrs)
      @attributes ||= {}
      @attributes.merge!(
        self.class.deserializer ?
          self.class.deserializer.deserialize(symbolize_keys_shallow(attrs)) :
          symbolize_keys_shallow(attrs)
      )
      self
    end

    def [](attr_name)
      @attributes[attr_name.to_sym]
    end

    def to_hash
      @attributes.merge(changes)
    end

    def as_json(*opts)
      to_hash
    end

    def to_json(*a)
      as_json.to_json(*a)
    end

    def inspect
      "#<#{self.class.name} #{to_hash.inspect}>"
    end

    def fields_as_string
      @internal_fields.to_a.join(',')
    end

    # please do not use fields= or @fields as instance variable or setter.
    # 'fields' is resevered keyword for field name in AdReportRun
    def internal_fields=(fields)
      @internal_fields = Set.new((fields.is_a?(String) ? fields.split(',') : fields.map(&:to_s)).map(&:to_sym))
    end

    def loaded?
      (@internal_fields - attributes.keys).empty?
    end

    def load!
      get(graph_params) do |attrs|
        update_attributes(attrs)
      end
    end

    def reload!
      # delete all attribute except id
      @attributes = @attributes.keep_if { |k,_| k == :id }
    end

    # TODO refactor this to somewhere
    def graph_params
      {fields: fields_as_string}
    end

    [:get, :post, :delete].each do |verb|
      define_method(verb) do |params = {}, &block|
        params, options = extract_options(params)
        APIRequest.new(verb, self.id, session: session, params: params, options: options).execute do |api_response|
          @last_api_response = api_response
          block ? block[api_response.result] : api_response
        end
      end

      define_method("#{verb}_edge") do |edge_name, params = {}, &block|
        params, options = extract_options(params)
        path = "#{self.id}/#{edge_name}"
        puts path
        APIRequest.new(verb, path, session: session, params: params, options: options).execute do |api_response|
          @last_api_response = api_response
          block ? block[api_response.result] : api_response
        end
      end
    end

    def save(params = {})
      post(graph_params.merge(changes).merge(params)) do |attrs|
        update_attributes(attrs)
        @changes = {}
        self.last_saved = Time.now
      end
    end

    def destroy(params = {})
      delete(params) do |attrs|
        self.last_destroyed = Time.now if attrs['success']
      end
    end

    def changes
      @changes ||= {}
    end

    def session
      @session || Session.default_session
    end

    def session=(session)
      @session = session.is_a?(Hash) ? Session.new(session) : session
    end

    private
    def symbolize_keys_shallow(hash)
      Hash[hash.map { |k,v| [k.to_sym,v] }]
    end

    def extract_options(params)
      option_keys = [:batch_opts]
      options = {}
      option_keys.each { |k| options[k] = params.delete(k) if params.has_key?(k) }
      [params, options]
    end
  end
end
