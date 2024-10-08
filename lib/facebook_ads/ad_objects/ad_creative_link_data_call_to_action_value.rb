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

  class AdCreativeLinkDataCallToActionValue < AdObject

    field :app_destination, 'string'
    field :app_link, 'string'
    field :application, 'string'
    field :event_id, 'string'
    field :lead_gen_form_id, 'string'
    field :link, 'string'
    field :link_caption, 'string'
    field :link_format, 'string'
    field :object_store_urls, { list: 'string' }
    field :page, 'string'
    field :product_link, 'string'
    field :whatsapp_number, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
