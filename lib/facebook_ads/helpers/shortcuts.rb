# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

module FacebookAds
  module Shortcuts
    def me
      User.get('me')
    end

    def ad_account(act_id)
      act_id = 'act_' + act_id.to_s unless act_id.is_a?(String) && act_id =~ /^act_/
      AdAccount.get(act_id)
    end

    def business(biz_id)
      Business.get(biz_id)
    end
  end
end
