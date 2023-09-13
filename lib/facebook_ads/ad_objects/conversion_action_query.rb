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

  class ConversionActionQuery < AdObject

    field :_action_type, { list: 'object' }
    field :application, { list: 'object' }
    field :conversion_id, { list: 'string' }
    field :creative, { list: 'object' }
    field :dataset, { list: 'string' }
    field :event, { list: 'string' }
    field :_event_creator, { list: 'string' }
    field :event_type, { list: 'string' }
    field :fb_pixel, { list: 'string' }
    field :fb_pixel_event, { list: 'string' }
    field :leadgen, { list: 'string' }
    field :object, { list: 'string' }
    field :_object_domain, { list: 'string' }
    field :offer, { list: 'string' }
    field :_offer_creator, { list: 'string' }
    field :offsite_pixel, { list: 'string' }
    field :page, { list: 'string' }
    field :_page_parent, { list: 'string' }
    field :post, { list: 'string' }
    field :_post_object, { list: 'string' }
    field :_post_object_wall, { list: 'string' }
    field :_post_wall, { list: 'string' }
    field :question, { list: 'string' }
    field :_question_creator, { list: 'string' }
    field :response, { list: 'string' }
    field :subtype, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
