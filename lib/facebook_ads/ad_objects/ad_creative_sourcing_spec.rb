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

  class AdCreativeSourcingSpec < AdObject

    field :associated_product_set_id, 'string'
    field :brand, 'object'
    field :destination_screenshot_spec, 'object'
    field :dynamic_site_links_spec, 'object'
    field :enable_social_feedback_preservation, 'bool'
    field :intent, 'object'
    field :pca_spec, 'object'
    field :promotion_metadata_spec, { list: 'AdCreativePromotionMetadataSpec' }
    field :site_links_data_consented, 'object'
    field :site_links_spec, { list: 'AdCreativeSiteLinksSpec' }
    field :source_url, 'string'
    field :website_media_spec, 'object'
    field :website_summary_spec, 'object'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
