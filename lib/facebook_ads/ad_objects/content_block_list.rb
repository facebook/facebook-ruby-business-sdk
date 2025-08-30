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

  class ContentBlockList < AdObject

    field :business, 'Business'
    field :id, 'string'
    field :name, 'string'
    has_no_post
    has_no_delete

    has_edge :applied_ad_accounts do |edge|
      edge.get 'AdAccount'
    end

    has_edge :facebook_content do |edge|
      edge.get
    end

    has_edge :instagram_content do |edge|
      edge.get 'IgMedia'
    end

  end
end
