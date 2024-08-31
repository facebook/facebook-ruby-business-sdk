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

  class CatalogSmartPixelSettings < AdObject

    field :allowed_domains, { list: 'string' }
    field :available_property_filters, { list: 'string' }
    field :catalog, 'ProductCatalog'
    field :cbb_custom_override_filters, { list: 'object' }
    field :cbb_default_filter, { list: 'map<string, list<string>>' }
    field :defaults, { list: 'hash' }
    field :filters, { list: 'map<string, list<string>>' }
    field :id, 'string'
    field :is_cbb_enabled, 'bool'
    field :is_create_enabled, 'bool'
    field :is_delete_enabled, 'bool'
    field :is_update_enabled, 'bool'
    field :microdata_format_precedence, { list: 'string' }
    field :pixel, 'AdsPixel'
    field :property_filter, { list: 'string' }
    field :trusted_domains, { list: 'string' }
    has_no_post
    has_no_delete

  end
end
