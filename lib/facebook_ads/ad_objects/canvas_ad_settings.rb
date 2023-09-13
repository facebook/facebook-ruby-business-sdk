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

  class CanvasAdSettings < AdObject

    field :is_canvas_collection_eligible, 'bool'
    field :lead_form_created_time, 'int'
    field :lead_form_name, 'string'
    field :lead_gen_form_id, 'string'
    field :leads_count, 'int'
    field :product_set_id, 'string'
    field :use_retailer_item_ids, 'bool'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
