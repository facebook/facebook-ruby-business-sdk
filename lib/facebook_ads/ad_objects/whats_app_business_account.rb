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

  class WhatsAppBusinessAccount < AdObject
    TASKS = [
      "DEVELOP",
      "FULL_CONTROL",
      "MANAGE",
      "MANAGE_EXTENSIONS",
      "MANAGE_PHONE",
      "MANAGE_TEMPLATES",
      "MESSAGING",
      "VIEW_COST",
    ]

    CATEGORY = [
      "AUTHENTICATION",
      "MARKETING",
      "UTILITY",
    ]


    field :account_review_status, 'string'
    field :analytics, 'object'
    field :business_verification_status, 'string'
    field :country, 'string'
    field :creation_time, 'int'
    field :currency, 'string'
    field :id, 'string'
    field :message_template_namespace, 'string'
    field :name, 'string'
    field :on_behalf_of_business_info, 'object'
    field :owner_business, 'Business'
    field :owner_business_info, 'object'
    field :ownership_type, 'string'
    field :primary_funding_id, 'string'
    field :purchase_order_number, 'string'
    field :status, 'string'
    field :timezone_id, 'string'
    has_no_post
    has_no_delete

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :tasks, { list: { enum: -> { WhatsAppBusinessAccount::TASKS }} }
        api.has_param :user, 'int'
      end
    end

    has_edge :audiences do |edge|
      edge.get
    end

    has_edge :conversation_analytics do |edge|
      edge.get do |api|
        api.has_param :conversation_categories, { list: { enum: %w{AUTHENTICATION MARKETING SERVICE UNKNOWN UTILITY }} }
        api.has_param :conversation_directions, { list: { enum: %w{BUSINESS_INITIATED UNKNOWN USER_INITIATED }} }
        api.has_param :conversation_types, { list: { enum: %w{FREE_ENTRY_POINT FREE_TIER REGULAR UNKNOWN }} }
        api.has_param :country_codes, { list: 'string' }
        api.has_param :dimensions, { list: { enum: %w{CONVERSATION_CATEGORY CONVERSATION_DIRECTION CONVERSATION_TYPE COUNTRY PHONE UNKNOWN }} }
        api.has_param :end, 'int'
        api.has_param :granularity, { enum: %w{DAILY HALF_HOUR MONTHLY }}
        api.has_param :metric_types, { list: { enum: %w{CONVERSATION COST UNKNOWN }} }
        api.has_param :phone_numbers, { list: 'string' }
        api.has_param :start, 'int'
      end
    end

    has_edge :extensions do |edge|
      edge.get
    end

    has_edge :message_templates do |edge|
      edge.delete do |api|
        api.has_param :name, 'string'
      end
      edge.get do |api|
        api.has_param :category, { list: { enum: -> { WhatsAppBusinessAccount::CATEGORY }} }
        api.has_param :content, 'string'
        api.has_param :language, { list: 'string' }
        api.has_param :name, 'string'
        api.has_param :name_or_content, 'string'
        api.has_param :quality_score, { list: { enum: %w{GREEN RED UNKNOWN YELLOW }} }
        api.has_param :status, { list: { enum: %w{APPROVED DELETED DISABLED IN_APPEAL LIMIT_EXCEEDED PAUSED PENDING PENDING_DELETION REJECTED }} }
      end
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :category, { enum: -> { WhatsAppBusinessAccount::CATEGORY }}
        api.has_param :components, { list: 'hash' }
        api.has_param :language, 'string'
        api.has_param :name, 'string'
      end
    end

    has_edge :phone_numbers do |edge|
      edge.get
      edge.post do |api|
        api.has_param :cc, 'string'
        api.has_param :migrate_phone_number, 'bool'
        api.has_param :phone_number, 'string'
      end
    end

    has_edge :product_catalogs do |edge|
      edge.delete do |api|
        api.has_param :catalog_id, 'string'
      end
      edge.get 'ProductCatalog'
      edge.post 'ProductCatalog' do |api|
        api.has_param :catalog_id, 'string'
      end
    end

    has_edge :schedules do |edge|
      edge.get
    end

    has_edge :subscribed_apps do |edge|
      edge.delete
      edge.get
      edge.post 'WhatsAppBusinessAccount' do |api|
        api.has_param :override_callback_uri, 'string'
        api.has_param :verify_token, 'string'
      end
    end

  end
end
