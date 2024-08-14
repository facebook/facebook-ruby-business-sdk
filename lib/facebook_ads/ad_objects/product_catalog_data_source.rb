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

  class ProductCatalogDataSource < AdObject
    INGESTION_SOURCE_TYPE = [
      "ALL",
      "PRIMARY",
      "SUPPLEMENTARY",
    ]


    field :app_id, 'string'
    field :id, 'string'
    field :ingestion_source_type, 'string'
    field :name, 'string'
    field :upload_type, 'string'
    has_no_get
    has_no_post
    has_no_delete

  end
end
