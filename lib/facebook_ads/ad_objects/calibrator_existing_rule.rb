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

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class CalibratorExistingRule < AdObject

    field :_7d_volume, 'int'
    field :creation_source, 'string'
    field :creation_time, 'datetime'
    field :creator, 'string'
    field :event_type, 'string'
    field :id, 'string'
    field :rule, 'string'
    field :rule_type, 'string'
    field :sample_urls, { list: 'string' }
    field :status, 'string'
    has_no_post
    has_no_delete

    has_edge :activities do |edge|
      edge.get do |api|
        api.has_param :end_time, 'datetime'
        api.has_param :event_type, { enum: %w{RULE_CREATE RULE_EVENT_REMAPPING RULE_STATUS_UPDATE }}
        api.has_param :start_time, 'datetime'
      end
    end

  end
end
