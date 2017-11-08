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

  class Business < AdObject

    field :created_by, 'User'
    field :created_time, 'datetime'
    field :id, 'string'
    field :link, 'string'
    field :name, 'string'
    field :payment_account_id, 'string'
    field :primary_page, 'object'
    field :profile_picture_uri, 'string'
    field :timezone_id, 'int'
    field :two_factor_type, 'string'
    field :updated_by, 'User'
    field :updated_time, 'datetime'
    field :vertical, 'string'
    has_no_post
    has_no_delete

    has_edge :ad_studies do |edge|
      edge.post 'AdStudy' do |api|
        api.has_param :cells, { list: 'object' }
        api.has_param :confidence_level, 'double'
        api.has_param :cooldown_start_time, 'int'
        api.has_param :description, 'string'
        api.has_param :end_time, 'int'
        api.has_param :name, 'string'
        api.has_param :objectives, { list: 'object' }
        api.has_param :observation_end_time, 'int'
        api.has_param :start_time, 'int'
        api.has_param :type, { enum: -> { AdStudy::TYPE }}
        api.has_param :viewers, { list: 'int' }
      end
    end

    has_edge :adaccount do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :billing_address_id, 'string'
        api.has_param :currency, 'string'
        api.has_param :end_advertiser, 'object'
        api.has_param :funding_id, 'string'
        api.has_param :invoice, 'bool'
        api.has_param :io, 'bool'
        api.has_param :media_agency, 'string'
        api.has_param :name, 'string'
        api.has_param :partner, 'string'
        api.has_param :po_number, 'string'
        api.has_param :timezone_id, 'int'
      end
    end

    has_edge :adspixels do |edge|
      edge.get 'AdsPixel' do |api|
        api.has_param :id_filter, 'string'
        api.has_param :name_filter, 'string'
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :apps do |edge|
      edge.delete do |api|
        api.has_param :app_id, 'int'
      end
    end

    has_edge :client_ad_accounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :client_pages do |edge|
      edge.get
    end

    has_edge :event_source_groups do |edge|
      edge.get 'EventSourceGroup'
      edge.post 'EventSourceGroup' do |api|
        api.has_param :event_sources, { list: 'string' }
        api.has_param :name, 'string'
      end
    end

    has_edge :grp_plans do |edge|
      edge.get 'ReachFrequencyPrediction' do |api|
        api.has_param :status, { enum: -> { ReachFrequencyPrediction::STATUS }}
      end
    end

    has_edge :instagram_accounts do |edge|
      edge.get
    end

    has_edge :measurement_reports do |edge|
      edge.get do |api|
        api.has_param :filters, { list: 'object' }
        api.has_param :report_type, { enum: %w{multi_channel_report video_metrics_report fruit_rollup_report third_party_mta_report partner_lift_study_report }}
      end
      edge.post do |api|
        api.has_param :metadata, 'string'
        api.has_param :report_type, { enum: %w{multi_channel_report video_metrics_report fruit_rollup_report third_party_mta_report partner_lift_study_report }}
      end
    end

    has_edge :offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
      edge.post 'OfflineConversionDataSet' do |api|
        api.has_param :auto_assign_to_new_accounts_only, 'bool'
        api.has_param :description, 'string'
        api.has_param :enable_auto_assign_to_accounts, 'bool'
        api.has_param :name, 'string'
      end
    end

    has_edge :owned_ad_accounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :owned_instagram_accounts do |edge|
      edge.get
    end

    has_edge :owned_pages do |edge|
      edge.get
    end

    has_edge :owned_pixels do |edge|
      edge.get 'AdsPixel'
    end

    has_edge :pending_client_ad_accounts do |edge|
      edge.get 'BusinessAdAccountRequest'
    end

    has_edge :pending_owned_ad_accounts do |edge|
      edge.get 'LegacyBusinessAdAccountRequest'
    end

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :width, 'int'
      end
    end

    has_edge :received_audience_permissions do |edge|
      edge.get do |api|
        api.has_param :partner_id, 'string'
      end
    end

    has_edge :shared_audience_permissions do |edge|
      edge.get do |api|
        api.has_param :partner_id, 'string'
      end
    end

    has_edge :userpermissions do |edge|
      edge.post do |api|
        api.has_param :email, 'string'
        api.has_param :role, { enum: %w{FINANCE_EDITOR FINANCE_ANALYST ADS_RIGHTS_REVIEWER ADMIN EMPLOYEE FB_EMPLOYEE_SALES_REP }}
        api.has_param :user, 'int'
      end
    end

  end
end
