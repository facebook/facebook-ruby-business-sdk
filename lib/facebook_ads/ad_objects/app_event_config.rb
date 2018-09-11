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

  class AppEventConfig < AdObject

    field :aws_kinesis_firehose_setting, 'object'
    field :breakdowns_config, { list: 'object' }
    field :builtin_fields_config, { list: 'object' }
    field :deprecated_events_config, { list: 'object' }
    field :events_config, { list: 'object' }
    field :id, 'string'
    field :ios_purchase_validation_secret, 'string'
    field :is_any_role_able_to_see_restricted_insights, 'bool'
    field :is_implicit_purchase_logging_on_android_supported, 'bool'
    field :is_implicit_purchase_logging_on_ios_supported, 'bool'
    field :is_track_android_app_uninstall_supported, 'bool'
    field :is_track_ios_app_uninstall_supported, 'bool'
    field :journey_backfill_status, 'string'
    field :journey_conversion_events, { list: 'string' }
    field :journey_enabled, 'bool'
    field :journey_timeout, 'string'
    field :latest_sdk_versions, 'hash'
    field :log_android_implicit_purchase_events, 'bool'
    field :log_automatic_analytics_events, 'bool'
    field :log_implicit_purchase_events, 'bool'
    field :prev_journey_conversion_events, { list: 'string' }
    field :query_approximation_accuracy_level, 'string'
    field :query_currency, 'string'
    field :query_timezone, 'string'
    field :recent_events_update_time, 'datetime'
    field :session_timeout_interval, 'int'
    field :track_android_app_uninstall, 'bool'
    field :track_ios_app_uninstall, 'bool'
    has_no_post
    has_no_delete

  end
end
