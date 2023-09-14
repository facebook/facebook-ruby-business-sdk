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

  class WhatsAppBusinessPreVerifiedPhoneNumber < AdObject
    CODE_VERIFICATION_STATUS = [
      "EXPIRED",
      "NOT_VERIFIED",
      "VERIFIED",
    ]


    field :code_verification_status, 'string'
    field :code_verification_time, 'datetime'
    field :id, 'string'
    field :owner_business, 'Business'
    field :phone_number, 'string'
    field :verification_expiry_time, 'datetime'
    has_no_post

    has_edge :partners do |edge|
      edge.get 'Business'
    end

    has_edge :request_code do |edge|
      edge.post do |api|
        api.has_param :code_method, { enum: %w{SMS VOICE }}
        api.has_param :language, 'string'
      end
    end

    has_edge :verify_code do |edge|
      edge.post do |api|
        api.has_param :code, 'string'
      end
    end

  end
end
