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

  class VideoCopyright < AdObject
    CONTENT_CATEGORY = [
      "episode",
      "movie",
      "web",
    ]

    MONITORING_TYPE = [
      "VIDEO_AND_AUDIO",
      "VIDEO_ONLY",
      "AUDIO_ONLY",
    ]


    field :content_category, 'string'
    field :copyright_content_id, 'string'
    field :creator, 'User'
    field :id, 'string'
    field :in_conflict, 'bool'
    field :monitoring_status, 'string'
    field :monitoring_type, 'string'
    field :ownership_countries, 'object'
    field :reference_file, 'object'
    field :reference_file_disabled, 'bool'
    field :reference_file_disabled_by_ops, 'bool'
    field :reference_file_expired, 'bool'
    field :reference_owner_id, 'string'
    field :rule_ids, { list: 'VideoCopyrightRule' }
    field :whitelisted_ids, { list: 'string' }

  end
end
