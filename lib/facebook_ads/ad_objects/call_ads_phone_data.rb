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

  class CallAdsPhoneData < AdObject

    field :call_ads_phone_data_use_case, 'string'
    field :callback_variant, 'string'
    field :destination_website_url, 'string'
    field :id, 'string'
    field :page, 'Page'
    field :phone_number, 'string'
    has_no_post
    has_no_delete

  end
end
