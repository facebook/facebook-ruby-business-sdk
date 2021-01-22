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

  class BusinessUnit < AdObject

    field :business, 'Business'
    field :creation_time, 'datetime'
    field :currency, 'string'
    field :excluded_sources, 'object'
    field :id, 'string'
    field :is_enabled_for_measurement, 'bool'
    field :name, 'string'
    field :time_zone, 'string'
    field :visits_available_date, 'int'
    field :business_units, { list: 'object' }
    has_no_post
    has_no_delete

    has_edge :ad_accounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :ad_platforms do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :metric_scope, 'hash'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :atlas_sales_accesses do |edge|
      edge.get
      edge.post do |api|
        api.has_param :access_request_id, 'string'
        api.has_param :status, 'string'
      end
    end

    has_edge :campaigns do |edge|
      edge.get 'AtlasCampaign' do |api|
        api.has_param :filter_by, 'string'
        api.has_param :metric_scope, 'hash'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :conversion_events do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :metric_scope, 'hash'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :conversion_paths do |edge|
      edge.get do |api|
        api.has_param :click_lookback_window, 'int'
        api.has_param :date_range, 'hash'
        api.has_param :fb_conversion_event_id, 'int'
        api.has_param :limit, 'int'
        api.has_param :metric_context, 'hash'
        api.has_param :time_period, { enum: %w{all_available all_dates custom date_range fifteen_days last_fourteen_days last_hundred_fourty_four_hours last_month last_ninety_days last_quarter last_seven_days last_sixty_days last_thirty_days last_twenty_four_hours last_year month_to_date quarter_to_date seven_days thirty_days this_month_whole_days today week_to_date year_to_date yesterday }}
        api.has_param :view_lookback_window, 'int'
      end
    end

    has_edge :custom_breakdowns do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :diagnostics do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :external_import_file do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :reports do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :sources do |edge|
      edge.get do |api|
        api.has_param :filter_by, 'string'
        api.has_param :metric_scope, 'hash'
        api.has_param :order_by, 'string'
      end
    end

    has_edge :users do |edge|
      edge.get 'BusinessUser'
    end

  end
end
