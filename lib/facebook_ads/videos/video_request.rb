# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

require 'faraday'

module FacebookAds
  module HTTPService
    class VideoRequest < Faraday::Middleware
      def call(env)
        if env.body && body_has_video?(env.body)
          env.url.host = env.url.host.gsub(/^graph/, 'graph-video')
        end
        @app.call env
      end

      def body_has_video?(body)
        if body.respond_to?(:each) && !body.is_a?(String)
          (body.respond_to?(:values) ? body.values : body).any? do |val|
            val.is_a?(FacebookAds::VideoIO)
          end
        else
          false
        end
      end
    end
  end
end
