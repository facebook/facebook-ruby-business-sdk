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

  class CpasLsbImageBank < AdObject

    field :ad_group_id, 'string'
    field :catalog_segment_proxy_id, 'string'
    field :id, 'string'
    field :agency_business_id, 'int'
    field :backup_image_urls, { list: 'string' }
    has_no_delete

    has_edge :backup_images do |edge|
      edge.get 'ProductImage'
    end

  end
end
