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

  class Engagement < AdObject

    field :count, 'int'
    field :count_string, 'string'
    field :count_string_with_like, 'string'
    field :count_string_without_like, 'string'
    field :social_sentence, 'string'
    field :social_sentence_with_like, 'string'
    field :social_sentence_without_like, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
