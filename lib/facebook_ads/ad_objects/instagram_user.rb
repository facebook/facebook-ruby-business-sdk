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

  class InstagramUser < AdObject

    field :follow_count, 'int'
    field :followed_by_count, 'int'
    field :has_profile_picture, 'bool'
    field :id, 'string'
    field :is_private, 'bool'
    field :is_published, 'bool'
    field :media_count, 'int'
    field :mini_shop_storefront, 'Shop'
    field :owner_business, 'Business'
    field :profile_pic, 'string'
    field :username, 'string'
    has_no_post
    has_no_delete

    has_edge :agencies do |edge|
      edge.get 'Business'
    end

    has_edge :ar_effects do |edge|
      edge.get
    end

    has_edge :authorized_adaccounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'InstagramUser' do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
    end

  end
end
