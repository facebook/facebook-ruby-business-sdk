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
  # This class is auto-genereated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class User < AdObject

    field :about, 'string'
    field :admin_notes, { list: 'object' }
    field :age_range, 'object'
    field :birthday, 'string'
    field :can_review_measurement_request, 'bool'
    field :context, 'object'
    field :cover, 'object'
    field :currency, 'object'
    field :devices, { list: 'object' }
    field :education, { list: 'object' }
    field :email, 'string'
    field :employee_number, 'string'
    field :favorite_athletes, { list: 'object' }
    field :favorite_teams, { list: 'object' }
    field :first_name, 'string'
    field :gender, 'string'
    field :hometown, 'object'
    field :id, 'string'
    field :inspirational_people, { list: 'object' }
    field :install_type, 'string'
    field :installed, 'bool'
    field :interested_in, { list: 'string' }
    field :is_shared_login, 'bool'
    field :is_verified, 'bool'
    field :labels, { list: 'object' }
    field :languages, { list: 'object' }
    field :last_name, 'string'
    field :link, 'string'
    field :locale, 'string'
    field :location, 'object'
    field :meeting_for, { list: 'string' }
    field :middle_name, 'string'
    field :name, 'string'
    field :name_format, 'string'
    field :payment_pricepoints, 'object'
    field :political, 'string'
    field :public_key, 'string'
    field :quotes, 'string'
    field :relationship_status, 'string'
    field :religion, 'string'
    field :security_settings, 'object'
    field :shared_login_upgrade_required_by, 'datetime'
    field :short_name, 'string'
    field :significant_other, 'User'
    field :sports, { list: 'object' }
    field :test_group, 'int'
    field :third_party_id, 'string'
    field :timezone, 'double'
    field :token_for_business, 'string'
    field :updated_time, 'datetime'
    field :verified, 'bool'
    field :video_upload_limits, 'object'
    field :viewer_can_send_gift, 'bool'
    field :website, 'string'
    field :work, { list: 'object' }
    has_no_post
    has_no_delete

    has_edge :accounts do |edge|
      edge.get do |api|
        api.has_param :business_id, 'string'
        api.has_param :is_business, 'bool'
        api.has_param :is_place, 'bool'
        api.has_param :is_promotable, 'bool'
      end
    end

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :leadgen_forms do |edge|
      edge.get 'LeadgenForm' do |api|
        api.has_param :query, 'string'
      end
    end

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :width, 'int'
      end
    end

    has_edge :promotable_domains do |edge|
      edge.get 'Domain'
    end

    has_edge :promotable_events do |edge|
      edge.get 'Event' do |api|
        api.has_param :is_page_event, 'bool'
      end
    end

  end
end
