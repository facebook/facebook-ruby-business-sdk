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

  class AdCreativeDegreesOfFreedomSpec < AdObject

    field :ad_handle_type, 'string'
    field :creative_features_spec, 'AdCreativeFeaturesSpec'
    field :degrees_of_freedom_type, 'string'
    field :image_transformation_types, { list: 'string' }
    field :multi_media_transformation_type, 'string'
    field :stories_transformation_types, { list: 'string' }
    field :text_transformation_types, { list: 'string' }
    field :video_transformation_types, { list: 'string' }
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
