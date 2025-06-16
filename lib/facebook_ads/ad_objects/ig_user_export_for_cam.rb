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

  class IgUserExportForCam < AdObject

    field :age_bucket, 'string'
    field :biography, 'string'
    field :country, 'string'
    field :email, 'string'
    field :gender, 'string'
    field :id, 'string'
    field :is_account_verified, 'bool'
    field :is_paid_partnership_messages_enabled, 'bool'
    field :messaging_id, 'string'
    field :onboarded_status, 'bool'
    field :portfolio_url, 'string'
    field :username, 'string'
    has_no_post
    has_no_delete

    has_edge :branded_content_media do |edge|
      edge.get
    end

    has_edge :insights do |edge|
      edge.get do |api|
        api.has_param :breakdown, { enum: %w{AGE FOLLOW_TYPE GENDER MEDIA_TYPE TOP_CITIES TOP_COUNTRIES }}
        api.has_param :metrics, { list: { enum: %w{CREATOR_ENGAGED_ACCOUNTS CREATOR_REACH REELS_HOOK_RATE REELS_INTERACTION_RATE TOTAL_FOLLOWERS }} }
        api.has_param :period, { enum: %w{DAY OVERALL }}
        api.has_param :time_range, { enum: %w{LAST_14_DAYS LAST_90_DAYS LIFETIME THIS_MONTH THIS_WEEK }}
      end
    end

    has_edge :recent_media do |edge|
      edge.get
    end

  end
end
