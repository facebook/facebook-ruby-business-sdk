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

  class Profile < AdObject
    PROFILE_TYPE = [
      "application",
      "event",
      "group",
      "page",
      "user",
    ]

    TYPE = [
      "ANGRY",
      "CARE",
      "FIRE",
      "HAHA",
      "HUNDRED",
      "LIKE",
      "LOVE",
      "NONE",
      "PRIDE",
      "SAD",
      "THANKFUL",
      "WOW",
    ]


    field :can_post, 'bool'
    field :id, 'string'
    field :link, 'string'
    field :name, 'string'
    field :pic, 'string'
    field :pic_crop, 'ProfilePictureSource'
    field :pic_large, 'string'
    field :pic_small, 'string'
    field :pic_square, 'string'
    field :profile_type, { enum: -> { PROFILE_TYPE }}
    field :username, 'string'
    has_no_post
    has_no_delete

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :height, 'int'
        api.has_param :redirect, 'bool'
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :width, 'int'
      end
    end

  end
end
