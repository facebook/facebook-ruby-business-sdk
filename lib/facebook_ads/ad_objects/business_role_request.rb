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

  class BusinessRoleRequest < AdObject
    ROLE = [
      "ADMIN",
      "ADS_RIGHTS_REVIEWER",
      "DEVELOPER",
      "EMPLOYEE",
      "FINANCE_ANALYST",
      "FINANCE_EDITOR",
      "FINANCE_EDIT_TASK",
      "FINANCE_VIEW_TASK",
      "MODERATE_TASK",
      "OPERATE_TASK",
      "PARTNER_CENTER_ADMIN",
      "PARTNER_CENTER_ANALYST",
      "PARTNER_CENTER_EDUCATION",
      "PARTNER_CENTER_MARKETING",
      "PARTNER_CENTER_OPERATIONS",
    ]


    field :created_by, 'object'
    field :created_time, 'datetime'
    field :email, 'string'
    field :expiration_time, 'datetime'
    field :expiry_time, 'datetime'
    field :finance_role, 'string'
    field :id, 'string'
    field :invite_link, 'string'
    field :ip_role, 'string'
    field :owner, 'Business'
    field :role, 'string'
    field :status, 'string'
    field :updated_by, 'object'
    field :updated_time, 'datetime'

  end
end
