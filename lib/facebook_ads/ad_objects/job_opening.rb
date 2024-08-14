# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

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
