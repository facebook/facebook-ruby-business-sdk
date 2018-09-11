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

  class AdsUserSettings < AdObject

    field :adgroup_column_visibility, { list: 'object' }
    field :adgroup_name_template, 'object'
    field :adgroup_widths, { list: 'object' }
    field :ads_tool_visits, { list: 'object' }
    field :bookmarked_pages, { list: 'Page' }
    field :campaign_column_visibility, { list: 'object' }
    field :campaign_group_column_visibility, { list: 'object' }
    field :campaign_group_name_template, 'object'
    field :campaign_group_widths, { list: 'object' }
    field :campaign_name_template, 'object'
    field :campaign_widths, { list: 'object' }
    field :default_creation_mode, 'string'
    field :id, 'string'
    field :last_used_post_format, 'string'
    field :last_visited_time, 'datetime'
    field :open_tabs, { list: 'string' }
    field :selected_ad_account, 'AdAccount'
    field :selected_comparison_timerange, 'object'
    field :selected_page, 'Page'
    field :selected_page_section, 'string'
    field :selected_power_editor_pane, 'string'
    field :selected_stat_range, 'object'
    field :should_not_show_publish_message_on_editor_close, 'bool'
    field :unowned_pages, { list: 'Page' }
    field :use_pe_create_flow, 'bool'
    field :use_stepper_primary_entry, 'bool'
    field :user, 'User'
    has_no_post
    has_no_delete

  end
end
