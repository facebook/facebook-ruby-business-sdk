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
    CATEGORY = [
      "ACCOUNT_UPDATE",
      "ALERT_UPDATE",
      "APPOINTMENT_UPDATE",
      "AUTO_REPLY",
      "ISSUE_RESOLUTION",
      "PAYMENT_UPDATE",
      "PERSONAL_FINANCE_UPDATE",
      "RESERVATION_UPDATE",
      "SHIPPING_UPDATE",
      "TICKET_UPDATE",
      "TRANSPORTATION_UPDATE",
    ]


    field :analytics, 'object'
    field :currency, 'string'
    field :id, 'string'
    field :message_template_namespace, 'string'
    field :name, 'string'
    field :on_behalf_of_business_info, 'object'
    field :purchase_order_number, 'string'
    field :status, 'string'
    field :timezone_id, 'string'
    has_no_post
    has_no_delete

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
        api.has_param :status, { list: { enum: %w{APPROVED DELETED DISABLED PENDING PENDING_DELETION REJECTED }} }
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
    end

  end
end
