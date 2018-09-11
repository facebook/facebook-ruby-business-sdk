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

  class AnalyticsSegment < AdObject

    field :custom_audience_ineligiblity_reasons, { list: 'string' }
    field :description, 'string'
    field :estimated_custom_audience_size, 'int'
    field :event_info_rules, { list: 'object' }
    field :event_rules, { list: 'object' }
    field :event_source, 'ExternalEventSource'
    field :filter_set, 'string'
    field :id, 'string'
    field :is_all_user, 'bool'
    field :is_eligible_for_push_campaign, 'bool'
    field :is_internal, 'bool'
    field :name, 'string'
    field :percentile_rules, { list: 'object' }
    field :push_backfill_status, 'object'
    field :time_last_seen, 'int'
    field :time_last_updated, 'int'
    field :user_property_rules, { list: 'object' }
    field :web_param_rules, { list: 'object' }
    has_no_post
    has_no_delete

  end
end
