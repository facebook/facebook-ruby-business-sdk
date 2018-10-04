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

  class EventTour < AdObject

    field :description, 'string'
    field :dominant_color, 'string'
    field :end_time, 'string'
    field :id, 'string'
    field :is_past, 'bool'
    field :last_event_timestamp, 'int'
    field :name, 'string'
    field :num_events, 'int'
    field :photo, 'Photo'
    field :publishing_state, 'string'
    field :scheduled_publish_timestamp, 'int'
    field :start_time, 'string'
    field :ticketing_uri, 'string'
    field :video, 'AdVideo'
    has_no_post
    has_no_delete

    has_edge :events do |edge|
      edge.get 'Event'
    end

    has_edge :pages do |edge|
      edge.get 'Page'
    end

  end
end
