# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  class APIResponse
    attr_reader :status_code, :headers, :body

    def initialize(status_code, headers, body)
      @status_code = status_code
      @headers = headers
      @body = body
    end

    def result
      is_json_response? ? JSON.parse(body) : body
    end

    def fb_trace_id
      @headers[:x_fb_trace_id]
    end

    def raw_body
      @body
    end

    def headers
      @headers
    end

    private
    def is_json_response?
      headers[:content_type] =~ /application\/json/ ||
      headers[:content_type] =~ /text\/javascript/
    end
  end
end
