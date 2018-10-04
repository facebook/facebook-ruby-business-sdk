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

  class AdsReportBuilderSavedReport < AdObject

    field :ad_account_id, 'string'
    field :attribution_windows, { list: 'string' }
    field :creation_source, 'string'
    field :creation_time, 'datetime'
    field :date_interval, 'object'
    field :date_preset, 'string'
    field :dimension_groups, { list: { list: 'string' } }
    field :dimensions, { list: 'string' }
    field :filtering, { list: 'string' }
    field :id, 'string'
    field :is_mutated, 'bool'
    field :last_access_time, 'datetime'
    field :last_report_snapshot_id, 'string'
    field :last_report_snapshot_time, 'datetime'
    field :locked_dimensions, 'int'
    field :metrics, { list: 'string' }
    field :old_report_schedule, 'object'
    field :report_name, 'string'
    field :report_snapshot_async_percent_completion, 'int'
    field :report_snapshot_async_status, 'string'
    field :schedule_frequency, 'string'
    field :sorting, { list: 'object' }
    field :start_date, 'string'
    field :status, 'string'
    field :subscribers, { list: 'string' }
    field :update_time, 'datetime'
    field :user, 'Profile'
    field :user_dimensions, { list: 'string' }
    field :user_metrics, { list: 'string' }
    has_no_post
    has_no_delete

  end
end
