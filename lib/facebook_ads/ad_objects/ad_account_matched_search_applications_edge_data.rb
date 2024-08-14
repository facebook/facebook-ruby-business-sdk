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

  class AdAccountMatchedSearchApplicationsEdgeData < AdObject
    APP_STORE = [
      "AMAZON_APP_STORE",
      "APK_MIRROR",
      "APK_MONK",
      "APK_PURE",
      "APTOIDE_A1_STORE",
      "BEMOBI_MOBILE_STORE",
      "DIGITAL_TURBINE_STORE",
      "DOES_NOT_EXIST",
      "FB_ANDROID_STORE",
      "FB_CANVAS",
      "FB_GAMEROOM",
      "GALAXY_STORE",
      "GOOGLE_PLAY",
      "INSTANT_GAME",
      "ITUNES",
      "ITUNES_IPAD",
      "NEON_ANDROID_STORE",
      "NONE",
      "OCULUS_APP_STORE",
      "OPPO",
      "ROKU_STORE",
      "UPTODOWN",
      "VIVO",
      "WINDOWS_10_STORE",
      "WINDOWS_STORE",
      "XIAOMI",
    ]


    field :app_id, 'string'
    field :are_app_events_unavailable, 'bool'
    field :icon_url, 'string'
    field :name, 'string'
    field :search_source_store, 'string'
    field :store, 'string'
    field :unique_id, 'string'
    field :url, 'string'
    has_no_id
    has_no_get
    has_no_post
    has_no_delete

  end
end
