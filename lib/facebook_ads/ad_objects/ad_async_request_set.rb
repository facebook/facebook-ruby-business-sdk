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

  class AdAsyncRequestSet < AdObject
    NOTIFICATION_MODE = [
      "OFF",
      "ON_COMPLETE",
    ]

    NOTIFICATION_STATUS = [
      "NOT_SENT",
      "SENDING",
      "SENT",
    ]


    field :canceled_count, 'int'
    field :created_time, 'datetime'
    field :error_count, 'int'
    field :id, 'string'
    field :in_progress_count, 'int'
    field :initial_count, 'int'
    field :is_completed, 'bool'
    field :name, 'string'
    field :notification_mode, { enum: -> { NOTIFICATION_MODE }}
    field :notification_result, 'AdAsyncRequestSetNotificationResult'
    field :notification_status, { enum: -> { NOTIFICATION_STATUS }}
    field :notification_uri, 'string'
    field :owner_id, 'string'
    field :success_count, 'int'
    field :total_count, 'int'
    field :updated_time, 'datetime'
    field :ad_specs, { list: 'hash' }

    has_edge :requests do |edge|
      edge.get 'AdAsyncRequest' do |api|
        api.has_param :statuses, { list: { enum: -> { AdAsyncRequest::STATUSES }} }
      end
    end

  end
end
