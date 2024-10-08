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

  class PartnershipAdContentSearchMedia < AdObject

    field :ig_ad_code_sponsor_count, 'int'
    field :ig_ad_code_sponsors, { list: 'FbPageAndInstagramAccount' }
    field :ig_media, 'IgMedia'
    field :ig_media_has_product_tags, 'bool'
    field :is_ad_code_eligible_for_boosting_by_two_sponsors, 'bool'
    field :is_ad_code_entry, 'bool'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
