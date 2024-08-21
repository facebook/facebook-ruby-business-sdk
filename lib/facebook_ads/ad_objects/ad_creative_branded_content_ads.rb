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

  class AdCreativeBrandedContentAds < AdObject

    field :ad_format, 'int'
    field :content_search_input, 'string'
    field :creator_ad_permission_type, 'string'
    field :facebook_boost_post_access_token, 'string'
    field :instagram_boost_post_access_token, 'string'
    field :is_mca_internal, 'bool'
    field :partners, { list: 'AdCreativeBrandedContentAdsPartners' }
    field :promoted_page_id, 'string'
    field :ui_version, 'int'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
