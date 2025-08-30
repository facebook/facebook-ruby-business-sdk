# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'faraday'
require 'openssl'
require 'logger'
require 'facebook_ads/videos/video_request'

module FacebookAds
  class Session
    attr_accessor :access_token, :app_secret, :api_version, :server_host

    def initialize(access_token: nil,
                   app_secret:   nil,
                   server_host:  FacebookAds.config.server_host,
                   api_version:  FacebookAds.config.api_version)
      @access_token = access_token
      @app_secret   = app_secret
      @server_host  = server_host
      @api_version  = api_version
    end

    def request(method, path, params = nil)
      case method
        when :get, :post, :delete
          api_conn.send(method, path.gsub(/^\//,''), params) do |req|
            req.headers[:user_agent] = "fbbizsdk-ruby-v#{VERSION}".freeze
            req.params[:access_token] = access_token if access_token
            req.params[:appsecret_proof] = appsecret_proof if app_secret
          end
        else
          raise 'Unsupported HTTP method: ' + method
      end
    end

    def appsecret_proof
      OpenSSL::HMAC.hexdigest(
        OpenSSL::Digest.new('sha256'),
        @app_secret,
        @access_token
      )
    end

    private
    def api_conn
      @api_conn ||= Faraday.new(url: api_base_path) do |faraday|
        faraday.use FacebookAds::HTTPService::VideoRequest
        faraday.request  :multipart
        # TODO Json Request
        # TODO URL Encode - stringify json
        faraday.request  :url_encoded

        faraday.response :logger, Utils.logger, bodies: FacebookAds.config.log_api_bodies
        faraday.adapter  Faraday.default_adapter
      end
    end

    def api_base_path
      "https://#{self.server_host}/#{self.api_version}/".freeze
    end

    class << self
      def anonymous_session
        new()
      end

      def default_session
        # TODO
        @default_session ||= new( access_token: FacebookAds.config.access_token,
                                  app_secret: FacebookAds.config.app_secret)
      end

      def default_session=(session)
        # TODO
        @default_session = session
      end

      def current_session
        @@current_session ||= default_session
      end

      def current_session=(session)
        @@current_session = session
      end
    end
  end
end
