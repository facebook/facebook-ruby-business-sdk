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

  class DraftPost < AdObject

    field :admin_creator, 'User'
    field :creation_time, 'datetime'
    field :feed_audience_description, 'string'
    field :feed_targeting, 'Targeting'
    field :id, 'string'
    field :message, 'string'
    field :modified_time, 'datetime'
    field :og_action_summary, 'string'
    field :permalink_url, 'string'
    field :place, 'Place'
    field :privacy_description, 'string'
    field :promotion_info, 'object'
    field :scheduled_publish_time, 'datetime'
    field :story_token, 'string'
    field :thumbnail, 'string'
    field :video_id, 'string'
    has_no_post
    has_no_delete

    has_edge :edit_actions do |edge|
      edge.get
    end

  end
end
