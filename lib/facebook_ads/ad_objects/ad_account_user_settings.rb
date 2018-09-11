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

  class AdAccountUserSettings < AdObject

    field :ad_account, 'AdAccount'
    field :ad_object_export_format, 'string'
    field :auto_review_video_caption, 'bool'
    field :column_suggestion_status, 'string'
    field :default_account_overview_agegender_metrics, { list: 'string' }
    field :default_account_overview_location_metrics, { list: 'string' }
    field :default_account_overview_metrics, { list: 'string' }
    field :default_account_overview_time_metrics, { list: 'string' }
    field :default_builtin_column_preset, 'string'
    field :default_nam_time_range, 'string'
    field :draft_mode_enabled, 'bool'
    field :export_deleted_items_with_delivery, 'bool'
    field :export_summary_row, 'bool'
    field :id, 'string'
    field :last_used_columns, 'object'
    field :last_used_pe_filters, { list: 'object' }
    field :rb_export_format, 'string'
    field :rb_export_raw_data, 'bool'
    field :rb_export_summary_row, 'bool'
    field :show_archived_data, 'bool'
    field :user, 'User'
    has_no_post
    has_no_delete

    has_edge :column_presets do |edge|
      edge.get
    end

    has_edge :filters do |edge|
      edge.get
    end

  end
end
