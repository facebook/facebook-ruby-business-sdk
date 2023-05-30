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

  class JobOpening < AdObject
    JOB_STATUS = [
      "CLOSED",
      "DRAFT",
      "OPEN",
      "PROVISIONAL",
    ]

    PLATFORM_REVIEW_STATUS = [
      "APPROVED",
      "PENDING",
      "REJECTED",
    ]

    REVIEW_REJECTION_REASONS = [
      "ADULT_CONTENT",
      "DISCRIMINATION",
      "DRUGS",
      "GENERIC_DEFAULT",
      "ILLEGAL",
      "IMPERSONATION",
      "MISLEADING",
      "MULTILEVEL_MARKETING",
      "PERSONAL_INFO",
      "SEXUAL",
    ]

    TYPE = [
      "CONTRACT",
      "FULL_TIME",
      "INTERNSHIP",
      "PART_TIME",
      "VOLUNTEER",
    ]


    field :address, 'string'
    field :application_callback_url, 'string'
    field :created_time, 'datetime'
    field :description, 'string'
    field :errors, { list: 'string' }
    field :external_company_facebook_url, 'string'
    field :external_company_full_address, 'string'
    field :external_company_id, 'string'
    field :external_company_name, 'string'
    field :external_id, 'string'
    field :id, 'string'
    field :job_status, { enum: -> { JOB_STATUS }}
    field :latitude, 'double'
    field :longitude, 'double'
    field :offsite_application_url, 'string'
    field :page, 'Page'
    field :photo, 'Photo'
    field :platform_review_status, { enum: -> { PLATFORM_REVIEW_STATUS }}
    field :post, 'Post'
    field :remote_type, 'string'
    field :review_rejection_reasons, { list: { enum: -> { REVIEW_REJECTION_REASONS }} }
    field :title, 'string'
    field :type, { enum: -> { TYPE }}
    has_no_post
    has_no_delete

  end
end
